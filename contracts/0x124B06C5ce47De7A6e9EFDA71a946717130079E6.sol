contract main {




// =====================  Runtime code  =====================


#
#  - name()
#  - removeOperator(address arg1)
#
const decimals = 18

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
array of address operators;
mapping of uint8 stor7;
uint8 stor8; offset 160
uint128 stor8; offset 160
address soulAddress;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint256 numCheckpoints;
mapping of uint256 nonces;

function checkpoints(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

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

function soul() payable {
    return soulAddress
}

function owner() payable {
    return owner
}

function operator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function operators(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < operators.length
    return operators[arg1]
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

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numCheckpoints[address(arg1)] <= 0:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 'NH{q', 17
    return checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor8.field_160):
        revert with 0, 'the circle has already begun'
    soulAddress = arg1
    Mask(96, 0, stor8.field_160) = 1
}

function sub_260cf996(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operator: caller is not an operator'
    if soulAddress == address(arg1):
        revert with 0, 'must be a new address'
    soulAddress = address(arg1)
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

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operator: caller is not an operator'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operable: new operator is the zero address'
    if stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operable: address is already an operator'
    stor7[address(arg1)] = 1
    operators.length++
    operators[operators.length] = arg1
    emit OperatorUpdated(arg1, 1);
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function safeSoulTransfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operator: caller is not an operator'
    require ext_code.size(soulAddress)
    staticcall soulAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(soulAddress)
    if arg2 <= ext_call.return_data[0]:
        call soulAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        call soulAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SOUL::getPriorVotes: not yet determined'
    if not numCheckpoints[address(arg1)]:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 'NH{q', 17
    if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 <= arg2:
        if numCheckpoints[address(arg1)] < 1:
            revert with 'NH{q', 17
        return checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256
    if checkpoints[address(arg1)][0].field_0 > arg2:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 'NH{q', 17
    idx = 0
    while numCheckpoints[address(arg1)] - 1 > idx:
        if numCheckpoints[address(arg1)] - 1 < idx:
            revert with 'NH{q', 17
        if numCheckpoints[address(arg1)] - 1 < numCheckpoints[address(arg1)] + -idx - 1 / 2:
            revert with 'NH{q', 17
        mem[0] = numCheckpoints[address(arg1)] + -(numCheckpoints[address(arg1)] + -idx - 1 / 2) - 1
        mem[32] = sha3(address(arg1), 10)
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = checkpoints[address(arg1)][stor11[address(arg1)] + -(0.5 / stor11[address(arg1)] + -idx - 1) - 1].field_0
        mem[_34 + 32] = checkpoints[address(arg1)][stor11[address(arg1)] + -(0.5 / stor11[address(arg1)] + -idx - 1) - 1].field_256
        if checkpoints[address(arg1)][stor11[address(arg1)] + -(0.5 / stor11[address(arg1)] + -idx - 1) - 1].field_0 == arg2:
            return checkpoints[address(arg1)][stor11[address(arg1)] + -(0.5 / stor11[address(arg1)] + -idx - 1) - 1].field_256
        if checkpoints[address(arg1)][stor11[address(arg1)] + -(0.5 / stor11[address(arg1)] + -idx - 1) - 1].field_0 < arg2:
            idx = numCheckpoints[address(arg1)] + -(numCheckpoints[address(arg1)] + -idx - 1 / 2) - 1
            continue 
        if numCheckpoints[address(arg1)] + -(numCheckpoints[address(arg1)] + -idx - 1 / 2) - 1 < 1:
            revert with 'NH{q', 17
        idx = idx
        continue 
    return checkpoints[address(arg1)][idx].field_256
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operator: caller is not an operator'
    if not uint8(stor8.field_160):
        revert with 0, 'the circle has not yet begun'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor9[address(arg1)]] <= 0:
                    if 0 > -arg2 - 1:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 
                                    32,
                                    56,
                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[184 len 8] >> 192,
                                    0
                    if numCheckpoints[stor9[address(arg1)]] <= 0:
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = block.timestamp
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor9[address(arg1)]]++
                    else:
                        if numCheckpoints[stor9[address(arg1)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor9[address(arg1)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256 = arg2
                        else:
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = block.timestamp
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = arg2
                            if numCheckpoints[stor9[address(arg1)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor9[address(arg1)]]++
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                else:
                    if numCheckpoints[stor9[address(arg1)]] < 1:
                        revert with 'NH{q', 17
                    if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256 > -arg2 - 1:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 
                                    32,
                                    56,
                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[184 len 8] >> 192,
                                    0
                    if numCheckpoints[stor9[address(arg1)]] <= 0:
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = block.timestamp
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256 + arg2
                        numCheckpoints[stor9[address(arg1)]]++
                    else:
                        if numCheckpoints[stor9[address(arg1)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor9[address(arg1)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256 += arg2
                        else:
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = block.timestamp
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256 + arg2
                            if numCheckpoints[stor9[address(arg1)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor9[address(arg1)]]++
                    emit DelegateVotesChanged(checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256, checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256 + arg2, delegates[address(arg1)]);
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operator: caller is not an operator'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    if delegates[address(arg1)]:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor9[address(arg1)]] <= 0:
                    if 0 < arg2:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 
                                    32,
                                    56,
                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[184 len 8] >> 192,
                                    0
                    if numCheckpoints[stor9[address(arg1)]] <= 0:
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = block.timestamp
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = -arg2
                        numCheckpoints[stor9[address(arg1)]]++
                    else:
                        if numCheckpoints[stor9[address(arg1)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor9[address(arg1)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256 = -arg2
                        else:
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = block.timestamp
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = -arg2
                            if numCheckpoints[stor9[address(arg1)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor9[address(arg1)]]++
                    emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                else:
                    if numCheckpoints[stor9[address(arg1)]] < 1:
                        revert with 'NH{q', 17
                    if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256 < arg2:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 
                                    32,
                                    56,
                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[184 len 8] >> 192,
                                    0
                    if numCheckpoints[stor9[address(arg1)]] <= 0:
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = block.timestamp
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256 - arg2
                        numCheckpoints[stor9[address(arg1)]]++
                    else:
                        if numCheckpoints[stor9[address(arg1)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor9[address(arg1)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256 -= arg2
                        else:
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = block.timestamp
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256 - arg2
                            if numCheckpoints[stor9[address(arg1)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor9[address(arg1)]]++
                    emit DelegateVotesChanged(checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256, checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1].field_256 - arg2, delegates[address(arg1)]);
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
                    if numCheckpoints[address(arg1)] <= 0:
                        if 0 > -balanceOf[address(msg.sender)] - 1:
                            revert with 'NH{q', 17
                        if block.timestamp >= -1:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[184 len 8] >> 192,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)]++
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                if numCheckpoints[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                numCheckpoints[address(arg1)]++
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(msg.sender)] - 1:
                            revert with 'NH{q', 17
                        if block.timestamp >= -1:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[184 len 8] >> 192,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)]++
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                                if numCheckpoints[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                numCheckpoints[address(arg1)]++
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor9[address(msg.sender)]] <= 0:
                    if 0 < balanceOf[address(msg.sender)]:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 
                                    32,
                                    56,
                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[184 len 8] >> 192,
                                    0
                    if numCheckpoints[stor9[address(msg.sender)]] <= 0:
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = block.timestamp
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor9[address(msg.sender)]]++
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] <= 0:
                                if 0 > -balanceOf[address(msg.sender)] - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp >= -1:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[344 len 8] >> 192,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)]++
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if numCheckpoints[address(arg1)] > -2:
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)]++
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(msg.sender)] - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp >= -1:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[344 len 8] >> 192,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)]++
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                                        if numCheckpoints[address(arg1)] > -2:
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)]++
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[stor9[address(msg.sender)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor9[address(msg.sender)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] <= 0:
                                    if 0 > -balanceOf[address(msg.sender)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[280 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(msg.sender)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[280 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = block.timestamp
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            if numCheckpoints[stor9[address(msg.sender)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor9[address(msg.sender)]]++
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] <= 0:
                                    if 0 > -balanceOf[address(msg.sender)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[344 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(msg.sender)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[344 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)], arg1);
                else:
                    if numCheckpoints[stor9[address(msg.sender)]] < 1:
                        revert with 'NH{q', 17
                    if checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1].field_256 < balanceOf[address(msg.sender)]:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 
                                    32,
                                    56,
                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[184 len 8] >> 192,
                                    0
                    if numCheckpoints[stor9[address(msg.sender)]] <= 0:
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = block.timestamp
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor9[address(msg.sender)]]++
                        emit DelegateVotesChanged(checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1].field_256, checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] <= 0:
                                if 0 > -balanceOf[address(msg.sender)] - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp >= -1:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[344 len 8] >> 192,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)]++
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if numCheckpoints[address(arg1)] > -2:
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)]++
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(msg.sender)] - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp >= -1:
                                    revert with 0, 
                                                32,
                                                56,
                                                0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[344 len 8] >> 192,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)]++
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                                        if numCheckpoints[address(arg1)] > -2:
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)]++
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[stor9[address(msg.sender)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor9[address(msg.sender)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1].field_256, checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] <= 0:
                                    if 0 > -balanceOf[address(msg.sender)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[280 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(msg.sender)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[280 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = block.timestamp
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1].field_256 - balanceOf[address(msg.sender)]
                            if numCheckpoints[stor9[address(msg.sender)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor9[address(msg.sender)]]++
                            emit DelegateVotesChanged(checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1].field_256, checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] <= 0:
                                    if 0 > -balanceOf[address(msg.sender)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[344 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(msg.sender)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[344 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
        signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[128 len stor3.length.field_1]), chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'SOUL::delegateBySig: invalid signature'
        if nonces[address(signer)] == -1:
            revert with 'NH{q', 17
        nonces[address(signer)]++
        if arg2 != nonces[address(signer)]:
            revert with 0, 'SOUL::delegateBySig: invalid nonce'
        if block.timestamp > arg3:
            revert with 0, 'SOUL::delegateBySig: signature expired'
        delegates[address(signer)] = arg1
        emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
        if delegates[address(signer)] != arg1:
            if balanceOf[address(signer)] > 0:
                if not delegates[address(signer)]:
                    if arg1:
                        if numCheckpoints[address(arg1)] <= 0:
                            if 0 > -balanceOf[address(signer)] - 1:
                                revert with 'NH{q', 17
                            if block.timestamp >= -1:
                                revert with 0, 
                                            32,
                                            56,
                                            0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, uint64(arg5) >> 192,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)]++
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                else:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    if numCheckpoints[address(arg1)] > -2:
                                        revert with 'NH{q', 17
                                    numCheckpoints[address(arg1)]++
                            emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                revert with 'NH{q', 17
                            if block.timestamp >= -1:
                                revert with 0, 
                                            32,
                                            56,
                                            0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, uint64(arg5) >> 192,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                numCheckpoints[address(arg1)]++
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                else:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                    if numCheckpoints[address(arg1)] > -2:
                                        revert with 'NH{q', 17
                                    numCheckpoints[address(arg1)]++
                            emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
                else:
                    if numCheckpoints[stor9[address(signer)]] <= 0:
                        if 0 < balanceOf[address(signer)]:
                            revert with 'NH{q', 17
                        if block.timestamp >= -1:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, uint64(arg5) >> 192,
                                        0
                        if numCheckpoints[stor9[address(signer)]] <= 0:
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = block.timestamp
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor9[address(signer)]]++
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] <= 0:
                                    if 0 > -balanceOf[address(signer)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[stor9[address(signer)]] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_0 == block.timestamp:
                                if numCheckpoints[stor9[address(signer)]] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 = -balanceOf[address(signer)]
                                emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        if 0 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 762 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 762 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = block.timestamp
                                checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = -balanceOf[address(signer)]
                                if numCheckpoints[stor9[address(signer)]] > -2:
                                    revert with 'NH{q', 17
                                numCheckpoints[stor9[address(signer)]]++
                                emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        if 0 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
                    else:
                        if numCheckpoints[stor9[address(signer)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 < balanceOf[address(signer)]:
                            revert with 'NH{q', 17
                        if block.timestamp >= -1:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, uint64(arg5) >> 192,
                                        0
                        if numCheckpoints[stor9[address(signer)]] <= 0:
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = block.timestamp
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor9[address(signer)]]++
                            emit DelegateVotesChanged(checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256, checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] <= 0:
                                    if 0 > -balanceOf[address(signer)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[stor9[address(signer)]] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_0 == block.timestamp:
                                if numCheckpoints[stor9[address(signer)]] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 -= balanceOf[address(signer)]
                                emit DelegateVotesChanged(checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256, checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        if 0 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 762 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 762 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = block.timestamp
                                checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 - balanceOf[address(signer)]
                                if numCheckpoints[stor9[address(signer)]] > -2:
                                    revert with 'NH{q', 17
                                numCheckpoints[stor9[address(signer)]]++
                                emit DelegateVotesChanged(checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256, checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        if 0 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
        signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[128 len stor3.length.field_1]), chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'SOUL::delegateBySig: invalid signature'
        if nonces[address(signer)] == -1:
            revert with 'NH{q', 17
        nonces[address(signer)]++
        if arg2 != nonces[address(signer)]:
            revert with 0, 'SOUL::delegateBySig: invalid nonce'
        if block.timestamp > arg3:
            revert with 0, 'SOUL::delegateBySig: signature expired'
        delegates[address(signer)] = arg1
        emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
        if delegates[address(signer)] != arg1:
            if balanceOf[address(signer)] > 0:
                if not delegates[address(signer)]:
                    if arg1:
                        if numCheckpoints[address(arg1)] <= 0:
                            if 0 > -balanceOf[address(signer)] - 1:
                                revert with 'NH{q', 17
                            if block.timestamp >= -1:
                                revert with 0, 
                                            32,
                                            56,
                                            0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, uint64(arg5) >> 192,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)]++
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                else:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    if numCheckpoints[address(arg1)] > -2:
                                        revert with 'NH{q', 17
                                    numCheckpoints[address(arg1)]++
                            emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                revert with 'NH{q', 17
                            if block.timestamp >= -1:
                                revert with 0, 
                                            32,
                                            56,
                                            0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, uint64(arg5) >> 192,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                numCheckpoints[address(arg1)]++
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                else:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                    if numCheckpoints[address(arg1)] > -2:
                                        revert with 'NH{q', 17
                                    numCheckpoints[address(arg1)]++
                            emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
                else:
                    if numCheckpoints[stor9[address(signer)]] <= 0:
                        if 0 < balanceOf[address(signer)]:
                            revert with 'NH{q', 17
                        if block.timestamp >= -1:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, uint64(arg5) >> 192,
                                        0
                        if numCheckpoints[stor9[address(signer)]] <= 0:
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = block.timestamp
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor9[address(signer)]]++
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] <= 0:
                                    if 0 > -balanceOf[address(signer)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[stor9[address(signer)]] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_0 == block.timestamp:
                                if numCheckpoints[stor9[address(signer)]] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 = -balanceOf[address(signer)]
                                emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        if 0 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 762 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 762 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = block.timestamp
                                checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = -balanceOf[address(signer)]
                                if numCheckpoints[stor9[address(signer)]] > -2:
                                    revert with 'NH{q', 17
                                numCheckpoints[stor9[address(signer)]]++
                                emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        if 0 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
                    else:
                        if numCheckpoints[stor9[address(signer)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 < balanceOf[address(signer)]:
                            revert with 'NH{q', 17
                        if block.timestamp >= -1:
                            revert with 0, 
                                        32,
                                        56,
                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, uint64(arg5) >> 192,
                                        0
                        if numCheckpoints[stor9[address(signer)]] <= 0:
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = block.timestamp
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor9[address(signer)]]++
                            emit DelegateVotesChanged(checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256, checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] <= 0:
                                    if 0 > -balanceOf[address(signer)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp >= -1:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)]++
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                            if numCheckpoints[address(arg1)] > -2:
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)]++
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[stor9[address(signer)]] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_0 == block.timestamp:
                                if numCheckpoints[stor9[address(signer)]] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 -= balanceOf[address(signer)]
                                emit DelegateVotesChanged(checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256, checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        if 0 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 762 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 762 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = block.timestamp
                                checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 - balanceOf[address(signer)]
                                if numCheckpoints[stor9[address(signer)]] > -2:
                                    revert with 'NH{q', 17
                                numCheckpoints[stor9[address(signer)]]++
                                emit DelegateVotesChanged(checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256, checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        if 0 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 > -balanceOf[address(signer)] - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp >= -1:
                                            revert with 0, 
                                                        32,
                                                        56,
                                                        0xfe534f554c3a3a5f7772697465436865636b706f696e743a20626c6f636b2074696d657374616d7020657863656564732032353620626974, mem[ceil32(stor3.length.field_1) + 826 len 8] >> 192,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)]++
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_0 == block.timestamp:
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = block.timestamp
                                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)]
                                                if numCheckpoints[address(arg1)] > -2:
                                                    revert with 'NH{q', 17
                                                numCheckpoints[address(arg1)]++
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor11[address(arg1)] - 1].field_256 + balanceOf[address(signer)], arg1);
}



}
