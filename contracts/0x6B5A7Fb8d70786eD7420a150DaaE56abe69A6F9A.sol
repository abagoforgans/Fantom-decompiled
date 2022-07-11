contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#
const DEFAULT_ADMIN_ROLE = 0


mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
mapping of uint256 totalSupply;
mapping of struct roleAdmin;
uint8 stor5;
mapping of struct maxSupply;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function maxSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return maxSupply[arg1].field_512
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalSupply[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (totalSupply[arg1] > 0)
}

function sub_1da5e15f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    stor5 = uint8(bool(arg1))
}

function isMintable(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(maxSupply[arg1].field_0) != 1:
        revert with 0, 'NFT does not exist'
    return (totalSupply[arg1] < maxSupply[arg1].field_512)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xe89341c00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function updateUri(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_7f81d5ad(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    if not arg1:
        revert with 0, 'You cannot use the default 0 as id for tier'
    if bool(maxSupply[arg1].field_0) != 1:
        revert with 0, 'NFT already exists for given ID'
    maxSupply[arg1].field_0 = 1
    maxSupply[arg1].field_256 = arg2
    maxSupply[arg1].field_512 = arg3
    if maxSupply[arg1].field_768:
        if maxSupply[arg1].field_768 == maxSupply[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            maxSupply[arg1][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            maxSupply[arg1].field_768 = 0
            idx = 0
            while maxSupply[arg1].field_769 + 31 / 32 > idx:
                maxSupply[arg1][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if maxSupply[arg1].field_768 == maxSupply[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            maxSupply[arg1][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            maxSupply[arg1].field_768 = 0
            idx = 0
            while maxSupply[arg1].field_769 + 31 / 32 > idx:
                maxSupply[arg1][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][address(arg2)] > -arg4 - 1:
        revert with 'NH{q', 17
    balanceOf[arg3][address(arg2)] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2) > 0:
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

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    if bool(maxSupply[arg2].field_0) != 1:
        revert with 0, 'NFT does not exist'
    if totalSupply[arg2] < maxSupply[arg2].field_512 != 1:
        revert with 0, 'NFT no longer mintable'
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    mem[ceil32(arg4.length) + 128] = 1
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, arg3, 160, arg4.length, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if totalSupply[arg2] > -arg3 - 1:
        revert with 'NH{q', 17
    totalSupply[arg2] += arg3
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

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
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
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + floor32(arg1.length) + 129], 0)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + floor32(arg2.length) + 130] = balanceOf[mem[(32 * idx) + floor32(arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length])
}

function sub_9e23e983(?) payable {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + 98 > test266151307() or floor32(arg4.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg3.length) + 97] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = floor32(arg3.length) + 129
    while idx < arg4.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307() or ceil32(ceil32(arg5.length)) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(arg3.length) + floor32(arg4.length) + 98] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[floor32(arg3.length) + floor32(arg4.length) + 130 len arg5.length] = arg5[all]
    mem[floor32(arg3.length) + floor32(arg4.length) + arg5.length + 130] = 0
    if arg1 == msg.sender:
        if arg3.length != arg4.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 'NH{q', 50
            if idx >= arg4.length:
                revert with 'NH{q', 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg3.length) + 129]
            mem[0] = arg2
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > -mem[(32 * idx) + floor32(arg3.length) + 129] - 1:
                revert with 'NH{q', 17
            balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + floor32(arg3.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 163] = arg3.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 131] = (32 * arg3.length) + 96
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
        emit TransferBatch(Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len (32 * arg3.length) + (32 * arg4.length) + 32]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if ext_code.size(arg2) <= 0:
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
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
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
                revert with 'NH{q', 65
            mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _1245 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1257 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_1257)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1257)]
            if ceil32(_1257) <= _1257:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1257) + 32]
            mem[mem[64] + _1257 + 68] = 0
            revert with memory
              from mem[64]
               len _1245 + ceil32(_1257) + -mem[64] + 68
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
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
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
            revert with 'NH{q', 65
        mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1250 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1264 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1264)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1264)]
        if ceil32(_1264) <= _1264:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1264) + 32]
        mem[mem[64] + _1264 + 68] = 0
        revert with memory
          from mem[64]
           len _1250 + ceil32(_1264) + -mem[64] + 68
    mem[0] = msg.sender
    if not stor1[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC1155: transfer caller is not owner nor approved'
    if arg3.length != arg4.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    idx = 0
    while idx < arg3.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg4.length:
            revert with 'NH{q', 50
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg3.length) + 129]:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg3.length) + 129]
        mem[0] = arg2
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > -mem[(32 * idx) + floor32(arg3.length) + 129] - 1:
            revert with 'NH{q', 17
        balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + floor32(arg3.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 163] = arg3.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 131] = (32 * arg3.length) + 96
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
    emit TransferBatch(Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len (32 * arg3.length) + (32 * arg4.length) + 32]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
    if ext_code.size(arg2) <= 0:
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
    if ceil32(arg5.length) <= arg5.length:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
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
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
            revert with 'NH{q', 65
        mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1247 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1260 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1260)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1260)]
        if ceil32(_1260) <= _1260:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1260) + 32]
        mem[mem[64] + _1260 + 68] = 0
        revert with memory
          from mem[64]
           len _1247 + ceil32(_1260) + -mem[64] + 68
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
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
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1252 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1267 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_1267)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1267)]
    if ceil32(_1267) <= _1267:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1267) + 32]
    mem[mem[64] + _1267 + 68] = 0
    revert with memory
      from mem[64]
       len _1252 + ceil32(_1267) + -mem[64] + 68
}



}
