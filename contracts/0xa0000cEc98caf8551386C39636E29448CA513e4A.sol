contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x209f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


mapping of struct roleAdmin;
array of struct roleMember;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
array of struct stor4;
uint8 stor5;
address stor5;
uint256 stor6;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function paused() payable {
    return bool(uint8(stor5))
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor3[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 and stor6 > -1 / arg2:
        revert with 0, 17
    return address(stor5), arg2 * stor6 / 10000
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor3[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function pause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe455243313135355072657365744d696e7465725061757365723a206d757374,
                    'have pauser role to pause'
    if uint8(stor5):
        revert with 0, 'Pausable: paused'
    uint8(stor5) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0xfe455243313135355072657365744d696e7465725061757365723a206d757374,
                    'have pauser role to unpause'
    if not uint8(stor5):
        revert with 0, 'Pausable: not paused'
    uint8(stor5) = 0
    emit Unpaused(msg.sender);
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg1 != msg.sender:
        if not stor3[address(arg1)][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if uint8(stor5):
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    if balanceOf[arg2][address(arg1)] < arg3:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    require ext_code.size(this.address)
    staticcall this.address.supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function setUri(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[0x209f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(msg.sender)].field_0:
        revert with 0, 32, 62, 0xfe455243313135355072657365744d696e7465725061757365723a206d757374, 'have minter role to change uri'
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor3[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if uint8(stor5):
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][arg2] > !arg4:
        revert with 0, 17
    balanceOf[arg3][arg2] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not roleAdmin[0x209f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(msg.sender)].field_0:
        revert with 0, 32, 56, 0xfe455243313135355072657365744d696e7465725061757365723a206d757374, 'have minter role to mint'
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if uint8(stor5):
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    if balanceOf[arg2][address(arg1)] > !arg3:
        revert with 0, 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, arg3, 160, arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 1) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 2)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function burnBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 98 < 97 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg2.length) + 97] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = ceil32(32 * arg2.length) + 129
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1 != msg.sender:
        if not stor3[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg1:
        revert with 0, 'ERC1155: burn from the zero address'
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 0
    if uint8(stor5):
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    idx = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg3.length:
            revert with 0, 50
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 2)
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
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
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
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
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function mintBatch(address arg1, uint256[] arg2, uint256[] arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 98 < 97 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg2.length) + 97] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = ceil32(32 * arg2.length) + 129
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 99 < 98 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len arg4.length] = arg4[all]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + arg4.length + 130] = 0
    mem[0] = msg.sender
    if not roleAdmin[0x209f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(msg.sender)].field_0:
        revert with 0, 32, 56, 0xfe455243313135355072657365744d696e7465725061757365723a206d757374, 'have minter role to mint'
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if uint8(stor5):
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 2)
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99] = 64
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 195 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 195] = arg3.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 227 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
    emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
    if not ext_code.size(arg1):
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 103] = msg.sender
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 135] = 0
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 167] = 160
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 263] = arg2.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 295 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 199] = (32 * arg2.length) + 192
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 295] = arg3.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 327 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 231] = (32 * arg2.length) + (32 * arg3.length) + 224
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + 327] = arg4.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + 359 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
    if ceil32(arg4.length) <= arg4.length:
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length], arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _654 = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _658 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_658)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 131 len ceil32(_658)]
        if ceil32(_658) <= _658:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_658) + 32]
        mem[_658 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_658) + _654 + -mem[64] + 68
    mem[arg4.length + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + 359] = 0
    require ext_code.size(arg1)
    call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length], arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
    if not ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99:
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _655 = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _660 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_660)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 131 len ceil32(_660)]
    if ceil32(_660) <= _660:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_660) + 32]
    mem[_660 + mem[64] + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_660) + _655 + -mem[64] + 68
}



}
