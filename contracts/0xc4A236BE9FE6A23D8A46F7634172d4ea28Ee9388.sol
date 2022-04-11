contract main {




// =====================  Runtime code  =====================


const decimals = 8

const DEFAULT_ADMIN_ROLE = 0


mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor2;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
address marketingAddress;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 taxEnabled;
mapping of struct roleAdmin;

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function getTaxEnabled() payable {
    return bool(taxEnabled)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getMarketingAddress() payable {
    return marketingAddress
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function isExchangeEnabled(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function _fallback() payable {
    revert
}

function setTaxEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Only Owner can enable taxes'
    taxEnabled = uint8(arg1)
}

function addExchange(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Only Owner can add an exchange'
    stor2[address(arg1)] = 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function removeExchange(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Owner can remove an exchange'
    stor2[address(arg1)] = 0
}

function setMarketingAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Owner can set marketing address'
    marketingAddress = arg1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Only Owner can burn tokens'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if not taxEnabled:
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 'NH{q', 17
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if arg3 and stor9 > -1 / arg3:
            revert with 'NH{q', 17
        if arg3 and stor8 > -1 / arg3:
            revert with 'NH{q', 17
        if arg3 * stor9 / 100 > -(arg3 * stor8 / 100) - 1:
            revert with 'NH{q', 17
        if arg3 < (arg3 * stor9 / 100) + (arg3 * stor8 / 100):
            revert with 'NH{q', 17
        if balanceOf[stor6] > -(arg3 * stor9 / 100) - 1:
            revert with 'NH{q', 17
        balanceOf[stor6] += arg3 * stor9 / 100
        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor9 / 100) + (arg3 * stor8 / 100) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor9 / 100) - (arg3 * stor8 / 100)
        if totalSupply < arg3 * stor8 / 100:
            revert with 'NH{q', 17
        totalSupply -= arg3 * stor8 / 100
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 'NH{q', 17
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer((arg3 - (arg3 * stor9 / 100) - (arg3 * stor8 / 100)), arg1, arg2);
        emit Transfer((arg3 * stor9 / 100), arg1, marketingAddress);
        emit Transfer((arg3 * stor8 / 100), arg1, 0);
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require msg.sender
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if not taxEnabled:
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if arg2 and stor9 > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 and stor8 > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 * stor9 / 100 > -(arg2 * stor8 / 100) - 1:
            revert with 'NH{q', 17
        if arg2 < (arg2 * stor9 / 100) + (arg2 * stor8 / 100):
            revert with 'NH{q', 17
        if balanceOf[stor6] > -(arg2 * stor9 / 100) - 1:
            revert with 'NH{q', 17
        balanceOf[stor6] += arg2 * stor9 / 100
        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor9 / 100) + (arg2 * stor8 / 100) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor9 / 100) - (arg2 * stor8 / 100)
        if totalSupply < arg2 * stor8 / 100:
            revert with 'NH{q', 17
        totalSupply -= arg2 * stor8 / 100
        if stor2[address(msg.sender)]:
            if stor10 == -1:
                revert with 'NH{q', 17
            stor10++
            if not stor7:
                revert with 'NH{q', 18
            if sha3(block.timestamp, block.difficulty, stor10) % stor7 == 1:
                require arg2 - (arg2 * stor9 / 100) - (arg2 * stor8 / 100)
                if totalSupply > -arg2 + (arg2 * stor9 / 100) + (arg2 * stor8 / 100) - 1:
                    revert with 'NH{q', 17
                totalSupply = totalSupply + arg2 - (arg2 * stor9 / 100) - (arg2 * stor8 / 100)
                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor9 / 100) + (arg2 * stor8 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor9 / 100) - (arg2 * stor8 / 100)
                emit Transfer((arg2 - (arg2 * stor9 / 100) - (arg2 * stor8 / 100)), 0, arg1);
        emit Transfer((arg2 - (arg2 * stor9 / 100) - (arg2 * stor8 / 100)), msg.sender, arg1);
        emit Transfer((arg2 * stor9 / 100), msg.sender, marketingAddress);
        emit Transfer((arg2 * stor8 / 100), msg.sender, 0);
    return 1
}

function name() payable {
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

function symbol() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function multiTransfer(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + floor32(arg2.length) + 98
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _118 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        _120 = mem[(32 * idx) + floor32(arg1.length) + 129]
        require mem[(32 * idx) + floor32(arg1.length) + 129] <= balanceOf[address(msg.sender)]
        require mem[(32 * idx) + 140 len 20]
        require msg.sender
        if balanceOf[address(msg.sender)] < mem[(32 * idx) + floor32(arg1.length) + 129]:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + floor32(arg1.length) + 129]
        if not taxEnabled:
            if balanceOf[address(mem[(32 * idx) + 128])] > -mem[(32 * idx) + floor32(arg1.length) + 129] - 1:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + floor32(arg1.length) + 129]
            mem[mem[64]] = mem[(32 * idx) + floor32(arg1.length) + 129]
            emit Transfer(_120, msg.sender, address(_118));
        else:
            if mem[(32 * idx) + floor32(arg1.length) + 129] and stor9 > -1 / mem[(32 * idx) + floor32(arg1.length) + 129]:
                revert with 'NH{q', 17
            if mem[(32 * idx) + floor32(arg1.length) + 129] and stor8 > -1 / mem[(32 * idx) + floor32(arg1.length) + 129]:
                revert with 'NH{q', 17
            if mem[(32 * idx) + floor32(arg1.length) + 129] * stor9 / 100 > -(mem[(32 * idx) + floor32(arg1.length) + 129] * stor8 / 100) - 1:
                revert with 'NH{q', 17
            if mem[(32 * idx) + floor32(arg1.length) + 129] < (mem[(32 * idx) + floor32(arg1.length) + 129] * stor9 / 100) + (mem[(32 * idx) + floor32(arg1.length) + 129] * stor8 / 100):
                revert with 'NH{q', 17
            if balanceOf[stor6] > -(mem[(32 * idx) + floor32(arg1.length) + 129] * stor9 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor6] += mem[(32 * idx) + floor32(arg1.length) + 129] * stor9 / 100
            if balanceOf[address(mem[(32 * idx) + 128])] > -mem[(32 * idx) + floor32(arg1.length) + 129] + (mem[(32 * idx) + floor32(arg1.length) + 129] * stor9 / 100) + (mem[(32 * idx) + floor32(arg1.length) + 129] * stor8 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + floor32(arg1.length) + 129] - (mem[(32 * idx) + floor32(arg1.length) + 129] * stor9 / 100) - (mem[(32 * idx) + floor32(arg1.length) + 129] * stor8 / 100)
            if totalSupply < mem[(32 * idx) + floor32(arg1.length) + 129] * stor8 / 100:
                revert with 'NH{q', 17
            totalSupply -= mem[(32 * idx) + floor32(arg1.length) + 129] * stor8 / 100
            mem[0] = msg.sender
            mem[32] = 2
            if not stor2[address(msg.sender)]:
                emit Transfer((mem[(32 * idx) + floor32(arg1.length) + 129] - (mem[(32 * idx) + floor32(arg1.length) + 129] * stor9 / 100) - (mem[(32 * idx) + floor32(arg1.length) + 129] * stor8 / 100)), msg.sender, mem[(32 * idx) + 140 len 20]);
                emit Transfer((mem[(32 * idx) + floor32(arg1.length) + 129] * stor9 / 100), msg.sender, marketingAddress);
                mem[mem[64]] = mem[(32 * idx) + floor32(arg1.length) + 129] * stor8 / 100
            else:
                if stor10 == -1:
                    revert with 'NH{q', 17
                stor10++
                _133 = mem[64]
                mem[mem[64] + 32] = block.timestamp
                mem[mem[64] + 64] = block.difficulty
                mem[mem[64] + 96] = stor10
                _137 = mem[64]
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                if not stor7:
                    revert with 'NH{q', 18
                if sha3(mem[_137 + 32 len mem[_137]]) % stor7 == 1:
                    require _120 - (_120 * stor9 / 100) - (_120 * stor8 / 100)
                    if totalSupply > -_120 + (_120 * stor9 / 100) + (_120 * stor8 / 100) - 1:
                        revert with 'NH{q', 17
                    totalSupply = totalSupply + _120 - (_120 * stor9 / 100) - (_120 * stor8 / 100)
                    mem[0] = address(_118)
                    mem[32] = 0
                    if balanceOf[address(_118)] > -_120 + (_120 * stor9 / 100) + (_120 * stor8 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(_118)] = balanceOf[address(_118)] + _120 - (_120 * stor9 / 100) - (_120 * stor8 / 100)
                    emit Transfer((_120 - (_120 * stor9 / 100) - (_120 * stor8 / 100)), 0, address(_118));
                emit Transfer((_120 - (_120 * stor9 / 100) - (_120 * stor8 / 100)), msg.sender, address(_118));
                emit Transfer((_120 * stor9 / 100), msg.sender, marketingAddress);
                mem[_133 + 128] = _120 * stor8 / 100
            emit Transfer((_120 * stor8 / 100), msg.sender, 0);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
