contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of struct stor4;
mapping of struct stor5;
mapping of uint256 sub_b30b3245;
mapping of uint8 stor7;
uint256 totalTokens;
mapping of uint256 totalTokenUsers;
mapping of uint256 sub_16c4faa8;
mapping of uint256 balance;
mapping of uint256 tokenUser;
mapping of uint8 stor13;
address balanceKeeperAddress;

function sub_16c4faa8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    return sub_16c4faa8[stor6[arg1[all]][arg2[all]]]
}

function tokenUser(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= totalTokens:
        revert with 0, 'token is not known'
    if totalTokenUsers[arg1] <= 0:
        revert with 0, 'no token users'
    if arg2 >= totalTokenUsers[arg1]:
        revert with 0, 'token user is not known'
    return tokenUser[arg1][arg2]
}

function sub_19f56b71(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if sub_b30b3245[arg1[all]][arg2[all]] >= totalTokens:
        revert with 0, 'token is not known'
    if totalTokenUsers[stor6[arg1[all]][arg2[all]]] <= 0:
        revert with 0, 'no token users'
    if arg3 >= totalTokenUsers[stor6[arg1[all]][arg2[all]]]:
        revert with 0, 'token user is not known'
    return tokenUser[stor6[arg1[all]][arg2[all]]][arg3]
}

function totalTokenUsers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalTokenUsers[arg1]
}

function canAdd(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function isKnownTokenUser(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor13[arg1][arg2])
}

function sub_5180602f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    return bool(stor13[stor6[arg1[all]][arg2[all]]][arg3])
}

function canSubtract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function totalTokens() payable {
    return totalTokens
}

function owner() payable {
    return owner
}

function balance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return balance[arg1][arg2]
}

function canOpen(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function sub_aab27467(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    return bool(stor7[arg1[all]][arg2[all]])
}

function sub_b30b3245(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor7[arg1[all]][arg2[all]]:
        revert with 0, 'token is not known'
    return sub_b30b3245[arg1[all]][arg2[all]]
}

function totalBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_16c4faa8[arg1]
}

function balanceKeeper() payable {
    return balanceKeeperAddress
}

function _fallback() payable {
    revert
}

function isKnownToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 < totalTokens)
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setCanAdd(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor1[address(arg1)] = uint8(arg2)
    emit SetCanAdd(msg.sender, arg1, bool(stor1[address(arg1)]));
}

function setCanOpen(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor3[address(arg1)] = uint8(arg2)
    emit SetCanOpen(msg.sender, arg1, bool(stor3[address(arg1)]));
}

function setCanSubtract(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2[address(arg1)] = uint8(arg2)
    emit SetCanSubtract(msg.sender, arg1, bool(stor2[address(arg1)]));
}

function sub_544d189f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor7[arg1[all]][arg2[all]]:
        return totalTokenUsers[stor6[arg1[all]][arg2[all]]]
    else:
        return 0
}

function sub_074c9750(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if not stor7[arg1[all]][arg2[all]]:
        return 0
    if not stor7[arg1[all]][arg2[all]]:
        revert with 0, 'token is not known'
    return balance[stor6[arg1[all]][arg2[all]]][arg3]
}

function subtract(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor2[address(msg.sender)]:
        revert with 0, 'not allowed to subtract'
    if arg1 >= totalTokens:
        revert with 0, 'token is not known'
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0xe8e55018 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'user is not known'
    if balance[arg1][arg2] < arg3:
        revert with 'NH{q', 17
    balance[arg1][arg2] -= arg3
    if sub_16c4faa8[arg1] < arg3:
        revert with 'NH{q', 17
    sub_16c4faa8[arg1] -= arg3
    emit Subtract(arg3, msg.sender, arg1, arg2);
}

function add(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, 'not allowed to add'
    if arg1 >= totalTokens:
        revert with 0, 'token is not known'
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0xe8e55018 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'user is not known'
    if not stor13[arg1][arg2]:
        if arg3 > 0:
            stor13[arg1][arg2] = 1
            tokenUser[arg1][stor9[arg1]] = arg2
            if totalTokenUsers[arg1] == -1:
                revert with 'NH{q', 17
            totalTokenUsers[arg1]++
    if balance[arg1][arg2] > -arg3 - 1:
        revert with 'NH{q', 17
    balance[arg1][arg2] += arg3
    if sub_16c4faa8[arg1] > -arg3 - 1:
        revert with 'NH{q', 17
    sub_16c4faa8[arg1] += arg3
    emit Add(arg3, msg.sender, arg1, arg2);
}

function sub_2daf5799(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    if not stor2[address(msg.sender)]:
        revert with 0, 'not allowed to subtract'
    if not stor7[arg1[all]][arg2[all]]:
        revert with 0, 'token is not known'
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0xe8e55018 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'user is not known'
    if balance[stor6[arg1[all]][arg2[all]]][arg3] < arg4:
        revert with 'NH{q', 17
    balance[stor6[arg1[all]][arg2[all]]][arg3] -= arg4
    if sub_16c4faa8[stor6[arg1[all]][arg2[all]]] < arg4:
        revert with 'NH{q', 17
    sub_16c4faa8[stor6[arg1[all]][arg2[all]]] -= arg4
    emit Subtract(arg4, msg.sender, sub_b30b3245[arg1[all]][arg2[all]], arg3);
}

function sub_b48ffdb9(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    if not stor2[address(msg.sender)]:
        revert with 0, 'not allowed to subtract'
    if arg1 >= totalTokens:
        revert with 0, 'token is not known'
    mem[ceil32(arg2.length) + 196] = arg3.length
    mem[ceil32(arg2.length) + 228 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 228] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0x3ed084c4 with:
            gas gas_remaining wei
           args 0, 64, ceil32(arg2.length) + 96, arg2.length, arg2[all], 0, mem[arg2.length + 228 len ceil32(arg2.length) - arg2.length], arg3[all], mem[ceil32(arg2.length) + arg3.length + 228 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if balance[arg1][ext_call.return_data[0]] < arg4:
        revert with 'NH{q', 17
    balance[arg1][ext_call.return_data[0]] -= arg4
    if sub_16c4faa8[arg1] < arg4:
        revert with 'NH{q', 17
    sub_16c4faa8[arg1] -= arg4
    emit Subtract(arg4, msg.sender, arg1, ext_call.return_data[0]);
}

function sub_62882f4b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[address(msg.sender)]:
        revert with 0, 'not allowed to add'
    if not stor7[arg1[all]][arg2[all]]:
        revert with 0, 'token is not known'
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0xe8e55018 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'user is not known'
    if not stor13[stor6[arg1[all]][arg2[all]]][arg3]:
        if arg4 > 0:
            stor13[stor6[arg1[all]][arg2[all]]][arg3] = 1
            tokenUser[stor6[arg1[all]][arg2[all]]][stor9[stor6[arg1[all]][arg2[all]]]] = arg3
            if totalTokenUsers[stor6[arg1[all]][arg2[all]]] == -1:
                revert with 'NH{q', 17
            totalTokenUsers[stor6[arg1[all]][arg2[all]]]++
    if balance[stor6[arg1[all]][arg2[all]]][arg3] > -arg4 - 1:
        revert with 'NH{q', 17
    balance[stor6[arg1[all]][arg2[all]]][arg3] += arg4
    if sub_16c4faa8[stor6[arg1[all]][arg2[all]]] > -arg4 - 1:
        revert with 'NH{q', 17
    sub_16c4faa8[stor6[arg1[all]][arg2[all]]] += arg4
    emit Add(arg4, msg.sender, sub_b30b3245[arg1[all]][arg2[all]], arg3);
}

function sub_1a1679e7(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    if not stor1[address(msg.sender)]:
        revert with 0, 'not allowed to add'
    if arg1 >= totalTokens:
        revert with 0, 'token is not known'
    mem[ceil32(arg2.length) + 196] = arg3.length
    mem[ceil32(arg2.length) + 228 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 228] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0x3ed084c4 with:
            gas gas_remaining wei
           args 0, 64, ceil32(arg2.length) + 96, arg2.length, arg2[all], 0, mem[arg2.length + 228 len ceil32(arg2.length) - arg2.length], arg3[all], mem[ceil32(arg2.length) + arg3.length + 228 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not stor13[arg1][ext_call.return_data[0]]:
        if arg4 > 0:
            stor13[arg1][ext_call.return_data[0]] = 1
            tokenUser[arg1][stor9[arg1]] = ext_call.return_data[0]
            if totalTokenUsers[arg1] == -1:
                revert with 'NH{q', 17
            totalTokenUsers[arg1]++
    if balance[arg1][ext_call.return_data[0]] > -arg4 - 1:
        revert with 'NH{q', 17
    balance[arg1][ext_call.return_data[0]] += arg4
    if sub_16c4faa8[arg1] > -arg4 - 1:
        revert with 'NH{q', 17
    sub_16c4faa8[arg1] += arg4
    emit Add(arg4, msg.sender, arg1, ext_call.return_data[0]);
}

function sub_90d6a941(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 196] = arg3.length
    mem[ceil32(arg2.length) + 228 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 228] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0xf91c1e50 with:
            gas gas_remaining wei
           args 0, 64, ceil32(arg2.length) + 96, arg2.length, arg2[all], 0, mem[arg2.length + 228 len ceil32(arg2.length) - arg2.length], arg3[all], mem[ceil32(arg2.length) + arg3.length + 228 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return 0
    mem[ceil32(return_data.size) + ceil32(arg2.length) + 196] = arg3.length
    mem[ceil32(return_data.size) + ceil32(arg2.length) + 228 len arg3.length] = arg3[all]
    mem[ceil32(return_data.size) + ceil32(arg2.length) + arg3.length + 228] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0x3ed084c4 with:
            gas gas_remaining wei
           args 64, ceil32(arg2.length) + 96, arg2.length, arg2[all], 0, mem[ceil32(return_data.size) + arg2.length + 228 len ceil32(arg2.length) + ceil32(arg3.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return balance[arg1][ext_call.return_data[0]]
}

function sub_5682ce8c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 196] = arg3.length
    mem[ceil32(arg2.length) + 228 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 228] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0xf91c1e50 with:
            gas gas_remaining wei
           args 0, 64, ceil32(arg2.length) + 96, arg2.length, arg2[all], 0, mem[arg2.length + 228 len ceil32(arg2.length) - arg2.length], arg3[all], mem[ceil32(arg2.length) + arg3.length + 228 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return 0
    mem[ceil32(return_data.size) + ceil32(arg2.length) + 196] = arg3.length
    mem[ceil32(return_data.size) + ceil32(arg2.length) + 228 len arg3.length] = arg3[all]
    mem[ceil32(return_data.size) + ceil32(arg2.length) + arg3.length + 228] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0x3ed084c4 with:
            gas gas_remaining wei
           args 64, ceil32(arg2.length) + 96, arg2.length, arg2[all], 0, mem[ceil32(return_data.size) + arg2.length + 228 len ceil32(arg2.length) + ceil32(arg3.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return bool(stor13[arg1][ext_call.return_data[0]])
}

function sub_5f2ecbb2(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == arg5
    if not stor2[address(msg.sender)]:
        revert with 0, 'not allowed to subtract'
    if not stor7[arg1[all]][arg2[all]]:
        revert with 0, 'token is not known'
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 6
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = sha3(arg1[all], 6)
    mem[ceil32(arg3.length) + 196] = arg4.length
    mem[ceil32(arg3.length) + 228 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 228] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0x3ed084c4 with:
            gas gas_remaining wei
           args 0, 64, ceil32(arg3.length) + 96, arg3.length, arg3[all], 0, mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length], arg4[all], mem[ceil32(arg3.length) + arg4.length + 228 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if balance[stor6[arg1[all]][arg2[all]]][ext_call.return_data[0]] < arg5:
        revert with 'NH{q', 17
    balance[stor6[arg1[all]][arg2[all]]][ext_call.return_data[0]] -= arg5
    if sub_16c4faa8[stor6[arg1[all]][arg2[all]]] < arg5:
        revert with 'NH{q', 17
    sub_16c4faa8[stor6[arg1[all]][arg2[all]]] -= arg5
    emit Subtract(arg5, msg.sender, sub_b30b3245[arg1[all]][arg2[all]], ext_call.return_data[0]);
}

function sub_fe3d2a5d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 6
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = sha3(arg1[all], 6)
    mem[ceil32(arg3.length) + 196] = arg4.length
    mem[ceil32(arg3.length) + 228 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 228] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0xf91c1e50 with:
            gas gas_remaining wei
           args 0, 64, ceil32(arg3.length) + 96, arg3.length, arg3[all], 0, mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length], arg4[all], mem[ceil32(arg3.length) + arg4.length + 228 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return 0
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 196] = arg4.length
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 228 len arg4.length] = arg4[all]
    mem[ceil32(return_data.size) + ceil32(arg3.length) + arg4.length + 228] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0x3ed084c4 with:
            gas gas_remaining wei
           args 64, ceil32(arg3.length) + 96, arg3.length, arg3[all], 0, mem[ceil32(return_data.size) + arg3.length + 228 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return bool(stor13[stor6[arg1[all]][arg2[all]]][ext_call.return_data[0]])
}

function sub_ea4ee101(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not stor7[arg1[all]][arg2[all]]:
        return 0
    if not stor7[arg1[all]][arg2[all]]:
        revert with 0, 'token is not known'
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 6
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = sha3(arg1[all], 6)
    mem[ceil32(arg3.length) + 196] = arg4.length
    mem[ceil32(arg3.length) + 228 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 228] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0xf91c1e50 with:
            gas gas_remaining wei
           args 0, 64, ceil32(arg3.length) + 96, arg3.length, arg3[all], 0, mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length], arg4[all], mem[ceil32(arg3.length) + arg4.length + 228 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return 0
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 196] = arg4.length
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 228 len arg4.length] = arg4[all]
    mem[ceil32(return_data.size) + ceil32(arg3.length) + arg4.length + 228] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0x3ed084c4 with:
            gas gas_remaining wei
           args 64, ceil32(arg3.length) + 96, arg3.length, arg3[all], 0, mem[ceil32(return_data.size) + arg3.length + 228 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return balance[stor6[arg1[all]][arg2[all]]][ext_call.return_data[0]]
}

function sub_a3a49296(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == arg5
    if not stor1[address(msg.sender)]:
        revert with 0, 'not allowed to add'
    if not stor7[arg1[all]][arg2[all]]:
        revert with 0, 'token is not known'
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 6
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = sha3(arg1[all], 6)
    mem[ceil32(arg3.length) + 196] = arg4.length
    mem[ceil32(arg3.length) + 228 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 228] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0x3ed084c4 with:
            gas gas_remaining wei
           args 0, 64, ceil32(arg3.length) + 96, arg3.length, arg3[all], 0, mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length], arg4[all], mem[ceil32(arg3.length) + arg4.length + 228 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not stor13[stor6[arg1[all]][arg2[all]]][ext_call.return_data[0]]:
        if arg5 > 0:
            stor13[stor6[arg1[all]][arg2[all]]][ext_call.return_data[0]] = 1
            tokenUser[stor6[arg1[all]][arg2[all]]][stor9[stor6[arg1[all]][arg2[all]]]] = ext_call.return_data[0]
            if totalTokenUsers[stor6[arg1[all]][arg2[all]]] == -1:
                revert with 'NH{q', 17
            totalTokenUsers[stor6[arg1[all]][arg2[all]]]++
    if balance[stor6[arg1[all]][arg2[all]]][ext_call.return_data[0]] > -arg5 - 1:
        revert with 'NH{q', 17
    balance[stor6[arg1[all]][arg2[all]]][ext_call.return_data[0]] += arg5
    if sub_16c4faa8[stor6[arg1[all]][arg2[all]]] > -arg5 - 1:
        revert with 'NH{q', 17
    sub_16c4faa8[stor6[arg1[all]][arg2[all]]] += arg5
    emit Add(arg5, msg.sender, sub_b30b3245[arg1[all]][arg2[all]], ext_call.return_data[0]);
}

function tokenChainById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= totalTokens:
        revert with 0, 'token is not known'
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_0:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_1:
                if 31 < stor4[arg1].field_1:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)])
                mem[128] = 256 * stor4[arg1].field_8
        else:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_1:
                if 31 < stor4[arg1].field_1:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)])
                mem[128] = 256 * stor4[arg1].field_8
        mem[ceil32(stor4[arg1].field_1) + 192 len ceil32(stor4[arg1].field_1)] = mem[128 len ceil32(stor4[arg1].field_1)]
        if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
            mem[ceil32(stor4[arg1].field_1) + stor4[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)], mem[(2 * ceil32(stor4[arg1].field_1)) + 192 len 2 * ceil32(stor4[arg1].field_1)]), 
    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_1:
            if 31 < stor4[arg1].field_1:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    else:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_1:
            if 31 < stor4[arg1].field_1:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    mem[ceil32(stor4[arg1].field_1) + 192 len ceil32(stor4[arg1].field_1)] = mem[128 len ceil32(stor4[arg1].field_1)]
    if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
        mem[ceil32(stor4[arg1].field_1) + stor4[arg1].field_1 + 192] = 0
    return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)], mem[(2 * ceil32(stor4[arg1].field_1)) + 192 len 2 * ceil32(stor4[arg1].field_1)]), 
}

function tokenAddressById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= totalTokens:
        revert with 0, 'token is not known'
    if stor5[arg1].field_0:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_0:
            if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor5[arg1].field_1:
                if 31 < stor5[arg1].field_1:
                    mem[128] = stor5[arg1].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5[arg1].field_1), data=mem[128 len ceil32(stor5[arg1].field_1)])
                mem[128] = 256 * stor5[arg1].field_8
        else:
            if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor5[arg1].field_1:
                if 31 < stor5[arg1].field_1:
                    mem[128] = stor5[arg1].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5[arg1].field_1), data=mem[128 len ceil32(stor5[arg1].field_1)])
                mem[128] = 256 * stor5[arg1].field_8
        mem[ceil32(stor5[arg1].field_1) + 192 len ceil32(stor5[arg1].field_1)] = mem[128 len ceil32(stor5[arg1].field_1)]
        if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
            mem[ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5[arg1].field_1), data=mem[128 len ceil32(stor5[arg1].field_1)], mem[(2 * ceil32(stor5[arg1].field_1)) + 192 len 2 * ceil32(stor5[arg1].field_1)]), 
    if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor5[arg1].field_0:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_1:
            if 31 < stor5[arg1].field_1:
                mem[128] = stor5[arg1].field_0
                idx = 128
                s = 0
                while stor5[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1].field_0, data=mem[128 len ceil32(stor5[arg1].field_1)])
            mem[128] = 256 * stor5[arg1].field_8
    else:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_1:
            if 31 < stor5[arg1].field_1:
                mem[128] = stor5[arg1].field_0
                idx = 128
                s = 0
                while stor5[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1].field_0, data=mem[128 len ceil32(stor5[arg1].field_1)])
            mem[128] = 256 * stor5[arg1].field_8
    mem[ceil32(stor5[arg1].field_1) + 192 len ceil32(stor5[arg1].field_1)] = mem[128 len ceil32(stor5[arg1].field_1)]
    if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
        mem[ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 192] = 0
    return Array(len=stor5[arg1].field_0, data=mem[128 len ceil32(stor5[arg1].field_1)], mem[(2 * ceil32(stor5[arg1].field_1)) + 192 len 2 * ceil32(stor5[arg1].field_1)]), 
}

function sub_d41ebce1(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if not stor3[address(msg.sender)]:
        revert with 0, 'not allowed to open'
    if not stor7[call.data[cd[4] + 36 len ('cd', 4).length]][call.data[cd[36] + 36 len ('cd', 36).length]]:
        if stor4[stor8].field_0:
            if stor4[stor8].field_0 == stor4[stor8].field_1 < 32:
                revert with 'NH{q', 34
            if not ('cd', 4).length:
                stor4[stor8].field_0 = 0
                idx = 0
                while stor4[stor8].field_1 + 31 / 32 > idx:
                    stor4[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor4[stor8].field_0 = (2 * ('cd', 4).length) + 1
                s = 0
                idx = cd[4] + 36
                while cd[4] + ('cd', 4).length + 36 > idx:
                    stor4[stor8][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
                while stor4[stor8].field_1 + 31 / 32 > idx:
                    stor4[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor4[stor8].field_0 == stor4[stor8].field_1 < 32:
                revert with 'NH{q', 34
            if not ('cd', 4).length:
                stor4[stor8].field_0 = 0
                idx = 0
                while stor4[stor8].field_1 + 31 / 32 > idx:
                    stor4[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor4[stor8].field_0 = (2 * ('cd', 4).length) + 1
                s = 0
                idx = cd[4] + 36
                while cd[4] + ('cd', 4).length + 36 > idx:
                    stor4[stor8][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
                while stor4[stor8].field_1 + 31 / 32 > idx:
                    stor4[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        if stor5[stor8].field_0:
            if stor5[stor8].field_0 == stor5[stor8].field_1 < 32:
                revert with 'NH{q', 34
            if not ('cd', 36).length:
                stor5[stor8].field_0 = 0
                idx = 0
                while stor5[stor8].field_1 + 31 / 32 > idx:
                    stor5[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor5[stor8].field_0 = (2 * ('cd', 36).length) + 1
                s = 0
                idx = cd[36] + 36
                while cd[36] + ('cd', 36).length + 36 > idx:
                    stor5[stor8][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                while stor5[stor8].field_1 + 31 / 32 > idx:
                    stor5[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor5[stor8].field_0 == stor5[stor8].field_1 < 32:
                revert with 'NH{q', 34
            if not ('cd', 36).length:
                stor5[stor8].field_0 = 0
                idx = 0
                while stor5[stor8].field_1 + 31 / 32 > idx:
                    stor5[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor5[stor8].field_0 = (2 * ('cd', 36).length) + 1
                s = 0
                idx = cd[36] + 36
                while cd[36] + ('cd', 36).length + 36 > idx:
                    stor5[stor8][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                while stor5[stor8].field_1 + 31 / 32 > idx:
                    stor5[stor8][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        sub_b30b3245[call.data[cd[4] + 36 len ('cd', 4).length]][call.data[cd[36] + 36 len ('cd', 36).length]] = totalTokens
        stor7[call.data[cd[4] + 36 len ('cd', 4).length]][call.data[cd[36] + 36 len ('cd', 36).length]] = 1
        if totalTokens == -1:
            revert with 'NH{q', 17
        totalTokens++
}

function tokenChainAddressById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= totalTokens:
        revert with 0, 'token is not known'
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_0:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_1:
                if 31 >= stor4[arg1].field_1:
                    mem[128] = 256 * stor4[arg1].field_8
                else:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_1:
                if 31 >= stor4[arg1].field_1:
                    mem[128] = 256 * stor4[arg1].field_8
                else:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor5[arg1].field_0:
            if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor5[arg1].field_0:
                if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor5[arg1].field_1:
                    if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                        mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
                    if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                        mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
                else:
                    if 31 >= stor5[arg1].field_1:
                        mem[ceil32(stor4[arg1].field_1) + 160] = 256 * stor5[arg1].field_8
                    else:
                        mem[ceil32(stor4[arg1].field_1) + 160] = stor5[arg1].field_0
                        idx = ceil32(stor4[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor4[arg1].field_1) + stor5[arg1].field_1 + 128 > idx:
                            mem[idx + 32] = stor5[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                        mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
                    if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                        mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
            else:
                if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor5[arg1].field_1:
                    if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                        mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
                    if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                        mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
                else:
                    if 31 >= stor5[arg1].field_1:
                        mem[ceil32(stor4[arg1].field_1) + 160] = 256 * stor5[arg1].field_8
                    else:
                        mem[ceil32(stor4[arg1].field_1) + 160] = stor5[arg1].field_0
                        idx = ceil32(stor4[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor4[arg1].field_1) + stor5[arg1].field_1 + 128 > idx:
                            mem[idx + 32] = stor5[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                        mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
                    if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                        mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
            return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)], 2 * Mask(256, -1, stor5[arg1].field_1), mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]), 
                   ceil32(stor4[arg1].field_1) + 96
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_0:
            if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if not stor5[arg1].field_1:
                if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                    mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
                if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
            else:
                if 31 >= stor5[arg1].field_1:
                    mem[ceil32(stor4[arg1].field_1) + 160] = 256 * stor5[arg1].field_8
                else:
                    mem[ceil32(stor4[arg1].field_1) + 160] = stor5[arg1].field_0
                    idx = ceil32(stor4[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor4[arg1].field_1) + stor5[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                    mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
                if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
        else:
            if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if not stor5[arg1].field_1:
                if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                    mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
                if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
            else:
                if 31 >= stor5[arg1].field_1:
                    mem[ceil32(stor4[arg1].field_1) + 160] = 256 * stor5[arg1].field_8
                else:
                    mem[ceil32(stor4[arg1].field_1) + 160] = stor5[arg1].field_0
                    idx = ceil32(stor4[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor4[arg1].field_1) + stor5[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                    mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
                if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
        return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)], stor5[arg1].field_0, mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]), 
               ceil32(stor4[arg1].field_1) + 96
    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_1:
            if 31 >= stor4[arg1].field_1:
                mem[128] = 256 * stor4[arg1].field_8
            else:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_1:
            if 31 >= stor4[arg1].field_1:
                mem[128] = 256 * stor4[arg1].field_8
            else:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor5[arg1].field_0:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_0:
            if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if not stor5[arg1].field_1:
                if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                    mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
                if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
            else:
                if 31 >= stor5[arg1].field_1:
                    mem[ceil32(stor4[arg1].field_1) + 160] = 256 * stor5[arg1].field_8
                else:
                    mem[ceil32(stor4[arg1].field_1) + 160] = stor5[arg1].field_0
                    idx = ceil32(stor4[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor4[arg1].field_1) + stor5[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                    mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
                if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
        else:
            if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if not stor5[arg1].field_1:
                if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                    mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
                if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
            else:
                if 31 >= stor5[arg1].field_1:
                    mem[ceil32(stor4[arg1].field_1) + 160] = 256 * stor5[arg1].field_8
                else:
                    mem[ceil32(stor4[arg1].field_1) + 160] = stor5[arg1].field_0
                    idx = ceil32(stor4[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor4[arg1].field_1) + stor5[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                    mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
                if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                    mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
        return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)], 2 * Mask(256, -1, stor5[arg1].field_1), mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]), 
               ceil32(stor4[arg1].field_1) + 96
    if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor5[arg1].field_0:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not stor5[arg1].field_1:
            if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
            mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
            mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
            if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
        else:
            if 31 >= stor5[arg1].field_1:
                mem[ceil32(stor4[arg1].field_1) + 160] = 256 * stor5[arg1].field_8
            else:
                mem[ceil32(stor4[arg1].field_1) + 160] = stor5[arg1].field_0
                idx = ceil32(stor4[arg1].field_1) + 160
                s = 0
                while ceil32(stor4[arg1].field_1) + stor5[arg1].field_1 + 128 > idx:
                    mem[idx + 32] = stor5[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
            mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
            mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
            if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
    else:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not stor5[arg1].field_1:
            if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
            mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
            mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
            if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
        else:
            if 31 >= stor5[arg1].field_1:
                mem[ceil32(stor4[arg1].field_1) + 160] = 256 * stor5[arg1].field_8
            else:
                mem[ceil32(stor4[arg1].field_1) + 160] = stor5[arg1].field_0
                idx = ceil32(stor4[arg1].field_1) + 160
                s = 0
                while ceil32(stor4[arg1].field_1) + stor5[arg1].field_1 + 128 > idx:
                    mem[idx + 32] = stor5[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
                mem[ceil32(stor4[arg1].field_1) + ceil32(stor5[arg1].field_1) + stor4[arg1].field_1 + 256] = 0
            mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 256] = stor5[arg1].field_1
            mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + 288 len ceil32(stor5[arg1].field_1)] = mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]
            if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
                mem[(2 * ceil32(stor4[arg1].field_1)) + ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 288] = 0
    return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)], stor5[arg1].field_0, mem[ceil32(stor4[arg1].field_1) + 160 len ceil32(stor5[arg1].field_1)]), 
           ceil32(stor4[arg1].field_1) + 96
}



}
