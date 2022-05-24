contract main {




// =====================  Runtime code  =====================


#
#  - delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#
const decimals = 18

const DOMAIN_TYPEHASH = 0x797cfab58fcb15f590eb8e4252d5c228ff88f94f907e119e80c4393a946e8f35

const DEFAULT_ADMIN_ROLE = 0

const DELEGATION_TYPEHASH = 0x1ac861a6a8532f3704e1768564a53a32774f00d6cf20ccbbdf60ab61378302bc


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
mapping of struct roleAdmin;
address sub_48f8bfeaAddress;
uint256 sub_155dfb50;
uint256 sub_a6ed77ee;
mapping of struct checkpoints;
mapping of uint256 numCheckpoints;
mapping of uint256 nonces;
mapping of address delegates;

function checkpoints(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function sub_155dfb50(?) payable {
    return sub_155dfb50
}

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function sub_48f8bfea(?) payable {
    return sub_48f8bfeaAddress
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

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_a6ed77ee(?) payable {
    return sub_a6ed77ee
}

function sub_dbaef9b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[arg1][address(msg.sender)].field_0)
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

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numCheckpoints[address(arg1)] <= 0:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 'NH{q', 17
    return checkpoints[address(arg1)][stor10[address(arg1)] - 1].field_256
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'getPriorVotes: not yet determined'
    if not numCheckpoints[address(arg1)]:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 'NH{q', 17
    if checkpoints[address(arg1)][stor10[address(arg1)] - 1].field_0 <= arg2:
        if numCheckpoints[address(arg1)] < 1:
            revert with 'NH{q', 17
        return checkpoints[address(arg1)][stor10[address(arg1)] - 1].field_256
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
        mem[32] = sha3(address(arg1), 9)
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = checkpoints[address(arg1)][stor10[address(arg1)] + -(0.5 / stor10[address(arg1)] + -idx - 1) - 1].field_0
        mem[_34 + 32] = checkpoints[address(arg1)][stor10[address(arg1)] + -(0.5 / stor10[address(arg1)] + -idx - 1) - 1].field_256
        if checkpoints[address(arg1)][stor10[address(arg1)] + -(0.5 / stor10[address(arg1)] + -idx - 1) - 1].field_0 == arg2:
            return checkpoints[address(arg1)][stor10[address(arg1)] + -(0.5 / stor10[address(arg1)] + -idx - 1) - 1].field_256
        if checkpoints[address(arg1)][stor10[address(arg1)] + -(0.5 / stor10[address(arg1)] + -idx - 1) - 1].field_0 < arg2:
            idx = numCheckpoints[address(arg1)] + -(numCheckpoints[address(arg1)] + -idx - 1 / 2) - 1
            continue 
        if numCheckpoints[address(arg1)] + -(numCheckpoints[address(arg1)] + -idx - 1 / 2) - 1 < 1:
            revert with 'NH{q', 17
        idx = idx
        continue 
    return checkpoints[address(arg1)][idx].field_256
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

function sub_743d507c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not roleAdmin[arg1][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = arg1
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if arg1 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    else:
        if address(arg2) == address(arg3):
            revert with 0, 'must be a new address'
        if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
            if not roleAdmin[arg1][address(arg3)].field_0:
                roleAdmin[arg1][address(arg3)].field_0 = 1
                emit RoleGranted(arg1, address(arg3), msg.sender);
            if address(arg2) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
            if roleAdmin[arg1][address(arg2)].field_0:
                roleAdmin[arg1][address(arg2)].field_0 = 0
                emit RoleRevoked(arg1, address(arg2), msg.sender);
            emit 0x61d8718e: arg1, address(arg2), address(arg3)
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if delegates[address(msg.sender)]:
        if arg1 > 0:
            if delegates[address(msg.sender)]:
                if numCheckpoints[stor12[address(msg.sender)]] <= 0:
                    if 0 < arg1:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 'block timestamp exceeds 256 bits'
                    if numCheckpoints[stor12[address(msg.sender)]] <= 0:
                        checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_0 = block.timestamp
                        checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_256 = -arg1
                        numCheckpoints[stor12[address(msg.sender)]]++
                    else:
                        if numCheckpoints[stor12[address(msg.sender)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor12[address(msg.sender)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256 = -arg1
                        else:
                            checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_0 = block.timestamp
                            checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_256 = -arg1
                            if numCheckpoints[stor12[address(msg.sender)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor12[address(msg.sender)]]++
                    emit DelegateVotesChanged(0, -arg1, delegates[address(msg.sender)]);
                else:
                    if numCheckpoints[stor12[address(msg.sender)]] < 1:
                        revert with 'NH{q', 17
                    if checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256 < arg1:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 'block timestamp exceeds 256 bits'
                    if numCheckpoints[stor12[address(msg.sender)]] <= 0:
                        checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_0 = block.timestamp
                        checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_256 = checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256 - arg1
                        numCheckpoints[stor12[address(msg.sender)]]++
                    else:
                        if numCheckpoints[stor12[address(msg.sender)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor12[address(msg.sender)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256 -= arg1
                        else:
                            checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_0 = block.timestamp
                            checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_256 = checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256 - arg1
                            if numCheckpoints[stor12[address(msg.sender)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor12[address(msg.sender)]]++
                    emit DelegateVotesChanged(checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256, checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256 - arg1, delegates[address(msg.sender)]);
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0, 'burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
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
                if numCheckpoints[stor12[address(arg1)]] <= 0:
                    if 0 < arg2:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 'block timestamp exceeds 256 bits'
                    if numCheckpoints[stor12[address(arg1)]] <= 0:
                        checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_0 = block.timestamp
                        checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_256 = -arg2
                        numCheckpoints[stor12[address(arg1)]]++
                    else:
                        if numCheckpoints[stor12[address(arg1)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor12[address(arg1)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256 = -arg2
                        else:
                            checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_0 = block.timestamp
                            checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_256 = -arg2
                            if numCheckpoints[stor12[address(arg1)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor12[address(arg1)]]++
                    emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                else:
                    if numCheckpoints[stor12[address(arg1)]] < 1:
                        revert with 'NH{q', 17
                    if checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256 < arg2:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 'block timestamp exceeds 256 bits'
                    if numCheckpoints[stor12[address(arg1)]] <= 0:
                        checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_0 = block.timestamp
                        checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_256 = checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256 - arg2
                        numCheckpoints[stor12[address(arg1)]]++
                    else:
                        if numCheckpoints[stor12[address(arg1)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor12[address(arg1)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256 -= arg2
                        else:
                            checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_0 = block.timestamp
                            checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_256 = checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256 - arg2
                            if numCheckpoints[stor12[address(arg1)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor12[address(arg1)]]++
                    emit DelegateVotesChanged(checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256, checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256 - arg2, delegates[address(arg1)]);
}

function sub_9aeb3727(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[stor7][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = sub_155dfb50
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if sub_155dfb50 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    else:
        if sub_48f8bfeaAddress == address(arg1):
            revert with 0, 'make a change, be the change'
        if not roleAdmin[0][address(msg.sender)].field_0:
            mem[128 len 42] = call.data[calldata.size len 42]
            mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[224 len 66] = call.data[calldata.size len 66]
            mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 65
            while idx > 1:
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                continue 
        else:
            if sub_48f8bfeaAddress == address(arg1):
                revert with 0, 'must be a new address'
            if roleAdmin[roleAdmin[0].field_256][address(msg.sender)].field_0:
                if not roleAdmin[0][address(arg1)].field_0:
                    roleAdmin[0][address(arg1)].field_0 = 1
                    emit RoleGranted(0, address(arg1), msg.sender);
                if sub_48f8bfeaAddress != msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
                if roleAdmin[0][stor6].field_0:
                    roleAdmin[0][stor6].field_0 = 0
                    emit RoleRevoked(0, sub_48f8bfeaAddress, msg.sender);
                emit 0x61d8718e: 0, sub_48f8bfeaAddress, address(arg1)
                sub_48f8bfeaAddress = address(arg1)
                emit 0x1c881cf1: sub_48f8bfeaAddress
            mem[128 len 42] = call.data[calldata.size len 42]
            mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[224 len 66] = call.data[calldata.size len 66]
            mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 65
            s = roleAdmin[0].field_256
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if roleAdmin[0].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[stor8][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = sub_a6ed77ee
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if sub_a6ed77ee + 16384:
            revert with 0, 'Strings: hex length insufficient'
        mem[352] = 'AccessControl: account '
        mem[375 len 64] = 0, mem[129 len 63]
        mem[417] = ' is missing role '
        mem[434 len 96] = 0, mem[225 len 95]
        mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[504] = 32
        mem[536] = mem[320]
        mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
        if ceil32(mem[320]) > mem[320]:
            mem[mem[320] + 568] = 0
        revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
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
                if numCheckpoints[stor12[address(arg1)]] <= 0:
                    if 0 > -arg2 - 1:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 'block timestamp exceeds 256 bits'
                    if numCheckpoints[stor12[address(arg1)]] <= 0:
                        checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_0 = block.timestamp
                        checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor12[address(arg1)]]++
                    else:
                        if numCheckpoints[stor12[address(arg1)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor12[address(arg1)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256 = arg2
                        else:
                            checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_0 = block.timestamp
                            checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_256 = arg2
                            if numCheckpoints[stor12[address(arg1)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor12[address(arg1)]]++
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                else:
                    if numCheckpoints[stor12[address(arg1)]] < 1:
                        revert with 'NH{q', 17
                    if checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256 > -arg2 - 1:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 'block timestamp exceeds 256 bits'
                    if numCheckpoints[stor12[address(arg1)]] <= 0:
                        checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_0 = block.timestamp
                        checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_256 = checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256 + arg2
                        numCheckpoints[stor12[address(arg1)]]++
                    else:
                        if numCheckpoints[stor12[address(arg1)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor12[address(arg1)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256 += arg2
                        else:
                            checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_0 = block.timestamp
                            checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]]].field_256 = checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256 + arg2
                            if numCheckpoints[stor12[address(arg1)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor12[address(arg1)]]++
                    emit DelegateVotesChanged(checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256, checkpoints[stor12[address(arg1)]][stor10[stor12[address(arg1)]] - 1].field_256 + arg2, delegates[address(arg1)]);
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if delegates[address(msg.sender)]:
                if numCheckpoints[stor12[address(msg.sender)]] <= 0:
                    if 0 < balanceOf[address(msg.sender)]:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 'block timestamp exceeds 256 bits'
                    if numCheckpoints[stor12[address(msg.sender)]] <= 0:
                        checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_0 = block.timestamp
                        checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor12[address(msg.sender)]]++
                    else:
                        if numCheckpoints[stor12[address(msg.sender)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor12[address(msg.sender)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256 = -balanceOf[address(msg.sender)]
                        else:
                            checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_0 = block.timestamp
                            checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            if numCheckpoints[stor12[address(msg.sender)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor12[address(msg.sender)]]++
                    emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                else:
                    if numCheckpoints[stor12[address(msg.sender)]] < 1:
                        revert with 'NH{q', 17
                    if checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256 < balanceOf[address(msg.sender)]:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 'block timestamp exceeds 256 bits'
                    if numCheckpoints[stor12[address(msg.sender)]] <= 0:
                        checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_0 = block.timestamp
                        checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_256 = checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor12[address(msg.sender)]]++
                    else:
                        if numCheckpoints[stor12[address(msg.sender)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_0 == block.timestamp:
                            if numCheckpoints[stor12[address(msg.sender)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256 -= balanceOf[address(msg.sender)]
                        else:
                            checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_0 = block.timestamp
                            checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]]].field_256 = checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256 - balanceOf[address(msg.sender)]
                            if numCheckpoints[stor12[address(msg.sender)]] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[stor12[address(msg.sender)]]++
                    emit DelegateVotesChanged(checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256, checkpoints[stor12[address(msg.sender)]][stor10[stor12[address(msg.sender)]] - 1].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
            if arg1:
                if numCheckpoints[address(arg1)] <= 0:
                    if 0 > -balanceOf[address(msg.sender)] - 1:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 'block timestamp exceeds 256 bits'
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = block.timestamp
                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                        numCheckpoints[address(arg1)]++
                    else:
                        if numCheckpoints[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1].field_0 == block.timestamp:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            checkpoints[address(arg1)][stor10[address(arg1)] - 1].field_256 = balanceOf[address(msg.sender)]
                        else:
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = block.timestamp
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            if numCheckpoints[address(arg1)] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[address(arg1)]++
                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if numCheckpoints[address(arg1)] < 1:
                        revert with 'NH{q', 17
                    if checkpoints[address(arg1)][stor10[address(arg1)] - 1].field_256 > -balanceOf[address(msg.sender)] - 1:
                        revert with 'NH{q', 17
                    if block.timestamp >= -1:
                        revert with 0, 'block timestamp exceeds 256 bits'
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = block.timestamp
                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = checkpoints[address(arg1)][stor10[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                        numCheckpoints[address(arg1)]++
                    else:
                        if numCheckpoints[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1].field_0 == block.timestamp:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            checkpoints[address(arg1)][stor10[address(arg1)] - 1].field_256 += balanceOf[address(msg.sender)]
                        else:
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = block.timestamp
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = checkpoints[address(arg1)][stor10[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)]
                            if numCheckpoints[address(arg1)] > -2:
                                revert with 'NH{q', 17
                            numCheckpoints[address(arg1)]++
                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1].field_256, checkpoints[address(arg1)][stor10[address(arg1)] - 1].field_256 + balanceOf[address(msg.sender)], arg1);
}



}
