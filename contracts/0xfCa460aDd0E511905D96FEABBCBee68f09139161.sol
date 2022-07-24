contract main {




// =====================  Runtime code  =====================


#
#  - delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#
const decimals = 18

const getMaxSupply = 85000000 * 10^18

const getinitialSupply = 9350000 * 10^18

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
mapping of address stor5;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;
uint8 paused;
address owner; offset 8
uint256 burnTotal;
address sub_9a5c90acAddress;
address masterChefAddress;
address sub_d6effdbbAddress;
address presaleAddress;
array of struct minter;
mapping of uint256 stor16;

function getMinterLength() payable {
    return minter.length
}

function burnTotal() payable {
    return burnTotal
}

function totalSupply() payable {
    return totalSupply
}

function getMinter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if minter.length < 1:
        revert with 0, 17
    if arg1 > minter.length - 1:
        revert with 0, 'KuzoToken: index out of bounds'
    if arg1 >= minter.length:
        revert with 0, 50
    return minter[arg1].field_0
}

function paused() payable {
    return bool(paused)
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

function sub_9a5c90ac(?) payable {
    return sub_9a5c90acAddress
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[address(arg1)])
}

function sub_d6effdbb(?) payable {
    return sub_d6effdbbAddress
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

function presale() payable {
    return presaleAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPresale(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    presaleAddress = arg1
}

function unpause() payable {
    if presaleAddress != msg.sender:
        revert with 0, 'KuzoToken: !presale'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setMasterChef(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    masterChefAddress = arg1
}

function setlockliquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d6effdbbAddress = arg1
}

function setDeflationController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9a5c90acAddress = arg1
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'KuzoToken: _addMinter is the zero address'
    if stor16[address(arg1)]:
        return 0
    minter.length++
    minter[minter.length].field_0 = arg1
    minter[minter.length].field_160 = 0
    stor16[address(arg1)] = minter.length
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if burnTotal > !arg1:
        revert with 0, 17
    burnTotal += arg1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] > !arg2:
        revert with 0, 17
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

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'KuzoToken: _removeMinter is the zero address'
    if not stor16[address(arg1)]:
        return 0
    if stor16[address(arg1)] < 1:
        revert with 0, 17
    if minter.length < 1:
        revert with 0, 17
    if minter.length - 1 != stor16[address(arg1)] - 1:
        if minter.length - 1 >= minter.length:
            revert with 0, 50
        if stor16[address(arg1)] - 1 >= minter.length:
            revert with 0, 50
        minter[stor16[address(arg1)]].field_0 = minter[minter.length].field_0
        stor16[stor15[stor15.length].field_0] = stor16[address(arg1)]
    if not minter.length:
        revert with 0, 49
    minter[minter.length].field_0 = 0
    minter.length--
    stor16[address(arg1)] = 0
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'KuzoToken::getPriorVotes: not yet determined'
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
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
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
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor16[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    if arg2 > !totalSupply:
        revert with 0, 17
    if arg2 + totalSupply > 85000000 * 10^18:
        return 0
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if stor5[address(arg1)] != 0:
        if arg2 > 0:
            if stor5[address(arg1)]:
                if not numCheckpoints[stor5[address(arg1)]]:
                    if 0 > !arg2:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    56,
                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                    0
                    if numCheckpoints[stor5[address(arg1)]] <= 0:
                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = arg2
                        if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                    else:
                        if numCheckpoints[stor5[address(arg1)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor5[address(arg1)]] < 1:
                                revert with 0, 17
                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = arg2
                            if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, stor5[address(arg1)]);
                else:
                    if numCheckpoints[stor5[address(arg1)]] < 1:
                        revert with 0, 17
                    if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 > !arg2:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    56,
                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                    0
                    if numCheckpoints[stor5[address(arg1)]] <= 0:
                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 + arg2
                        if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                    else:
                        if numCheckpoints[stor5[address(arg1)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor5[address(arg1)]] < 1:
                                revert with 0, 17
                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 + arg2
                            if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 + arg2, stor5[address(arg1)]);
    return 1
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor5[address(msg.sender)] = arg1
    if stor5[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not stor5[address(msg.sender)]:
                if arg1:
                    if not numCheckpoints[address(arg1)]:
                        if 0 > !balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
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
                                        56,
                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
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
                                    56,
                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                    0
                    if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], stor5[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)]:
                                if 0 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
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
                                                56,
                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
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
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], stor5[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
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
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
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
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], stor5[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
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
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
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
                                    56,
                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                    0
                    if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], stor5[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)]:
                                if 0 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
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
                                                56,
                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
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
                            emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], stor5[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
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
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
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
                            emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], stor5[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
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
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
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
    emit DelegateChanged(msg.sender, stor5[address(msg.sender)], arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if paused:
        revert with 0, 'Pausable: paused'
    if not sub_9a5c90acAddress:
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
        if stor5[address(msg.sender)] != stor5[arg1]:
            if arg2 > 0:
                if not stor5[address(msg.sender)]:
                    if stor5[arg1]:
                        if not numCheckpoints[stor5[arg1]]:
                            if 0 > !arg2:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                            0
                            if numCheckpoints[stor5[arg1]] <= 0:
                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                            else:
                                if numCheckpoints[stor5[arg1]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor5[arg1]] < 1:
                                        revert with 0, 17
                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                else:
                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                            emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                        else:
                            if numCheckpoints[stor5[arg1]] < 1:
                                revert with 0, 17
                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                            0
                            if numCheckpoints[stor5[arg1]] <= 0:
                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                            else:
                                if numCheckpoints[stor5[arg1]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor5[arg1]] < 1:
                                        revert with 0, 17
                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                else:
                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                else:
                    if not numCheckpoints[stor5[address(msg.sender)]]:
                        if 0 < arg2:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                        0
                        if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = -arg2
                            if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -arg2, stor5[address(msg.sender)]);
                            if stor5[arg1]:
                                if not numCheckpoints[stor5[arg1]]:
                                    if 0 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[arg1]] <= 0:
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                else:
                                    if numCheckpoints[stor5[arg1]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[arg1]] <= 0:
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                        else:
                            if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                                emit DelegateVotesChanged(0, -arg2, stor5[address(msg.sender)]);
                                if stor5[arg1]:
                                    if not numCheckpoints[stor5[arg1]]:
                                        if 0 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                            else:
                                checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = -arg2
                                if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, -arg2, stor5[address(msg.sender)]);
                                if stor5[arg1]:
                                    if not numCheckpoints[stor5[arg1]]:
                                        if 0 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                    else:
                        if numCheckpoints[stor5[address(msg.sender)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 < arg2:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                        0
                        if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2
                            if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor5[address(msg.sender)]);
                            if stor5[arg1]:
                                if not numCheckpoints[stor5[arg1]]:
                                    if 0 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[arg1]] <= 0:
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                else:
                                    if numCheckpoints[stor5[arg1]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[arg1]] <= 0:
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                        else:
                            if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                                emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor5[address(msg.sender)]);
                                if stor5[arg1]:
                                    if not numCheckpoints[stor5[arg1]]:
                                        if 0 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                            else:
                                checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor5[address(msg.sender)]);
                                if stor5[arg1]:
                                    if not numCheckpoints[stor5[arg1]]:
                                        if 0 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
    else:
        if arg2 <= 0:
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
            if stor5[address(msg.sender)] != stor5[arg1]:
                if arg2 > 0:
                    if not stor5[address(msg.sender)]:
                        if stor5[arg1]:
                            if not numCheckpoints[stor5[arg1]]:
                                if 0 > !arg2:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                                0
                                if numCheckpoints[stor5[arg1]] <= 0:
                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                else:
                                    if numCheckpoints[stor5[arg1]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                            else:
                                if numCheckpoints[stor5[arg1]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                                0
                                if numCheckpoints[stor5[arg1]] <= 0:
                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                else:
                                    if numCheckpoints[stor5[arg1]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                    else:
                        if not numCheckpoints[stor5[address(msg.sender)]]:
                            if 0 < arg2:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                            0
                            if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                                checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = -arg2
                                if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, -arg2, stor5[address(msg.sender)]);
                                if stor5[arg1]:
                                    if not numCheckpoints[stor5[arg1]]:
                                        if 0 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                            else:
                                if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                        revert with 0, 17
                                    checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                                    emit DelegateVotesChanged(0, -arg2, stor5[address(msg.sender)]);
                                    if stor5[arg1]:
                                        if not numCheckpoints[stor5[arg1]]:
                                            if 0 > !arg2:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg1]] <= 0:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg1]] <= 0:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                                else:
                                    checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = -arg2
                                    if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(0, -arg2, stor5[address(msg.sender)]);
                                    if stor5[arg1]:
                                        if not numCheckpoints[stor5[arg1]]:
                                            if 0 > !arg2:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg1]] <= 0:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg1]] <= 0:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                        else:
                            if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 < arg2:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                            0
                            if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                                checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor5[address(msg.sender)]);
                                if stor5[arg1]:
                                    if not numCheckpoints[stor5[arg1]]:
                                        if 0 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                            else:
                                if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                        revert with 0, 17
                                    checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                                    emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor5[address(msg.sender)]);
                                    if stor5[arg1]:
                                        if not numCheckpoints[stor5[arg1]]:
                                            if 0 > !arg2:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg1]] <= 0:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg1]] <= 0:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                                else:
                                    checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                    if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor5[address(msg.sender)]);
                                    if stor5[arg1]:
                                        if not numCheckpoints[stor5[arg1]]:
                                            if 0 > !arg2:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg1]] <= 0:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg1]] <= 0:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
        else:
            mem[164] = msg.sender
            mem[196] = arg1
            mem[228] = arg2
            require ext_code.size(sub_9a5c90acAddress)
            staticcall sub_9a5c90acAddress.checkDeflation(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                    gas gas_remaining wei
                   args 0, 0, msg.sender, msg.sender, arg1, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                if stor5[address(msg.sender)] != stor5[arg1]:
                    if arg2 > 0:
                        if not stor5[address(msg.sender)]:
                            if stor5[arg1]:
                                if not numCheckpoints[stor5[arg1]]:
                                    if 0 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[arg1]] <= 0:
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                else:
                                    if numCheckpoints[stor5[arg1]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[arg1]] <= 0:
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                        else:
                            if not numCheckpoints[stor5[address(msg.sender)]]:
                                if 0 < arg2:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                0
                                if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                                    checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = -arg2
                                    if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(0, -arg2, stor5[address(msg.sender)]);
                                    if stor5[arg1]:
                                        if not numCheckpoints[stor5[arg1]]:
                                            if 0 > !arg2:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg1]] <= 0:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg1]] <= 0:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                                else:
                                    if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                                        emit DelegateVotesChanged(0, -arg2, stor5[address(msg.sender)]);
                                        if stor5[arg1]:
                                            if not numCheckpoints[stor5[arg1]]:
                                                if 0 > !arg2:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                                    else:
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = -arg2
                                        if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, -arg2, stor5[address(msg.sender)]);
                                        if stor5[arg1]:
                                            if not numCheckpoints[stor5[arg1]]:
                                                if 0 > !arg2:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                            else:
                                if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 < arg2:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                0
                                if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                                    checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                    if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor5[address(msg.sender)]);
                                    if stor5[arg1]:
                                        if not numCheckpoints[stor5[arg1]]:
                                            if 0 > !arg2:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg1]] <= 0:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg1]] <= 0:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                                else:
                                    if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                                        emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor5[address(msg.sender)]);
                                        if stor5[arg1]:
                                            if not numCheckpoints[stor5[arg1]]:
                                                if 0 > !arg2:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                                    else:
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                        if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor5[address(msg.sender)]);
                                        if stor5[arg1]:
                                            if not numCheckpoints[stor5[arg1]]:
                                                if 0 > !arg2:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
            else:
                if ext_call.return_data[0] >= arg2:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    if stor5[address(msg.sender)] != stor5[arg1]:
                        if arg2 > 0:
                            if not stor5[address(msg.sender)]:
                                if stor5[arg1]:
                                    if not numCheckpoints[stor5[arg1]]:
                                        if 0 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                            else:
                                if not numCheckpoints[stor5[address(msg.sender)]]:
                                    if 0 < arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = -arg2
                                        if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, -arg2, stor5[address(msg.sender)]);
                                        if stor5[arg1]:
                                            if not numCheckpoints[stor5[arg1]]:
                                                if 0 > !arg2:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                                    else:
                                        if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                                            emit DelegateVotesChanged(0, -arg2, stor5[address(msg.sender)]);
                                            if stor5[arg1]:
                                                if not numCheckpoints[stor5[arg1]]:
                                                    if 0 > !arg2:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                                        else:
                                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = -arg2
                                            if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, -arg2, stor5[address(msg.sender)]);
                                            if stor5[arg1]:
                                                if not numCheckpoints[stor5[arg1]]:
                                                    if 0 > !arg2:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                                else:
                                    if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 < arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                        if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor5[address(msg.sender)]);
                                        if stor5[arg1]:
                                            if not numCheckpoints[stor5[arg1]]:
                                                if 0 > !arg2:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                                    else:
                                        if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                                            emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor5[address(msg.sender)]);
                                            if stor5[arg1]:
                                                if not numCheckpoints[stor5[arg1]]:
                                                    if 0 > !arg2:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                                        else:
                                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                            if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor5[address(msg.sender)]);
                                            if stor5[arg1]:
                                                if not numCheckpoints[stor5[arg1]]:
                                                    if 0 > !arg2:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2, stor5[arg1]);
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !arg2:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 += arg2
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2, stor5[arg1]);
                else:
                    if arg2 < ext_call.return_data[0]:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                    if totalSupply < ext_call.return_data[0]:
                        revert with 0, 17
                    totalSupply -= ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], msg.sender, 0);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 - ext_call.return_data[0]:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + ext_call.return_data[0]
                    if balanceOf[arg1] > !(arg2 - ext_call.return_data[0]):
                        revert with 0, 17
                    balanceOf[arg1] = balanceOf[arg1] + arg2 - ext_call.return_data[0]
                    emit Transfer((arg2 - ext_call.return_data[0]), msg.sender, arg1);
                    if stor5[address(msg.sender)] != stor5[arg1]:
                        if arg2 - ext_call.return_data[0] > 0:
                            if not stor5[address(msg.sender)]:
                                if stor5[arg1]:
                                    if not numCheckpoints[stor5[arg1]]:
                                        if 0 > !(arg2 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2 - ext_call.return_data[0]
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2 - ext_call.return_data[0], stor5[arg1]);
                                    else:
                                        if numCheckpoints[stor5[arg1]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !(arg2 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg1]] <= 0:
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        else:
                                            if numCheckpoints[stor5[arg1]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                            else:
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0], stor5[arg1]);
                            else:
                                if not numCheckpoints[stor5[address(msg.sender)]]:
                                    if 0 < arg2 - ext_call.return_data[0]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = -arg2 + ext_call.return_data[0]
                                        if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, -arg2 + ext_call.return_data[0], stor5[address(msg.sender)]);
                                        if stor5[arg1]:
                                            if not numCheckpoints[stor5[arg1]]:
                                                if 0 > !(arg2 - ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2 - ext_call.return_data[0]
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2 - ext_call.return_data[0], stor5[arg1]);
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !(arg2 - ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0], stor5[arg1]);
                                    else:
                                        if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 = -arg2 + ext_call.return_data[0]
                                            emit DelegateVotesChanged(0, -arg2 + ext_call.return_data[0], stor5[address(msg.sender)]);
                                            if stor5[arg1]:
                                                if not numCheckpoints[stor5[arg1]]:
                                                    if 0 > !(arg2 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2 - ext_call.return_data[0]
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2 - ext_call.return_data[0], stor5[arg1]);
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !(arg2 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0], stor5[arg1]);
                                        else:
                                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = -arg2 + ext_call.return_data[0]
                                            if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, -arg2 + ext_call.return_data[0], stor5[address(msg.sender)]);
                                            if stor5[arg1]:
                                                if not numCheckpoints[stor5[arg1]]:
                                                    if 0 > !(arg2 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2 - ext_call.return_data[0]
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2 - ext_call.return_data[0], stor5[arg1]);
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !(arg2 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0], stor5[arg1]);
                                else:
                                    if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 < arg2 - ext_call.return_data[0]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2 + ext_call.return_data[0]
                                        if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2 + ext_call.return_data[0], stor5[address(msg.sender)]);
                                        if stor5[arg1]:
                                            if not numCheckpoints[stor5[arg1]]:
                                                if 0 > !(arg2 - ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2 - ext_call.return_data[0]
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2 - ext_call.return_data[0], stor5[arg1]);
                                            else:
                                                if numCheckpoints[stor5[arg1]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !(arg2 - ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg1]] <= 0:
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                    if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                    else:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0], stor5[arg1]);
                                    else:
                                        if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2 + ext_call.return_data[0]
                                            emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2 + ext_call.return_data[0], stor5[address(msg.sender)]);
                                            if stor5[arg1]:
                                                if not numCheckpoints[stor5[arg1]]:
                                                    if 0 > !(arg2 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2 - ext_call.return_data[0]
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2 - ext_call.return_data[0], stor5[arg1]);
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !(arg2 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0], stor5[arg1]);
                                        else:
                                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2 + ext_call.return_data[0]
                                            if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - arg2 + ext_call.return_data[0], stor5[address(msg.sender)]);
                                            if stor5[arg1]:
                                                if not numCheckpoints[stor5[arg1]]:
                                                    if 0 > !(arg2 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = arg2 - ext_call.return_data[0]
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = arg2 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2 - ext_call.return_data[0], stor5[arg1]);
                                                else:
                                                    if numCheckpoints[stor5[arg1]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 > !(arg2 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg1]] <= 0:
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    else:
                                                        if numCheckpoints[stor5[arg1]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg1]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                        else:
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg1]][stor7[stor5[arg1]]].field_256 = checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg1]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg1]] = uint32(numCheckpoints[stor5[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256, checkpoints[stor5[arg1]][stor7[stor5[arg1]] - 1 << 224].field_256 + arg2 - ext_call.return_data[0], stor5[arg1]);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if paused:
        revert with 0, 'Pausable: paused'
    if not sub_9a5c90acAddress:
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
        if stor5[address(arg1)] == stor5[arg2]:
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[168 len 24] >> 64, 0
        else:
            if arg3 > 0:
                if not stor5[address(arg1)]:
                    if not stor5[arg2]:
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[168 len 24] >> 64, 0
                    else:
                        if not numCheckpoints[stor5[arg2]]:
                            if 0 > !arg3:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                            0
                            if numCheckpoints[stor5[arg2]] <= 0:
                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                            else:
                                if numCheckpoints[stor5[arg2]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor5[arg2]] < 1:
                                        revert with 0, 17
                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                                else:
                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                        else:
                            if numCheckpoints[stor5[arg2]] < 1:
                                revert with 0, 17
                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                            0
                            if numCheckpoints[stor5[arg2]] <= 0:
                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                            else:
                                if numCheckpoints[stor5[arg2]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor5[arg2]] < 1:
                                        revert with 0, 17
                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                                else:
                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                else:
                    if not numCheckpoints[stor5[address(arg1)]]:
                        if 0 < arg3:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                        0
                        if numCheckpoints[stor5[address(arg1)]] <= 0:
                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = -arg3
                            if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -arg3, stor5[address(arg1)]);
                            if not stor5[arg2]:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                            else:
                                if not numCheckpoints[stor5[arg2]]:
                                    if 0 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[arg2]] <= 0:
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                        else:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                else:
                                    if numCheckpoints[stor5[arg2]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[arg2]] <= 0:
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                        else:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                        else:
                            if numCheckpoints[stor5[address(arg1)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor5[address(arg1)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 = -arg3
                                emit DelegateVotesChanged(0, -arg3, stor5[address(arg1)]);
                                if not stor5[arg2]:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                                else:
                                    if not numCheckpoints[stor5[arg2]]:
                                        if 0 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                            else:
                                checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = -arg3
                                if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, -arg3, stor5[address(arg1)]);
                                if not stor5[arg2]:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                                else:
                                    if not numCheckpoints[stor5[arg2]]:
                                        if 0 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                    else:
                        if numCheckpoints[stor5[address(arg1)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 < arg3:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                        0
                        if numCheckpoints[stor5[address(arg1)]] <= 0:
                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3
                            if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3, stor5[address(arg1)]);
                            if not stor5[arg2]:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                            else:
                                if not numCheckpoints[stor5[arg2]]:
                                    if 0 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[arg2]] <= 0:
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                        else:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                else:
                                    if numCheckpoints[stor5[arg2]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[arg2]] <= 0:
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                        else:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                        else:
                            if numCheckpoints[stor5[address(arg1)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor5[address(arg1)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 -= arg3
                                emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3, stor5[address(arg1)]);
                                if not stor5[arg2]:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                                else:
                                    if not numCheckpoints[stor5[arg2]]:
                                        if 0 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                            else:
                                checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3
                                if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3, stor5[address(arg1)]);
                                if not stor5[arg2]:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                                else:
                                    if not numCheckpoints[stor5[arg2]]:
                                        if 0 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 1)))))
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        if arg3 <= 0:
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
            if stor5[address(arg1)] == stor5[arg2]:
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[168 len 24] >> 64, 0
            else:
                if arg3 > 0:
                    if not stor5[address(arg1)]:
                        if not stor5[arg2]:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[168 len 24] >> 64, 0
                        else:
                            if not numCheckpoints[stor5[arg2]]:
                                if 0 > !arg3:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                                0
                                if numCheckpoints[stor5[arg2]] <= 0:
                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                                else:
                                    if numCheckpoints[stor5[arg2]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                                    else:
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                            else:
                                if numCheckpoints[stor5[arg2]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                                0
                                if numCheckpoints[stor5[arg2]] <= 0:
                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                                else:
                                    if numCheckpoints[stor5[arg2]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                                    else:
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                    else:
                        if not numCheckpoints[stor5[address(arg1)]]:
                            if 0 < arg3:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                            0
                            if numCheckpoints[stor5[address(arg1)]] <= 0:
                                checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = -arg3
                                if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, -arg3, stor5[address(arg1)]);
                                if not stor5[arg2]:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                                else:
                                    if not numCheckpoints[stor5[arg2]]:
                                        if 0 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                            else:
                                if numCheckpoints[stor5[address(arg1)]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor5[address(arg1)]] < 1:
                                        revert with 0, 17
                                    checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 = -arg3
                                    emit DelegateVotesChanged(0, -arg3, stor5[address(arg1)]);
                                    if not stor5[arg2]:
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                                    else:
                                        if not numCheckpoints[stor5[arg2]]:
                                            if 0 > !arg3:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg2]] <= 0:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                                                else:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg2]] <= 0:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                                                else:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                else:
                                    checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = -arg3
                                    if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, -arg3, stor5[address(arg1)]);
                                    if not stor5[arg2]:
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                                    else:
                                        if not numCheckpoints[stor5[arg2]]:
                                            if 0 > !arg3:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg2]] <= 0:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                                else:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg2]] <= 0:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                                else:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                        else:
                            if numCheckpoints[stor5[address(arg1)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 < arg3:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            56,
                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[184 len 8] >> 192,
                                            0
                            if numCheckpoints[stor5[address(arg1)]] <= 0:
                                checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3
                                if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3, stor5[address(arg1)]);
                                if not stor5[arg2]:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                                else:
                                    if not numCheckpoints[stor5[arg2]]:
                                        if 0 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                            else:
                                if numCheckpoints[stor5[address(arg1)]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor5[address(arg1)]] < 1:
                                        revert with 0, 17
                                    checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 -= arg3
                                    emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3, stor5[address(arg1)]);
                                    if not stor5[arg2]:
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                                    else:
                                        if not numCheckpoints[stor5[arg2]]:
                                            if 0 > !arg3:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg2]] <= 0:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                                                else:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[280 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg2]] <= 0:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                                                else:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                else:
                                    checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3
                                    if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3, stor5[address(arg1)]);
                                    if not stor5[arg2]:
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                                    else:
                                        if not numCheckpoints[stor5[arg2]]:
                                            if 0 > !arg3:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg2]] <= 0:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                                else:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg2]] <= 0:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                                                else:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 32, 40, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                    ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 1)))))
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            mem[164] = arg1
            mem[196] = arg2
            mem[228] = arg3
            require ext_code.size(sub_9a5c90acAddress)
            staticcall sub_9a5c90acAddress.checkDeflation(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                    gas gas_remaining wei
                   args 0, 0, msg.sender, address(arg1), arg2, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
                if stor5[address(arg1)] == stor5[arg2]:
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 168 len 24] >> 64,
                                    0
                else:
                    if arg3 > 0:
                        if not stor5[address(arg1)]:
                            if not stor5[arg2]:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 168 len 24] >> 64,
                                                0
                            else:
                                if not numCheckpoints[stor5[arg2]]:
                                    if 0 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[arg2]] <= 0:
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                        0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                            0
                                        else:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                            0
                                else:
                                    if numCheckpoints[stor5[arg2]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[arg2]] <= 0:
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                        0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                            0
                                        else:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                            0
                        else:
                            if not numCheckpoints[stor5[address(arg1)]]:
                                if 0 < arg3:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                0
                                if numCheckpoints[stor5[address(arg1)]] <= 0:
                                    checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = -arg3
                                    if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, -arg3, stor5[address(arg1)]);
                                    if not stor5[arg2]:
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                        0
                                    else:
                                        if not numCheckpoints[stor5[arg2]]:
                                            if 0 > !arg3:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg2]] <= 0:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                    0
                                                else:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg2]] <= 0:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                    0
                                                else:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                else:
                                    if numCheckpoints[stor5[address(arg1)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor5[address(arg1)]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 = -arg3
                                        emit DelegateVotesChanged(0, -arg3, stor5[address(arg1)]);
                                        if not stor5[arg2]:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                            0
                                        else:
                                            if not numCheckpoints[stor5[arg2]]:
                                                if 0 > !arg3:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 360 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 360 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                    else:
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = -arg3
                                        if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(0, -arg3, stor5[address(arg1)]);
                                        if not stor5[arg2]:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                            0
                                        else:
                                            if not numCheckpoints[stor5[arg2]]:
                                                if 0 > !arg3:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                            else:
                                if numCheckpoints[stor5[address(arg1)]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 < arg3:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                0
                                if numCheckpoints[stor5[address(arg1)]] <= 0:
                                    checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3
                                    if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3, stor5[address(arg1)]);
                                    if not stor5[arg2]:
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                        0
                                    else:
                                        if not numCheckpoints[stor5[arg2]]:
                                            if 0 > !arg3:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg2]] <= 0:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                    0
                                                else:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            56,
                                                            0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                            0
                                            if numCheckpoints[stor5[arg2]] <= 0:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                    0
                                                else:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                else:
                                    if numCheckpoints[stor5[address(arg1)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor5[address(arg1)]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 -= arg3
                                        emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3, stor5[address(arg1)]);
                                        if not stor5[arg2]:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                            0
                                        else:
                                            if not numCheckpoints[stor5[arg2]]:
                                                if 0 > !arg3:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 360 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 360 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                    else:
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3
                                        if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3, stor5[address(arg1)]);
                                        if not stor5[arg2]:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                            0
                                        else:
                                            if not numCheckpoints[stor5[arg2]]:
                                                if 0 > !arg3:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                        ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 1)))))
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            else:
                if ext_call.return_data[0] >= arg3:
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if stor5[address(arg1)] == stor5[arg2]:
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 168 len 24] >> 64,
                                        0
                    else:
                        if arg3 > 0:
                            if not stor5[address(arg1)]:
                                if not stor5[arg2]:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 168 len 24] >> 64,
                                                    0
                                else:
                                    if not numCheckpoints[stor5[arg2]]:
                                        if 0 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                            0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                                0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                                0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                            0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                                0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                                0
                            else:
                                if not numCheckpoints[stor5[address(arg1)]]:
                                    if 0 < arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[address(arg1)]] <= 0:
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = -arg3
                                        if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(0, -arg3, stor5[address(arg1)]);
                                        if not stor5[arg2]:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                            0
                                        else:
                                            if not numCheckpoints[stor5[arg2]]:
                                                if 0 > !arg3:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                    else:
                                        if numCheckpoints[stor5[address(arg1)]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[address(arg1)]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 = -arg3
                                            emit DelegateVotesChanged(0, -arg3, stor5[address(arg1)]);
                                            if not stor5[arg2]:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                                0
                                            else:
                                                if not numCheckpoints[stor5[arg2]]:
                                                    if 0 > !arg3:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 360 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 360 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                        else:
                                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = -arg3
                                            if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                            emit DelegateVotesChanged(0, -arg3, stor5[address(arg1)]);
                                            if not stor5[arg2]:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                                0
                                            else:
                                                if not numCheckpoints[stor5[arg2]]:
                                                    if 0 > !arg3:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                            0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                            0
                                else:
                                    if numCheckpoints[stor5[address(arg1)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 < arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[address(arg1)]] <= 0:
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3
                                        if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3, stor5[address(arg1)]);
                                        if not stor5[arg2]:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                            0
                                        else:
                                            if not numCheckpoints[stor5[arg2]]:
                                                if 0 > !arg3:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                    else:
                                        if numCheckpoints[stor5[address(arg1)]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[address(arg1)]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 -= arg3
                                            emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3, stor5[address(arg1)]);
                                            if not stor5[arg2]:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                                0
                                            else:
                                                if not numCheckpoints[stor5[arg2]]:
                                                    if 0 > !arg3:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 360 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 360 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                        else:
                                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3
                                            if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3, stor5[address(arg1)]);
                                            if not stor5[arg2]:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                                0
                                            else:
                                                if not numCheckpoints[stor5[arg2]]:
                                                    if 0 > !arg3:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3
                                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(0, arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                            0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !arg3:
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 += arg3
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3, stor5[arg2]);
                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                            0
                            ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 1)))))
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                else:
                    if arg3 < ext_call.return_data[0]:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(arg1)] < ext_call.return_data[0]:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(arg1)] -= ext_call.return_data[0]
                    if totalSupply < ext_call.return_data[0]:
                        revert with 0, 17
                    totalSupply -= ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], arg1, 0);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 - ext_call.return_data[0]:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + ext_call.return_data[0]
                    if balanceOf[arg2] > !(arg3 - ext_call.return_data[0]):
                        revert with 0, 17
                    balanceOf[arg2] = balanceOf[arg2] + arg3 - ext_call.return_data[0]
                    emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
                    if stor5[address(arg1)] == stor5[arg2]:
                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 168 len 24] >> 64,
                                        0
                    else:
                        if arg3 - ext_call.return_data[0] > 0:
                            if not stor5[address(arg1)]:
                                if not stor5[arg2]:
                                    if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 168 len 24] >> 64,
                                                    0
                                else:
                                    if not numCheckpoints[stor5[arg2]]:
                                        if 0 > !(arg3 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                            0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3 - ext_call.return_data[0]
                                                emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                                0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                                0
                                    else:
                                        if numCheckpoints[stor5[arg2]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !(arg3 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                        0
                                        if numCheckpoints[stor5[arg2]] <= 0:
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                            0
                                        else:
                                            if numCheckpoints[stor5[arg2]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                                0
                                            else:
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                                0
                            else:
                                if not numCheckpoints[stor5[address(arg1)]]:
                                    if 0 < arg3 - ext_call.return_data[0]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[address(arg1)]] <= 0:
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = -arg3 + ext_call.return_data[0]
                                        if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(0, -arg3 + ext_call.return_data[0], stor5[address(arg1)]);
                                        if not stor5[arg2]:
                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                            0
                                        else:
                                            if not numCheckpoints[stor5[arg2]]:
                                                if 0 > !(arg3 - ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                    if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3 - ext_call.return_data[0]
                                                        emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !(arg3 - ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                    if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                    else:
                                        if numCheckpoints[stor5[address(arg1)]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[address(arg1)]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 = -arg3 + ext_call.return_data[0]
                                            emit DelegateVotesChanged(0, -arg3 + ext_call.return_data[0], stor5[address(arg1)]);
                                            if not stor5[arg2]:
                                                if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                                0
                                            else:
                                                if not numCheckpoints[stor5[arg2]]:
                                                    if 0 > !(arg3 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3 - ext_call.return_data[0]
                                                            emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 360 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !(arg3 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 360 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                        else:
                                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = -arg3 + ext_call.return_data[0]
                                            if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                            emit DelegateVotesChanged(0, -arg3 + ext_call.return_data[0], stor5[address(arg1)]);
                                            if not stor5[arg2]:
                                                if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                                0
                                            else:
                                                if not numCheckpoints[stor5[arg2]]:
                                                    if 0 > !(arg3 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3 - ext_call.return_data[0]
                                                            emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                            0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !(arg3 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                            0
                                else:
                                    if numCheckpoints[stor5[address(arg1)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 < arg3 - ext_call.return_data[0]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 184 len 8] >> 192,
                                                    0
                                    if numCheckpoints[stor5[address(arg1)]] <= 0:
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3 + ext_call.return_data[0]
                                        if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3 + ext_call.return_data[0], stor5[address(arg1)]);
                                        if not stor5[arg2]:
                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                            0
                                        else:
                                            if not numCheckpoints[stor5[arg2]]:
                                                if 0 > !(arg3 - ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                    if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3 - ext_call.return_data[0]
                                                        emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                            else:
                                                if numCheckpoints[stor5[arg2]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !(arg3 - ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                56,
                                                                0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                0
                                                if numCheckpoints[stor5[arg2]] <= 0:
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                    if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                    if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                    0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                    else:
                                        if numCheckpoints[stor5[address(arg1)]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor5[address(arg1)]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 = checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3 + ext_call.return_data[0]
                                            emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3 + ext_call.return_data[0], stor5[address(arg1)]);
                                            if not stor5[arg2]:
                                                if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                                0
                                            else:
                                                if not numCheckpoints[stor5[arg2]]:
                                                    if 0 > !(arg3 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3 - ext_call.return_data[0]
                                                            emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 360 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !(arg3 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 280 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 360 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                        else:
                                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]]].field_256 = checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3 + ext_call.return_data[0]
                                            if 1 > -numCheckpoints[stor5[address(arg1)]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor5[address(arg1)]] = uint32(numCheckpoints[stor5[address(arg1)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256, checkpoints[stor5[address(arg1)]][stor7[stor5[address(arg1)]] - 1 << 224].field_256 - arg3 + ext_call.return_data[0], stor5[address(arg1)]);
                                            if not stor5[arg2]:
                                                if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                                0
                                            else:
                                                if not numCheckpoints[stor5[arg2]]:
                                                    if 0 > !(arg3 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = arg3 - ext_call.return_data[0]
                                                            emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = arg3 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(0, arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                            0
                                                else:
                                                    if numCheckpoints[stor5[arg2]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 > !(arg3 - ext_call.return_data[0]):
                                                        revert with 0, 17
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    56,
                                                                    0xfe4b757a6f546f6b656e3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 344 len 8] >> 192,
                                                                    0
                                                    if numCheckpoints[stor5[arg2]] <= 0:
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                        checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                        if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                        if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if numCheckpoints[stor5[arg2]] < 1:
                                                            revert with 0, 17
                                                        if checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                            if numCheckpoints[stor5[arg2]] < 1:
                                                                revert with 0, 17
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 424 len 24] >> 64,
                                                                            0
                                                        else:
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_0 = uint32(block.number)
                                                            checkpoints[stor5[arg2]][stor7[stor5[arg2]]].field_256 = checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0]
                                                            if 1 > -numCheckpoints[stor5[arg2]] + test266151307():
                                                                revert with 0, 17
                                                            numCheckpoints[stor5[arg2]] = uint32(numCheckpoints[stor5[arg2]] + 1)
                                                            emit DelegateVotesChanged(checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256, checkpoints[stor5[arg2]][stor7[stor5[arg2]] - 1 << 224].field_256 + arg3 - ext_call.return_data[0], stor5[arg2]);
                                                            if arg3 - ext_call.return_data[0] > allowance[address(arg1)][address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 488 len 24] >> 64,
                                                                            0
                            ('le', ('add', ('param', 'arg3'), ('mul', -1, ('ext_call.return_data', 0, 32))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 1)))))
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + ext_call.return_data[0]
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3 + ext_call.return_data[0]), arg1, msg.sender);
    return 1
}



}
