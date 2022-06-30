contract main {




// =====================  Runtime code  =====================


const ADMIN_ROLE = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775

const DEFAULT_ADMIN_ROLE = 0


mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
mapping of uint256 totalSupply;
mapping of struct roleAdmin;
uint256 sub_44d5989d;

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

function sub_44d5989d(?) payable {
    return sub_44d5989d
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
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
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xe89341c00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) != 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
            return True
        if Mask(32, 224, arg1) == 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
            return True
        if Mask(32, 224, arg1) == 0xe89341c00000000000000000000000000000000000000000000000000000000:
            return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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

function createNFT() payable {
    if uint8(roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0):
        sub_44d5989d++
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
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

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0):
        if arg2 >= sub_44d5989d:
            revert with 0, 'tokenId is not created yet.'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        if balanceOf[arg2][address(arg1)] < arg3:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[arg2][address(arg1)] -= arg3
        emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
        if totalSupply[arg2] < arg3:
            revert with 'NH{q', 17
        totalSupply[arg2] -= arg3
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if uint8(roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0):
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor2.length = 0
                idx = 0
                while uint255(stor2.length.field_1) + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor2.length = 0
                idx = 0
                while stor2.length.field_1 % 128 + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(ceil32(arg1.length)) + 129 len 42] = call.data[calldata.size len 42]
    mem[ceil32(ceil32(arg1.length)) + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg1.length)) + 225 len 66] = call.data[calldata.size len 66]
    mem[ceil32(ceil32(arg1.length)) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[ceil32(ceil32(arg1.length)) + 353] = 'AccessControl: account '
    mem[ceil32(ceil32(arg1.length)) + 376 len 64] = 0, mem[ceil32(ceil32(arg1.length)) + 130 len 63]
    mem[ceil32(ceil32(arg1.length)) + 418] = ' is missing role '
    mem[ceil32(ceil32(arg1.length)) + 435 len 96] = 0, mem[ceil32(ceil32(arg1.length)) + 226 len 95]
    mem[ceil32(ceil32(arg1.length)) + 501] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg1.length)) + 505] = 32
    mem[ceil32(ceil32(arg1.length)) + 537] = mem[ceil32(ceil32(arg1.length)) + 321]
    mem[ceil32(ceil32(arg1.length)) + 569 len ceil32(mem[ceil32(ceil32(arg1.length)) + 321])] = mem[ceil32(ceil32(arg1.length)) + 353 len ceil32(mem[ceil32(ceil32(arg1.length)) + 321])]
    if ceil32(mem[ceil32(ceil32(arg1.length)) + 321]) > mem[ceil32(ceil32(arg1.length)) + 321]:
        mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 321] + 569] = 0
    revert with 0, 
                32,
                mem[ceil32(ceil32(arg1.length)) + 321],
                mem[ceil32(ceil32(arg1.length)) + 569 len ceil32(mem[ceil32(ceil32(arg1.length)) + 321])]
}

function getBaseURI() payable {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor2.length.field_1):
                if 31 < uint255(stor2.length.field_1):
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor2.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1 % 128:
                if 31 < stor2.length.field_1 % 128:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length.field_1)) + 192 len ceil32(uint255(stor2.length.field_1))] = mem[128 len ceil32(uint255(stor2.length.field_1))]
        if ceil32(uint255(stor2.length.field_1)) > uint255(stor2.length.field_1):
            mem[ceil32(uint255(stor2.length.field_1)) + uint255(stor2.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))], mem[(2 * ceil32(uint255(stor2.length.field_1))) + 192 len 2 * ceil32(uint255(stor2.length.field_1))]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor2.length.field_1):
            if 31 < uint255(stor2.length.field_1):
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while uint255(stor2.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1 % 128:
            if 31 < stor2.length.field_1 % 128:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    mem[ceil32(stor2.length.field_1 % 128) + 192 len ceil32(stor2.length.field_1 % 128)] = mem[128 len ceil32(stor2.length.field_1 % 128)]
    if ceil32(stor2.length.field_1 % 128) > stor2.length.field_1 % 128:
        mem[ceil32(stor2.length.field_1 % 128) + stor2.length.field_1 % 128 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)], mem[(2 * ceil32(stor2.length.field_1 % 128)) + 192 len 2 * ceil32(stor2.length.field_1 % 128)]), 
}

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    if uint8(roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0):
        if arg2 >= sub_44d5989d:
            revert with 0, 'tokenId is not created yet.'
        if not arg1:
            revert with 0, 'ERC1155: mint to the zero address'
        if balanceOf[arg2][address(arg1)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[arg2][address(arg1)] += arg3
        emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
        if ext_code.size(arg1) > 0:
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
        if totalSupply[arg2] > -arg3 - 1:
            revert with 'NH{q', 17
        totalSupply[arg2] += arg3
    mem[ceil32(ceil32(arg4.length)) + 129 len 42] = call.data[calldata.size len 42]
    mem[ceil32(ceil32(arg4.length)) + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + ceil32(ceil32(arg4.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg4.length)) + 225 len 66] = call.data[calldata.size len 66]
    mem[ceil32(ceil32(arg4.length)) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + ceil32(ceil32(arg4.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[ceil32(ceil32(arg4.length)) + 353] = 'AccessControl: account '
    mem[ceil32(ceil32(arg4.length)) + 376 len 64] = 0, mem[ceil32(ceil32(arg4.length)) + 130 len 63]
    mem[ceil32(ceil32(arg4.length)) + 418] = ' is missing role '
    mem[ceil32(ceil32(arg4.length)) + 435 len 96] = 0, mem[ceil32(ceil32(arg4.length)) + 226 len 95]
    mem[ceil32(ceil32(arg4.length)) + 501] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg4.length)) + 505] = 32
    mem[ceil32(ceil32(arg4.length)) + 537] = mem[ceil32(ceil32(arg4.length)) + 321]
    mem[ceil32(ceil32(arg4.length)) + 569 len ceil32(mem[ceil32(ceil32(arg4.length)) + 321])] = mem[ceil32(ceil32(arg4.length)) + 353 len ceil32(mem[ceil32(ceil32(arg4.length)) + 321])]
    if ceil32(mem[ceil32(ceil32(arg4.length)) + 321]) > mem[ceil32(ceil32(arg4.length)) + 321]:
        mem[ceil32(ceil32(arg4.length)) + mem[ceil32(ceil32(arg4.length)) + 321] + 569] = 0
    revert with 0, 
                32,
                mem[ceil32(ceil32(arg4.length)) + 321],
                mem[ceil32(ceil32(arg4.length)) + 569 len ceil32(mem[ceil32(ceil32(arg4.length)) + 321])]
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

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_44d5989d:
        revert with 0, 'tokenId is not created yet.'
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor2.length.field_1) <= 0:
            return ''
        if not arg1:
            mem[96] = 1
            mem[128] = '0'
            if bool(stor2.length):
                if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor2.length):
                    mem[192] = Mask(248, 8, stor2.length)
                else:
                    if bool(stor2.length) != 1:
                        mem[64] = 6
                        _260 = mem[160]
                        mem[38] = mem[160]
                        mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_260) > _260:
                            mem[_260 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_260) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < uint255(stor2.length.field_1):
                        mem[idx + 192] = stor2[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[uint255(stor2.length.field_1) + 192] = '0'
                mem[uint255(stor2.length.field_1) + 193] = '.json'
                mem[uint255(stor2.length.field_1) + 198] = 32
                mem[uint255(stor2.length.field_1) + 230] = mem[160]
                mem[uint255(stor2.length.field_1) + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[uint255(stor2.length.field_1) + mem[160] + 262] = 0
                return Array(len=mem[160], data=mem[uint255(stor2.length.field_1) + 262 len ceil32(mem[160])])
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor2.length):
                mem[192] = Mask(248, 8, stor2.length)
            else:
                if bool(stor2.length) != 1:
                    mem[64] = 6
                    _262 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_262) > _262:
                        mem[_262 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_262) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor2.length.field_1 % 128:
                    mem[idx + 192] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor2.length.field_1 % 128 + 192] = '0'
            mem[stor2.length.field_1 % 128 + 193] = '.json'
            mem[stor2.length.field_1 % 128 + 198] = 32
            mem[stor2.length.field_1 % 128 + 230] = mem[160]
            mem[stor2.length.field_1 % 128 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor2.length.field_1 % 128 + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[stor2.length.field_1 % 128 + 262 len ceil32(mem[160])])
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _731 = mem[64]
            if bool(stor2.length):
                if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor2.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                    _791 = mem[96]
                    mem[mem[64] + uint255(stor2.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[64] + uint255(stor2.length.field_1) + mem[96] + 32] = '.json'
                    if ceil32(mem[96]) <= mem[96]:
                        _1211 = mem[64]
                        mem[64] = _731 + uint255(stor2.length.field_1) + _791 + 37
                        mem[_731 + uint255(stor2.length.field_1) + _791 + 37] = 32
                        _1283 = mem[_1211]
                        mem[_731 + uint255(stor2.length.field_1) + _791 + 69] = mem[_1211]
                        mem[_731 + uint255(stor2.length.field_1) + _791 + 101 len ceil32(_1283)] = mem[_1211 + 32 len ceil32(_1283)]
                        if ceil32(_1283) > _1283:
                            mem[_731 + uint255(stor2.length.field_1) + _791 + _1283 + 101] = 0
                        return 32, mem[_731 + uint255(stor2.length.field_1) + _791 + 69 len ceil32(_1283) + 32]
                    _1235 = mem[64]
                    mem[64] = _731 + uint255(stor2.length.field_1) + _791 + 37
                    mem[_731 + uint255(stor2.length.field_1) + _791 + 37] = 32
                    _1299 = mem[_1235]
                    mem[_731 + uint255(stor2.length.field_1) + _791 + 69] = mem[_1235]
                    mem[_731 + uint255(stor2.length.field_1) + _791 + 101 len ceil32(_1299)] = mem[_1235 + 32 len ceil32(_1299)]
                    if ceil32(_1299) > _1299:
                        mem[_731 + uint255(stor2.length.field_1) + _791 + _1299 + 101] = 0
                    return 32, mem[_731 + uint255(stor2.length.field_1) + _791 + 69 len ceil32(_1299) + 32]
                if bool(stor2.length) != 1:
                    _799 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_799] = '.json'
                    if ceil32(_799) <= _799:
                        _1213 = mem[64]
                        mem[64] = _799 + 5
                        mem[_799 + 5] = 32
                        _1284 = mem[_1213]
                        mem[_799 + 37] = mem[_1213]
                        mem[_799 + 69 len ceil32(_1284)] = mem[_1213 + 32 len ceil32(_1284)]
                        if ceil32(_1284) > _1284:
                            mem[_799 + _1284 + 69] = 0
                        return 32, mem[_799 + 37 len ceil32(_1284) + 32]
                    _1236 = mem[64]
                    mem[64] = _799 + 5
                    mem[_799 + 5] = 32
                    _1300 = mem[_1236]
                    mem[_799 + 37] = mem[_1236]
                    mem[_799 + 69 len ceil32(_1300)] = mem[_1236 + 32 len ceil32(_1300)]
                    if ceil32(_1300) > _1300:
                        mem[_799 + _1300 + 69] = 0
                    return 32, mem[_799 + 37 len ceil32(_1300) + 32]
                mem[0] = 2
                idx = 0
                s = 0
                while idx < uint255(stor2.length.field_1):
                    mem[_731 + idx + 32] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1187 = mem[96]
                mem[_731 + uint255(stor2.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_731 + uint255(stor2.length.field_1) + _1187 + 32] = '.json'
                if ceil32(_1187) <= _1187:
                    _1611 = mem[64]
                    mem[64] = _731 + uint255(stor2.length.field_1) + _1187 + 37
                    mem[_731 + uint255(stor2.length.field_1) + _1187 + 37] = 32
                    _1643 = mem[_1611]
                    mem[_731 + uint255(stor2.length.field_1) + _1187 + 69] = mem[_1611]
                    mem[_731 + uint255(stor2.length.field_1) + _1187 + 101 len ceil32(_1643)] = mem[_1611 + 32 len ceil32(_1643)]
                    if ceil32(_1643) > _1643:
                        mem[_731 + uint255(stor2.length.field_1) + _1187 + _1643 + 101] = 0
                    return 32, mem[_731 + uint255(stor2.length.field_1) + _1187 + 69 len ceil32(_1643) + 32]
                _1619 = mem[64]
                mem[64] = _731 + uint255(stor2.length.field_1) + _1187 + 37
                mem[_731 + uint255(stor2.length.field_1) + _1187 + 37] = 32
                _1651 = mem[_1619]
                mem[_731 + uint255(stor2.length.field_1) + _1187 + 69] = mem[_1619]
                mem[_731 + uint255(stor2.length.field_1) + _1187 + 101 len ceil32(_1651)] = mem[_1619 + 32 len ceil32(_1651)]
                if ceil32(_1651) > _1651:
                    mem[_731 + uint255(stor2.length.field_1) + _1187 + _1651 + 101] = 0
                return 32, mem[_731 + uint255(stor2.length.field_1) + _1187 + 69 len ceil32(_1651) + 32]
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor2.length):
                mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                _800 = mem[96]
                mem[mem[64] + stor2.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor2.length.field_1 % 128 + mem[96] + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _1214 = mem[64]
                    mem[64] = _731 + stor2.length.field_1 % 128 + _800 + 37
                    mem[_731 + stor2.length.field_1 % 128 + _800 + 37] = 32
                    _1285 = mem[_1214]
                    mem[_731 + stor2.length.field_1 % 128 + _800 + 69] = mem[_1214]
                    mem[_731 + stor2.length.field_1 % 128 + _800 + 101 len ceil32(_1285)] = mem[_1214 + 32 len ceil32(_1285)]
                    if ceil32(_1285) > _1285:
                        mem[_731 + stor2.length.field_1 % 128 + _800 + _1285 + 101] = 0
                    return 32, mem[_731 + stor2.length.field_1 % 128 + _800 + 69 len ceil32(_1285) + 32]
                _1237 = mem[64]
                mem[64] = _731 + stor2.length.field_1 % 128 + _800 + 37
                mem[_731 + stor2.length.field_1 % 128 + _800 + 37] = 32
                _1301 = mem[_1237]
                mem[_731 + stor2.length.field_1 % 128 + _800 + 69] = mem[_1237]
                mem[_731 + stor2.length.field_1 % 128 + _800 + 101 len ceil32(_1301)] = mem[_1237 + 32 len ceil32(_1301)]
                if ceil32(_1301) > _1301:
                    mem[_731 + stor2.length.field_1 % 128 + _800 + _1301 + 101] = 0
                return 32, mem[_731 + stor2.length.field_1 % 128 + _800 + 69 len ceil32(_1301) + 32]
            if bool(stor2.length) != 1:
                _811 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_811] = '.json'
                if ceil32(_811) <= _811:
                    _1216 = mem[64]
                    mem[64] = _811 + 5
                    mem[_811 + 5] = 32
                    _1286 = mem[_1216]
                    mem[_811 + 37] = mem[_1216]
                    mem[_811 + 69 len ceil32(_1286)] = mem[_1216 + 32 len ceil32(_1286)]
                    if ceil32(_1286) > _1286:
                        mem[_811 + _1286 + 69] = 0
                    return 32, mem[_811 + 37 len ceil32(_1286) + 32]
                _1238 = mem[64]
                mem[64] = _811 + 5
                mem[_811 + 5] = 32
                _1302 = mem[_1238]
                mem[_811 + 37] = mem[_1238]
                mem[_811 + 69 len ceil32(_1302)] = mem[_1238 + 32 len ceil32(_1302)]
                if ceil32(_1302) > _1302:
                    mem[_811 + _1302 + 69] = 0
                return 32, mem[_811 + 37 len ceil32(_1302) + 32]
            mem[0] = 2
            idx = 0
            s = 0
            while idx < stor2.length.field_1 % 128:
                mem[_731 + idx + 32] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1188 = mem[96]
            mem[_731 + stor2.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_731 + stor2.length.field_1 % 128 + _1188 + 32] = '.json'
            if ceil32(_1188) <= _1188:
                _1612 = mem[64]
                mem[64] = _731 + stor2.length.field_1 % 128 + _1188 + 37
                mem[_731 + stor2.length.field_1 % 128 + _1188 + 37] = 32
                _1644 = mem[_1612]
                mem[_731 + stor2.length.field_1 % 128 + _1188 + 69] = mem[_1612]
                mem[_731 + stor2.length.field_1 % 128 + _1188 + 101 len ceil32(_1644)] = mem[_1612 + 32 len ceil32(_1644)]
                if ceil32(_1644) > _1644:
                    mem[_731 + stor2.length.field_1 % 128 + _1188 + _1644 + 101] = 0
                return 32, mem[_731 + stor2.length.field_1 % 128 + _1188 + 69 len ceil32(_1644) + 32]
            _1620 = mem[64]
            mem[64] = _731 + stor2.length.field_1 % 128 + _1188 + 37
            mem[_731 + stor2.length.field_1 % 128 + _1188 + 37] = 32
            _1652 = mem[_1620]
            mem[_731 + stor2.length.field_1 % 128 + _1188 + 69] = mem[_1620]
            mem[_731 + stor2.length.field_1 % 128 + _1188 + 101 len ceil32(_1652)] = mem[_1620 + 32 len ceil32(_1652)]
            if ceil32(_1652) > _1652:
                mem[_731 + stor2.length.field_1 % 128 + _1188 + _1652 + 101] = 0
            return 32, mem[_731 + stor2.length.field_1 % 128 + _1188 + 69 len ceil32(_1652) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _732 = mem[64]
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor2.length):
                mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                _792 = mem[96]
                mem[mem[64] + uint255(stor2.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + uint255(stor2.length.field_1) + mem[96] + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _1217 = mem[64]
                    mem[64] = _732 + uint255(stor2.length.field_1) + _792 + 37
                    mem[_732 + uint255(stor2.length.field_1) + _792 + 37] = 32
                    _1287 = mem[_1217]
                    mem[_732 + uint255(stor2.length.field_1) + _792 + 69] = mem[_1217]
                    mem[_732 + uint255(stor2.length.field_1) + _792 + 101 len ceil32(_1287)] = mem[_1217 + 32 len ceil32(_1287)]
                    if ceil32(_1287) > _1287:
                        mem[_732 + uint255(stor2.length.field_1) + _792 + _1287 + 101] = 0
                    return 32, mem[_732 + uint255(stor2.length.field_1) + _792 + 69 len ceil32(_1287) + 32]
                _1239 = mem[64]
                mem[64] = _732 + uint255(stor2.length.field_1) + _792 + 37
                mem[_732 + uint255(stor2.length.field_1) + _792 + 37] = 32
                _1303 = mem[_1239]
                mem[_732 + uint255(stor2.length.field_1) + _792 + 69] = mem[_1239]
                mem[_732 + uint255(stor2.length.field_1) + _792 + 101 len ceil32(_1303)] = mem[_1239 + 32 len ceil32(_1303)]
                if ceil32(_1303) > _1303:
                    mem[_732 + uint255(stor2.length.field_1) + _792 + _1303 + 101] = 0
                return 32, mem[_732 + uint255(stor2.length.field_1) + _792 + 69 len ceil32(_1303) + 32]
            if bool(stor2.length) != 1:
                _801 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_801] = '.json'
                if ceil32(_801) <= _801:
                    _1219 = mem[64]
                    mem[64] = _801 + 5
                    mem[_801 + 5] = 32
                    _1288 = mem[_1219]
                    mem[_801 + 37] = mem[_1219]
                    mem[_801 + 69 len ceil32(_1288)] = mem[_1219 + 32 len ceil32(_1288)]
                    if ceil32(_1288) > _1288:
                        mem[_801 + _1288 + 69] = 0
                    return 32, mem[_801 + 37 len ceil32(_1288) + 32]
                _1240 = mem[64]
                mem[64] = _801 + 5
                mem[_801 + 5] = 32
                _1304 = mem[_1240]
                mem[_801 + 37] = mem[_1240]
                mem[_801 + 69 len ceil32(_1304)] = mem[_1240 + 32 len ceil32(_1304)]
                if ceil32(_1304) > _1304:
                    mem[_801 + _1304 + 69] = 0
                return 32, mem[_801 + 37 len ceil32(_1304) + 32]
            mem[0] = 2
            idx = 0
            s = 0
            while idx < uint255(stor2.length.field_1):
                mem[_732 + idx + 32] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1189 = mem[96]
            mem[_732 + uint255(stor2.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_732 + uint255(stor2.length.field_1) + _1189 + 32] = '.json'
            if ceil32(_1189) <= _1189:
                _1613 = mem[64]
                mem[64] = _732 + uint255(stor2.length.field_1) + _1189 + 37
                mem[_732 + uint255(stor2.length.field_1) + _1189 + 37] = 32
                _1645 = mem[_1613]
                mem[_732 + uint255(stor2.length.field_1) + _1189 + 69] = mem[_1613]
                mem[_732 + uint255(stor2.length.field_1) + _1189 + 101 len ceil32(_1645)] = mem[_1613 + 32 len ceil32(_1645)]
                if ceil32(_1645) > _1645:
                    mem[_732 + uint255(stor2.length.field_1) + _1189 + _1645 + 101] = 0
                return 32, mem[_732 + uint255(stor2.length.field_1) + _1189 + 69 len ceil32(_1645) + 32]
            _1621 = mem[64]
            mem[64] = _732 + uint255(stor2.length.field_1) + _1189 + 37
            mem[_732 + uint255(stor2.length.field_1) + _1189 + 37] = 32
            _1653 = mem[_1621]
            mem[_732 + uint255(stor2.length.field_1) + _1189 + 69] = mem[_1621]
            mem[_732 + uint255(stor2.length.field_1) + _1189 + 101 len ceil32(_1653)] = mem[_1621 + 32 len ceil32(_1653)]
            if ceil32(_1653) > _1653:
                mem[_732 + uint255(stor2.length.field_1) + _1189 + _1653 + 101] = 0
            return 32, mem[_732 + uint255(stor2.length.field_1) + _1189 + 69 len ceil32(_1653) + 32]
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor2.length):
            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
            _802 = mem[96]
            mem[mem[64] + stor2.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor2.length.field_1 % 128 + mem[96] + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _1220 = mem[64]
                mem[64] = _732 + stor2.length.field_1 % 128 + _802 + 37
                mem[_732 + stor2.length.field_1 % 128 + _802 + 37] = 32
                _1289 = mem[_1220]
                mem[_732 + stor2.length.field_1 % 128 + _802 + 69] = mem[_1220]
                mem[_732 + stor2.length.field_1 % 128 + _802 + 101 len ceil32(_1289)] = mem[_1220 + 32 len ceil32(_1289)]
                if ceil32(_1289) > _1289:
                    mem[_732 + stor2.length.field_1 % 128 + _802 + _1289 + 101] = 0
                return 32, mem[_732 + stor2.length.field_1 % 128 + _802 + 69 len ceil32(_1289) + 32]
            _1241 = mem[64]
            mem[64] = _732 + stor2.length.field_1 % 128 + _802 + 37
            mem[_732 + stor2.length.field_1 % 128 + _802 + 37] = 32
            _1305 = mem[_1241]
            mem[_732 + stor2.length.field_1 % 128 + _802 + 69] = mem[_1241]
            mem[_732 + stor2.length.field_1 % 128 + _802 + 101 len ceil32(_1305)] = mem[_1241 + 32 len ceil32(_1305)]
            if ceil32(_1305) > _1305:
                mem[_732 + stor2.length.field_1 % 128 + _802 + _1305 + 101] = 0
            return 32, mem[_732 + stor2.length.field_1 % 128 + _802 + 69 len ceil32(_1305) + 32]
        if bool(stor2.length) != 1:
            _812 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_812] = '.json'
            if ceil32(_812) <= _812:
                _1222 = mem[64]
                mem[64] = _812 + 5
                mem[_812 + 5] = 32
                _1290 = mem[_1222]
                mem[_812 + 37] = mem[_1222]
                mem[_812 + 69 len ceil32(_1290)] = mem[_1222 + 32 len ceil32(_1290)]
                if ceil32(_1290) > _1290:
                    mem[_812 + _1290 + 69] = 0
                return 32, mem[_812 + 37 len ceil32(_1290) + 32]
            _1242 = mem[64]
            mem[64] = _812 + 5
            mem[_812 + 5] = 32
            _1306 = mem[_1242]
            mem[_812 + 37] = mem[_1242]
            mem[_812 + 69 len ceil32(_1306)] = mem[_1242 + 32 len ceil32(_1306)]
            if ceil32(_1306) > _1306:
                mem[_812 + _1306 + 69] = 0
            return 32, mem[_812 + 37 len ceil32(_1306) + 32]
        mem[0] = 2
        idx = 0
        s = 0
        while idx < stor2.length.field_1 % 128:
            mem[_732 + idx + 32] = stor2[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1190 = mem[96]
        mem[_732 + stor2.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_732 + stor2.length.field_1 % 128 + _1190 + 32] = '.json'
        if ceil32(_1190) <= _1190:
            _1614 = mem[64]
            mem[64] = _732 + stor2.length.field_1 % 128 + _1190 + 37
            mem[_732 + stor2.length.field_1 % 128 + _1190 + 37] = 32
            _1646 = mem[_1614]
            mem[_732 + stor2.length.field_1 % 128 + _1190 + 69] = mem[_1614]
            mem[_732 + stor2.length.field_1 % 128 + _1190 + 101 len ceil32(_1646)] = mem[_1614 + 32 len ceil32(_1646)]
            if ceil32(_1646) > _1646:
                mem[_732 + stor2.length.field_1 % 128 + _1190 + _1646 + 101] = 0
            return 32, mem[_732 + stor2.length.field_1 % 128 + _1190 + 69 len ceil32(_1646) + 32]
        _1622 = mem[64]
        mem[64] = _732 + stor2.length.field_1 % 128 + _1190 + 37
        mem[_732 + stor2.length.field_1 % 128 + _1190 + 37] = 32
        _1654 = mem[_1622]
        mem[_732 + stor2.length.field_1 % 128 + _1190 + 69] = mem[_1622]
        mem[_732 + stor2.length.field_1 % 128 + _1190 + 101 len ceil32(_1654)] = mem[_1622 + 32 len ceil32(_1654)]
        if ceil32(_1654) > _1654:
            mem[_732 + stor2.length.field_1 % 128 + _1190 + _1654 + 101] = 0
        return 32, mem[_732 + stor2.length.field_1 % 128 + _1190 + 69 len ceil32(_1654) + 32]
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if stor2.length.field_1 % 128 <= 0:
        return ''
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor2.length):
                mem[192] = Mask(248, 8, stor2.length)
            else:
                if bool(stor2.length) != 1:
                    mem[64] = 6
                    _264 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_264) > _264:
                        mem[_264 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_264) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < uint255(stor2.length.field_1):
                    mem[idx + 192] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[uint255(stor2.length.field_1) + 192] = '0'
            mem[uint255(stor2.length.field_1) + 193] = '.json'
            mem[uint255(stor2.length.field_1) + 198] = 32
            mem[uint255(stor2.length.field_1) + 230] = mem[160]
            mem[uint255(stor2.length.field_1) + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[uint255(stor2.length.field_1) + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[uint255(stor2.length.field_1) + 262 len ceil32(mem[160])])
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor2.length):
            mem[192] = Mask(248, 8, stor2.length)
        else:
            if bool(stor2.length) != 1:
                mem[64] = 6
                _266 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_266) > _266:
                    mem[_266 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_266) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor2.length.field_1 % 128:
                mem[idx + 192] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor2.length.field_1 % 128 + 192] = '0'
        mem[stor2.length.field_1 % 128 + 193] = '.json'
        mem[stor2.length.field_1 % 128 + 198] = 32
        mem[stor2.length.field_1 % 128 + 230] = mem[160]
        mem[stor2.length.field_1 % 128 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor2.length.field_1 % 128 + mem[160] + 262] = 0
        return Array(len=mem[160], data=mem[stor2.length.field_1 % 128 + 262 len ceil32(mem[160])])
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _733 = mem[64]
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor2.length):
                mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                _795 = mem[96]
                mem[mem[64] + uint255(stor2.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + uint255(stor2.length.field_1) + mem[96] + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _1223 = mem[64]
                    mem[64] = _733 + uint255(stor2.length.field_1) + _795 + 37
                    mem[_733 + uint255(stor2.length.field_1) + _795 + 37] = 32
                    _1291 = mem[_1223]
                    mem[_733 + uint255(stor2.length.field_1) + _795 + 69] = mem[_1223]
                    mem[_733 + uint255(stor2.length.field_1) + _795 + 101 len ceil32(_1291)] = mem[_1223 + 32 len ceil32(_1291)]
                    if ceil32(_1291) > _1291:
                        mem[_733 + uint255(stor2.length.field_1) + _795 + _1291 + 101] = 0
                    return 32, mem[_733 + uint255(stor2.length.field_1) + _795 + 69 len ceil32(_1291) + 32]
                _1243 = mem[64]
                mem[64] = _733 + uint255(stor2.length.field_1) + _795 + 37
                mem[_733 + uint255(stor2.length.field_1) + _795 + 37] = 32
                _1307 = mem[_1243]
                mem[_733 + uint255(stor2.length.field_1) + _795 + 69] = mem[_1243]
                mem[_733 + uint255(stor2.length.field_1) + _795 + 101 len ceil32(_1307)] = mem[_1243 + 32 len ceil32(_1307)]
                if ceil32(_1307) > _1307:
                    mem[_733 + uint255(stor2.length.field_1) + _795 + _1307 + 101] = 0
                return 32, mem[_733 + uint255(stor2.length.field_1) + _795 + 69 len ceil32(_1307) + 32]
            if bool(stor2.length) != 1:
                _805 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_805] = '.json'
                if ceil32(_805) <= _805:
                    _1225 = mem[64]
                    mem[64] = _805 + 5
                    mem[_805 + 5] = 32
                    _1292 = mem[_1225]
                    mem[_805 + 37] = mem[_1225]
                    mem[_805 + 69 len ceil32(_1292)] = mem[_1225 + 32 len ceil32(_1292)]
                    if ceil32(_1292) > _1292:
                        mem[_805 + _1292 + 69] = 0
                    return 32, mem[_805 + 37 len ceil32(_1292) + 32]
                _1244 = mem[64]
                mem[64] = _805 + 5
                mem[_805 + 5] = 32
                _1308 = mem[_1244]
                mem[_805 + 37] = mem[_1244]
                mem[_805 + 69 len ceil32(_1308)] = mem[_1244 + 32 len ceil32(_1308)]
                if ceil32(_1308) > _1308:
                    mem[_805 + _1308 + 69] = 0
                return 32, mem[_805 + 37 len ceil32(_1308) + 32]
            mem[0] = 2
            idx = 0
            s = 0
            while idx < uint255(stor2.length.field_1):
                mem[_733 + idx + 32] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1191 = mem[96]
            mem[_733 + uint255(stor2.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_733 + uint255(stor2.length.field_1) + _1191 + 32] = '.json'
            if ceil32(_1191) <= _1191:
                _1615 = mem[64]
                mem[64] = _733 + uint255(stor2.length.field_1) + _1191 + 37
                mem[_733 + uint255(stor2.length.field_1) + _1191 + 37] = 32
                _1647 = mem[_1615]
                mem[_733 + uint255(stor2.length.field_1) + _1191 + 69] = mem[_1615]
                mem[_733 + uint255(stor2.length.field_1) + _1191 + 101 len ceil32(_1647)] = mem[_1615 + 32 len ceil32(_1647)]
                if ceil32(_1647) > _1647:
                    mem[_733 + uint255(stor2.length.field_1) + _1191 + _1647 + 101] = 0
                return 32, mem[_733 + uint255(stor2.length.field_1) + _1191 + 69 len ceil32(_1647) + 32]
            _1623 = mem[64]
            mem[64] = _733 + uint255(stor2.length.field_1) + _1191 + 37
            mem[_733 + uint255(stor2.length.field_1) + _1191 + 37] = 32
            _1655 = mem[_1623]
            mem[_733 + uint255(stor2.length.field_1) + _1191 + 69] = mem[_1623]
            mem[_733 + uint255(stor2.length.field_1) + _1191 + 101 len ceil32(_1655)] = mem[_1623 + 32 len ceil32(_1655)]
            if ceil32(_1655) > _1655:
                mem[_733 + uint255(stor2.length.field_1) + _1191 + _1655 + 101] = 0
            return 32, mem[_733 + uint255(stor2.length.field_1) + _1191 + 69 len ceil32(_1655) + 32]
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor2.length):
            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
            _806 = mem[96]
            mem[mem[64] + stor2.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor2.length.field_1 % 128 + mem[96] + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _1226 = mem[64]
                mem[64] = _733 + stor2.length.field_1 % 128 + _806 + 37
                mem[_733 + stor2.length.field_1 % 128 + _806 + 37] = 32
                _1293 = mem[_1226]
                mem[_733 + stor2.length.field_1 % 128 + _806 + 69] = mem[_1226]
                mem[_733 + stor2.length.field_1 % 128 + _806 + 101 len ceil32(_1293)] = mem[_1226 + 32 len ceil32(_1293)]
                if ceil32(_1293) > _1293:
                    mem[_733 + stor2.length.field_1 % 128 + _806 + _1293 + 101] = 0
                return 32, mem[_733 + stor2.length.field_1 % 128 + _806 + 69 len ceil32(_1293) + 32]
            _1245 = mem[64]
            mem[64] = _733 + stor2.length.field_1 % 128 + _806 + 37
            mem[_733 + stor2.length.field_1 % 128 + _806 + 37] = 32
            _1309 = mem[_1245]
            mem[_733 + stor2.length.field_1 % 128 + _806 + 69] = mem[_1245]
            mem[_733 + stor2.length.field_1 % 128 + _806 + 101 len ceil32(_1309)] = mem[_1245 + 32 len ceil32(_1309)]
            if ceil32(_1309) > _1309:
                mem[_733 + stor2.length.field_1 % 128 + _806 + _1309 + 101] = 0
            return 32, mem[_733 + stor2.length.field_1 % 128 + _806 + 69 len ceil32(_1309) + 32]
        if bool(stor2.length) != 1:
            _813 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_813] = '.json'
            if ceil32(_813) <= _813:
                _1228 = mem[64]
                mem[64] = _813 + 5
                mem[_813 + 5] = 32
                _1294 = mem[_1228]
                mem[_813 + 37] = mem[_1228]
                mem[_813 + 69 len ceil32(_1294)] = mem[_1228 + 32 len ceil32(_1294)]
                if ceil32(_1294) > _1294:
                    mem[_813 + _1294 + 69] = 0
                return 32, mem[_813 + 37 len ceil32(_1294) + 32]
            _1246 = mem[64]
            mem[64] = _813 + 5
            mem[_813 + 5] = 32
            _1310 = mem[_1246]
            mem[_813 + 37] = mem[_1246]
            mem[_813 + 69 len ceil32(_1310)] = mem[_1246 + 32 len ceil32(_1310)]
            if ceil32(_1310) > _1310:
                mem[_813 + _1310 + 69] = 0
            return 32, mem[_813 + 37 len ceil32(_1310) + 32]
        mem[0] = 2
        idx = 0
        s = 0
        while idx < stor2.length.field_1 % 128:
            mem[_733 + idx + 32] = stor2[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1192 = mem[96]
        mem[_733 + stor2.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_733 + stor2.length.field_1 % 128 + _1192 + 32] = '.json'
        if ceil32(_1192) <= _1192:
            _1616 = mem[64]
            mem[64] = _733 + stor2.length.field_1 % 128 + _1192 + 37
            mem[_733 + stor2.length.field_1 % 128 + _1192 + 37] = 32
            _1648 = mem[_1616]
            mem[_733 + stor2.length.field_1 % 128 + _1192 + 69] = mem[_1616]
            mem[_733 + stor2.length.field_1 % 128 + _1192 + 101 len ceil32(_1648)] = mem[_1616 + 32 len ceil32(_1648)]
            if ceil32(_1648) > _1648:
                mem[_733 + stor2.length.field_1 % 128 + _1192 + _1648 + 101] = 0
            return 32, mem[_733 + stor2.length.field_1 % 128 + _1192 + 69 len ceil32(_1648) + 32]
        _1624 = mem[64]
        mem[64] = _733 + stor2.length.field_1 % 128 + _1192 + 37
        mem[_733 + stor2.length.field_1 % 128 + _1192 + 37] = 32
        _1656 = mem[_1624]
        mem[_733 + stor2.length.field_1 % 128 + _1192 + 69] = mem[_1624]
        mem[_733 + stor2.length.field_1 % 128 + _1192 + 101 len ceil32(_1656)] = mem[_1624 + 32 len ceil32(_1656)]
        if ceil32(_1656) > _1656:
            mem[_733 + stor2.length.field_1 % 128 + _1192 + _1656 + 101] = 0
        return 32, mem[_733 + stor2.length.field_1 % 128 + _1192 + 69 len ceil32(_1656) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _734 = mem[64]
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor2.length):
            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
            _796 = mem[96]
            mem[mem[64] + uint255(stor2.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + uint255(stor2.length.field_1) + mem[96] + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _1229 = mem[64]
                mem[64] = _734 + uint255(stor2.length.field_1) + _796 + 37
                mem[_734 + uint255(stor2.length.field_1) + _796 + 37] = 32
                _1295 = mem[_1229]
                mem[_734 + uint255(stor2.length.field_1) + _796 + 69] = mem[_1229]
                mem[_734 + uint255(stor2.length.field_1) + _796 + 101 len ceil32(_1295)] = mem[_1229 + 32 len ceil32(_1295)]
                if ceil32(_1295) > _1295:
                    mem[_734 + uint255(stor2.length.field_1) + _796 + _1295 + 101] = 0
                return 32, mem[_734 + uint255(stor2.length.field_1) + _796 + 69 len ceil32(_1295) + 32]
            _1247 = mem[64]
            mem[64] = _734 + uint255(stor2.length.field_1) + _796 + 37
            mem[_734 + uint255(stor2.length.field_1) + _796 + 37] = 32
            _1311 = mem[_1247]
            mem[_734 + uint255(stor2.length.field_1) + _796 + 69] = mem[_1247]
            mem[_734 + uint255(stor2.length.field_1) + _796 + 101 len ceil32(_1311)] = mem[_1247 + 32 len ceil32(_1311)]
            if ceil32(_1311) > _1311:
                mem[_734 + uint255(stor2.length.field_1) + _796 + _1311 + 101] = 0
            return 32, mem[_734 + uint255(stor2.length.field_1) + _796 + 69 len ceil32(_1311) + 32]
        if bool(stor2.length) != 1:
            _807 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_807] = '.json'
            if ceil32(_807) <= _807:
                _1231 = mem[64]
                mem[64] = _807 + 5
                mem[_807 + 5] = 32
                _1296 = mem[_1231]
                mem[_807 + 37] = mem[_1231]
                mem[_807 + 69 len ceil32(_1296)] = mem[_1231 + 32 len ceil32(_1296)]
                if ceil32(_1296) > _1296:
                    mem[_807 + _1296 + 69] = 0
                return 32, mem[_807 + 37 len ceil32(_1296) + 32]
            _1248 = mem[64]
            mem[64] = _807 + 5
            mem[_807 + 5] = 32
            _1312 = mem[_1248]
            mem[_807 + 37] = mem[_1248]
            mem[_807 + 69 len ceil32(_1312)] = mem[_1248 + 32 len ceil32(_1312)]
            if ceil32(_1312) > _1312:
                mem[_807 + _1312 + 69] = 0
            return 32, mem[_807 + 37 len ceil32(_1312) + 32]
        mem[0] = 2
        idx = 0
        s = 0
        while idx < uint255(stor2.length.field_1):
            mem[_734 + idx + 32] = stor2[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1193 = mem[96]
        mem[_734 + uint255(stor2.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_734 + uint255(stor2.length.field_1) + _1193 + 32] = '.json'
        if ceil32(_1193) <= _1193:
            _1617 = mem[64]
            mem[64] = _734 + uint255(stor2.length.field_1) + _1193 + 37
            mem[_734 + uint255(stor2.length.field_1) + _1193 + 37] = 32
            _1649 = mem[_1617]
            mem[_734 + uint255(stor2.length.field_1) + _1193 + 69] = mem[_1617]
            mem[_734 + uint255(stor2.length.field_1) + _1193 + 101 len ceil32(_1649)] = mem[_1617 + 32 len ceil32(_1649)]
            if ceil32(_1649) > _1649:
                mem[_734 + uint255(stor2.length.field_1) + _1193 + _1649 + 101] = 0
            return 32, mem[_734 + uint255(stor2.length.field_1) + _1193 + 69 len ceil32(_1649) + 32]
        _1625 = mem[64]
        mem[64] = _734 + uint255(stor2.length.field_1) + _1193 + 37
        mem[_734 + uint255(stor2.length.field_1) + _1193 + 37] = 32
        _1657 = mem[_1625]
        mem[_734 + uint255(stor2.length.field_1) + _1193 + 69] = mem[_1625]
        mem[_734 + uint255(stor2.length.field_1) + _1193 + 101 len ceil32(_1657)] = mem[_1625 + 32 len ceil32(_1657)]
        if ceil32(_1657) > _1657:
            mem[_734 + uint255(stor2.length.field_1) + _1193 + _1657 + 101] = 0
        return 32, mem[_734 + uint255(stor2.length.field_1) + _1193 + 69 len ceil32(_1657) + 32]
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not bool(stor2.length):
        mem[mem[64] + 32] = Mask(248, 8, stor2.length)
        _808 = mem[96]
        mem[mem[64] + stor2.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + stor2.length.field_1 % 128 + mem[96] + 32] = '.json'
        if ceil32(mem[96]) <= mem[96]:
            _1232 = mem[64]
            mem[64] = _734 + stor2.length.field_1 % 128 + _808 + 37
            mem[_734 + stor2.length.field_1 % 128 + _808 + 37] = 32
            _1297 = mem[_1232]
            mem[_734 + stor2.length.field_1 % 128 + _808 + 69] = mem[_1232]
            mem[_734 + stor2.length.field_1 % 128 + _808 + 101 len ceil32(_1297)] = mem[_1232 + 32 len ceil32(_1297)]
            if ceil32(_1297) > _1297:
                mem[_734 + stor2.length.field_1 % 128 + _808 + _1297 + 101] = 0
            return 32, mem[_734 + stor2.length.field_1 % 128 + _808 + 69 len ceil32(_1297) + 32]
        _1249 = mem[64]
        mem[64] = _734 + stor2.length.field_1 % 128 + _808 + 37
        mem[_734 + stor2.length.field_1 % 128 + _808 + 37] = 32
        _1313 = mem[_1249]
        mem[_734 + stor2.length.field_1 % 128 + _808 + 69] = mem[_1249]
        mem[_734 + stor2.length.field_1 % 128 + _808 + 101 len ceil32(_1313)] = mem[_1249 + 32 len ceil32(_1313)]
        if ceil32(_1313) > _1313:
            mem[_734 + stor2.length.field_1 % 128 + _808 + _1313 + 101] = 0
        return 32, mem[_734 + stor2.length.field_1 % 128 + _808 + 69 len ceil32(_1313) + 32]
    if bool(stor2.length) != 1:
        _814 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_814] = '.json'
        if ceil32(_814) <= _814:
            _1234 = mem[64]
            mem[64] = _814 + 5
            mem[_814 + 5] = 32
            _1298 = mem[_1234]
            mem[_814 + 37] = mem[_1234]
            mem[_814 + 69 len ceil32(_1298)] = mem[_1234 + 32 len ceil32(_1298)]
            if ceil32(_1298) > _1298:
                mem[_814 + _1298 + 69] = 0
            return 32, mem[_814 + 37 len ceil32(_1298) + 32]
        _1250 = mem[64]
        mem[64] = _814 + 5
        mem[_814 + 5] = 32
        _1314 = mem[_1250]
        mem[_814 + 37] = mem[_1250]
        mem[_814 + 69 len ceil32(_1314)] = mem[_1250 + 32 len ceil32(_1314)]
        if ceil32(_1314) > _1314:
            mem[_814 + _1314 + 69] = 0
        return 32, mem[_814 + 37 len ceil32(_1314) + 32]
    mem[0] = 2
    idx = 0
    s = 0
    while idx < stor2.length.field_1 % 128:
        mem[_734 + idx + 32] = stor2[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _1194 = mem[96]
    mem[_734 + stor2.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_734 + stor2.length.field_1 % 128 + _1194 + 32] = '.json'
    if ceil32(_1194) <= _1194:
        _1618 = mem[64]
        mem[64] = _734 + stor2.length.field_1 % 128 + _1194 + 37
        mem[_734 + stor2.length.field_1 % 128 + _1194 + 37] = 32
        _1650 = mem[_1618]
        mem[_734 + stor2.length.field_1 % 128 + _1194 + 69] = mem[_1618]
        mem[_734 + stor2.length.field_1 % 128 + _1194 + 101 len ceil32(_1650)] = mem[_1618 + 32 len ceil32(_1650)]
        if ceil32(_1650) > _1650:
            mem[_734 + stor2.length.field_1 % 128 + _1194 + _1650 + 101] = 0
        return 32, mem[_734 + stor2.length.field_1 % 128 + _1194 + 69 len ceil32(_1650) + 32]
    _1626 = mem[64]
    mem[64] = _734 + stor2.length.field_1 % 128 + _1194 + 37
    mem[_734 + stor2.length.field_1 % 128 + _1194 + 37] = 32
    _1658 = mem[_1626]
    mem[_734 + stor2.length.field_1 % 128 + _1194 + 69] = mem[_1626]
    mem[_734 + stor2.length.field_1 % 128 + _1194 + 101 len ceil32(_1658)] = mem[_1626 + 32 len ceil32(_1658)]
    if ceil32(_1658) > _1658:
        mem[_734 + stor2.length.field_1 % 128 + _1194 + _1658 + 101] = 0
    return 32, mem[_734 + stor2.length.field_1 % 128 + _1194 + 69 len ceil32(_1658) + 32]
}

function sub_33497194(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if sub_44d5989d > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_44d5989d
    mem[64] = (32 * sub_44d5989d) + 128
    if not sub_44d5989d:
        if sub_44d5989d > test266151307():
            revert with 'NH{q', 65
        mem[(32 * sub_44d5989d) + 128] = sub_44d5989d
        mem[64] = (64 * sub_44d5989d) + 160
        if not sub_44d5989d:
            idx = 0
            while idx < sub_44d5989d:
                if not idx:
                    _344 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_344] = 1
                    mem[_344 + 32] = '0'
                    _348 = mem[64]
                    if bool(stor2.length):
                        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor2.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                            s = 0
                            while s < 1:
                                mem[_348 + uint255(stor2.length.field_1) + s + 32] = mem[_344 + s + 32]
                                s = s + 32
                                continue 
                            mem[_348 + uint255(stor2.length.field_1) + 33] = '.json'
                            _752 = mem[64]
                            mem[mem[64]] = _348 + uint255(stor2.length.field_1) + -mem[64] + 6
                            mem[64] = _348 + uint255(stor2.length.field_1) + 38
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _752
                        else:
                            if bool(stor2.length) != 1:
                                s = 0
                                while s < 1:
                                    mem[s] = mem[_344 + s + 32]
                                    s = s + 32
                                    continue 
                                _757 = mem[64]
                                mem[mem[64]] = -mem[64] - 26
                                mem[64] = 6
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _757
                            else:
                                mem[0] = 2
                                s = 0
                                t = sha3(2)
                                while s < uint255(stor2.length.field_1):
                                    mem[_348 + s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                _699 = mem[_344]
                                s = 0
                                while s < _699:
                                    mem[_348 + uint255(stor2.length.field_1) + s + 32] = mem[_344 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_348 + uint255(stor2.length.field_1) + _699 + 32] = '.json'
                                if ceil32(_699) <= _699:
                                    _1341 = mem[64]
                                    mem[mem[64]] = _348 + uint255(stor2.length.field_1) + _699 + -mem[64] + 5
                                    mem[64] = _348 + uint255(stor2.length.field_1) + _699 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _1341
                                else:
                                    _1396 = mem[64]
                                    mem[mem[64]] = _348 + uint255(stor2.length.field_1) + _699 + -mem[64] + 5
                                    mem[64] = _348 + uint255(stor2.length.field_1) + _699 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _1396
                    else:
                        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor2.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                            s = 0
                            while s < 1:
                                mem[_348 + stor2.length.field_1 % 128 + s + 32] = mem[_344 + s + 32]
                                s = s + 32
                                continue 
                            mem[_348 + stor2.length.field_1 % 128 + 33] = '.json'
                            _762 = mem[64]
                            mem[mem[64]] = _348 + stor2.length.field_1 % 128 + -mem[64] + 6
                            mem[64] = _348 + stor2.length.field_1 % 128 + 38
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _762
                        else:
                            if bool(stor2.length) != 1:
                                s = 0
                                while s < 1:
                                    mem[s] = mem[_344 + s + 32]
                                    s = s + 32
                                    continue 
                                _767 = mem[64]
                                mem[mem[64]] = -mem[64] - 26
                                mem[64] = 6
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _767
                            else:
                                mem[0] = 2
                                s = 0
                                t = sha3(2)
                                while s < stor2.length.field_1 % 128:
                                    mem[_348 + s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                _700 = mem[_344]
                                s = 0
                                while s < _700:
                                    mem[_348 + stor2.length.field_1 % 128 + s + 32] = mem[_344 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_348 + stor2.length.field_1 % 128 + _700 + 32] = '.json'
                                if ceil32(_700) <= _700:
                                    _1345 = mem[64]
                                    mem[mem[64]] = _348 + stor2.length.field_1 % 128 + _700 + -mem[64] + 5
                                    mem[64] = _348 + stor2.length.field_1 % 128 + _700 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _1345
                                else:
                                    _1401 = mem[64]
                                    mem[mem[64]] = _348 + stor2.length.field_1 % 128 + _700 + -mem[64] + 5
                                    mem[64] = _348 + stor2.length.field_1 % 128 + _700 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _1401
                else:
                    t = 0
                    s = idx
                    while s:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        s = s / 10
                        continue 
                    if t > test266151307():
                        revert with 'NH{q', 65
                    _689 = mem[64]
                    mem[mem[64]] = t
                    mem[64] = mem[64] + ceil32(t) + 32
                    if not t:
                        u = t
                        s = idx
                        while s:
                            if u < 1:
                                revert with 'NH{q', 17
                            if 48 > -(s % 10) - 1:
                                revert with 'NH{q', 17
                            if u - 1 >= mem[_689]:
                                revert with 'NH{q', 50
                            mem[u + _689 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _1322 = mem[64]
                        if bool(stor2.length):
                            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor2.length):
                                mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                                _1477 = mem[_689]
                                s = 0
                                while s < _1477:
                                    mem[_1322 + uint255(stor2.length.field_1) + s + 32] = mem[_689 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_1322 + uint255(stor2.length.field_1) + _1477 + 32] = '.json'
                                if ceil32(_1477) <= _1477:
                                    _2147 = mem[64]
                                    mem[mem[64]] = _1322 + uint255(stor2.length.field_1) + _1477 + -mem[64] + 5
                                    mem[64] = _1322 + uint255(stor2.length.field_1) + _1477 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2147
                                else:
                                    _2236 = mem[64]
                                    mem[mem[64]] = _1322 + uint255(stor2.length.field_1) + _1477 + -mem[64] + 5
                                    mem[64] = _1322 + uint255(stor2.length.field_1) + _1477 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2236
                            else:
                                if bool(stor2.length) != 1:
                                    _1481 = mem[_689]
                                    s = 0
                                    while s < _1481:
                                        mem[s] = mem[_689 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[_1481] = '.json'
                                    if ceil32(_1481) <= _1481:
                                        _2152 = mem[64]
                                        mem[mem[64]] = _1481 + -mem[64] - 27
                                        mem[64] = _1481 + 5
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2152
                                    else:
                                        _2241 = mem[64]
                                        mem[mem[64]] = _1481 + -mem[64] - 27
                                        mem[64] = _1481 + 5
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2241
                                else:
                                    mem[0] = 2
                                    s = 0
                                    t = sha3(2)
                                    while s < uint255(stor2.length.field_1):
                                        mem[_1322 + s + 32] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    _2139 = mem[_689]
                                    s = 0
                                    while s < _2139:
                                        mem[_1322 + uint255(stor2.length.field_1) + s + 32] = mem[_689 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[_1322 + uint255(stor2.length.field_1) + _2139 + 32] = '.json'
                                    if ceil32(_2139) <= _2139:
                                        _2767 = mem[64]
                                        mem[mem[64]] = _1322 + uint255(stor2.length.field_1) + _2139 + -mem[64] + 5
                                        mem[64] = _1322 + uint255(stor2.length.field_1) + _2139 + 37
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2767
                                    else:
                                        _2872 = mem[64]
                                        mem[mem[64]] = _1322 + uint255(stor2.length.field_1) + _2139 + -mem[64] + 5
                                        mem[64] = _1322 + uint255(stor2.length.field_1) + _2139 + 37
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2872
                        else:
                            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor2.length):
                                mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                                _1482 = mem[_689]
                                s = 0
                                while s < _1482:
                                    mem[_1322 + stor2.length.field_1 % 128 + s + 32] = mem[_689 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_1322 + stor2.length.field_1 % 128 + _1482 + 32] = '.json'
                                if ceil32(_1482) <= _1482:
                                    _2156 = mem[64]
                                    mem[mem[64]] = _1322 + stor2.length.field_1 % 128 + _1482 + -mem[64] + 5
                                    mem[64] = _1322 + stor2.length.field_1 % 128 + _1482 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2156
                                else:
                                    _2246 = mem[64]
                                    mem[mem[64]] = _1322 + stor2.length.field_1 % 128 + _1482 + -mem[64] + 5
                                    mem[64] = _1322 + stor2.length.field_1 % 128 + _1482 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2246
                            else:
                                if bool(stor2.length) != 1:
                                    _1489 = mem[_689]
                                    s = 0
                                    while s < _1489:
                                        mem[s] = mem[_689 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[_1489] = '.json'
                                    if ceil32(_1489) <= _1489:
                                        _2161 = mem[64]
                                        mem[mem[64]] = _1489 + -mem[64] - 27
                                        mem[64] = _1489 + 5
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2161
                                    else:
                                        _2251 = mem[64]
                                        mem[mem[64]] = _1489 + -mem[64] - 27
                                        mem[64] = _1489 + 5
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2251
                                else:
                                    mem[0] = 2
                                    s = 0
                                    t = sha3(2)
                                    while s < stor2.length.field_1 % 128:
                                        mem[_1322 + s + 32] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    _2140 = mem[_689]
                                    s = 0
                                    while s < _2140:
                                        mem[_1322 + stor2.length.field_1 % 128 + s + 32] = mem[_689 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[_1322 + stor2.length.field_1 % 128 + _2140 + 32] = '.json'
                                    if ceil32(_2140) <= _2140:
                                        _2771 = mem[64]
                                        mem[mem[64]] = _1322 + stor2.length.field_1 % 128 + _2140 + -mem[64] + 5
                                        mem[64] = _1322 + stor2.length.field_1 % 128 + _2140 + 37
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2771
                                    else:
                                        _2877 = mem[64]
                                        mem[mem[64]] = _1322 + stor2.length.field_1 % 128 + _2140 + -mem[64] + 5
                                        mem[64] = _1322 + stor2.length.field_1 % 128 + _2140 + 37
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2877
                    else:
                        mem[_689 + 32 len t] = call.data[calldata.size len t]
                        u = t
                        s = idx
                        while s:
                            if u < 1:
                                revert with 'NH{q', 17
                            if 48 > -(s % 10) - 1:
                                revert with 'NH{q', 17
                            if u - 1 >= mem[_689]:
                                revert with 'NH{q', 50
                            mem[u + _689 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _1323 = mem[64]
                        if bool(stor2.length):
                            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor2.length):
                                mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                                _1478 = mem[_689]
                                s = 0
                                while s < _1478:
                                    mem[_1323 + uint255(stor2.length.field_1) + s + 32] = mem[_689 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_1323 + uint255(stor2.length.field_1) + _1478 + 32] = '.json'
                                if ceil32(_1478) <= _1478:
                                    _2165 = mem[64]
                                    mem[mem[64]] = _1323 + uint255(stor2.length.field_1) + _1478 + -mem[64] + 5
                                    mem[64] = _1323 + uint255(stor2.length.field_1) + _1478 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2165
                                else:
                                    _2256 = mem[64]
                                    mem[mem[64]] = _1323 + uint255(stor2.length.field_1) + _1478 + -mem[64] + 5
                                    mem[64] = _1323 + uint255(stor2.length.field_1) + _1478 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2256
                            else:
                                if bool(stor2.length) != 1:
                                    _1483 = mem[_689]
                                    s = 0
                                    while s < _1483:
                                        mem[s] = mem[_689 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[_1483] = '.json'
                                    if ceil32(_1483) <= _1483:
                                        _2170 = mem[64]
                                        mem[mem[64]] = _1483 + -mem[64] - 27
                                        mem[64] = _1483 + 5
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2170
                                    else:
                                        _2261 = mem[64]
                                        mem[mem[64]] = _1483 + -mem[64] - 27
                                        mem[64] = _1483 + 5
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2261
                                else:
                                    mem[0] = 2
                                    s = 0
                                    t = sha3(2)
                                    while s < uint255(stor2.length.field_1):
                                        mem[_1323 + s + 32] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    _2141 = mem[_689]
                                    s = 0
                                    while s < _2141:
                                        mem[_1323 + uint255(stor2.length.field_1) + s + 32] = mem[_689 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[_1323 + uint255(stor2.length.field_1) + _2141 + 32] = '.json'
                                    if ceil32(_2141) <= _2141:
                                        _2775 = mem[64]
                                        mem[mem[64]] = _1323 + uint255(stor2.length.field_1) + _2141 + -mem[64] + 5
                                        mem[64] = _1323 + uint255(stor2.length.field_1) + _2141 + 37
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2775
                                    else:
                                        _2882 = mem[64]
                                        mem[mem[64]] = _1323 + uint255(stor2.length.field_1) + _2141 + -mem[64] + 5
                                        mem[64] = _1323 + uint255(stor2.length.field_1) + _2141 + 37
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2882
                        else:
                            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor2.length):
                                mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                                _1484 = mem[_689]
                                s = 0
                                while s < _1484:
                                    mem[_1323 + stor2.length.field_1 % 128 + s + 32] = mem[_689 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_1323 + stor2.length.field_1 % 128 + _1484 + 32] = '.json'
                                if ceil32(_1484) <= _1484:
                                    _2174 = mem[64]
                                    mem[mem[64]] = _1323 + stor2.length.field_1 % 128 + _1484 + -mem[64] + 5
                                    mem[64] = _1323 + stor2.length.field_1 % 128 + _1484 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2174
                                else:
                                    _2266 = mem[64]
                                    mem[mem[64]] = _1323 + stor2.length.field_1 % 128 + _1484 + -mem[64] + 5
                                    mem[64] = _1323 + stor2.length.field_1 % 128 + _1484 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2266
                            else:
                                if bool(stor2.length) != 1:
                                    _1490 = mem[_689]
                                    s = 0
                                    while s < _1490:
                                        mem[s] = mem[_689 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[_1490] = '.json'
                                    if ceil32(_1490) <= _1490:
                                        _2179 = mem[64]
                                        mem[mem[64]] = _1490 + -mem[64] - 27
                                        mem[64] = _1490 + 5
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2179
                                    else:
                                        _2271 = mem[64]
                                        mem[mem[64]] = _1490 + -mem[64] - 27
                                        mem[64] = _1490 + 5
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2271
                                else:
                                    mem[0] = 2
                                    s = 0
                                    t = sha3(2)
                                    while s < stor2.length.field_1 % 128:
                                        mem[_1323 + s + 32] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    _2142 = mem[_689]
                                    s = 0
                                    while s < _2142:
                                        mem[_1323 + stor2.length.field_1 % 128 + s + 32] = mem[_689 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[_1323 + stor2.length.field_1 % 128 + _2142 + 32] = '.json'
                                    if ceil32(_2142) <= _2142:
                                        _2779 = mem[64]
                                        mem[mem[64]] = _1323 + stor2.length.field_1 % 128 + _2142 + -mem[64] + 5
                                        mem[64] = _1323 + stor2.length.field_1 % 128 + _2142 + 37
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2779
                                    else:
                                        _2887 = mem[64]
                                        mem[mem[64]] = _1323 + stor2.length.field_1 % 128 + _2142 + -mem[64] + 5
                                        mem[64] = _1323 + stor2.length.field_1 % 128 + _2142 + 37
                                        mem[0] = address(arg1)
                                        mem[32] = sha3(idx, 0)
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _2887
                if idx >= mem[(32 * sub_44d5989d) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * sub_44d5989d) + 160] = balanceOf[idx][address(arg1)]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _342 = mem[64]
            mem[mem[64]] = 64
            _347 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 96
            u = mem[64] + 96
            while idx < _347:
                mem[u] = t + -_342 - 96
                _679 = mem[s]
                _696 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _696:
                    mem[t + v + 32] = mem[_679 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_696) > _696:
                    mem[t + _696 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_696) + 32
                u = u + 32
                continue 
            mem[_342 + 32] = t - _342
            _695 = mem[(32 * sub_44d5989d) + 128]
            mem[t] = mem[(32 * sub_44d5989d) + 128]
            mem[t + 32 len 32 * _695] = mem[(32 * sub_44d5989d) + 160 len 32 * _695]
            return memory
              from mem[64]
               len t + (32 * _695) + -mem[64] + 32
        mem[(32 * sub_44d5989d) + 160 len 32 * sub_44d5989d] = call.data[calldata.size len 32 * sub_44d5989d]
        idx = 0
        while idx < sub_44d5989d:
            if not idx:
                _345 = mem[64]
                mem[64] = mem[64] + 64
                mem[_345] = 1
                mem[_345 + 32] = '0'
                _350 = mem[64]
                if bool(stor2.length):
                    if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor2.length):
                        mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                        s = 0
                        while s < 1:
                            mem[_350 + uint255(stor2.length.field_1) + s + 32] = mem[_345 + s + 32]
                            s = s + 32
                            continue 
                        mem[_350 + uint255(stor2.length.field_1) + 33] = '.json'
                        _772 = mem[64]
                        mem[mem[64]] = _350 + uint255(stor2.length.field_1) + -mem[64] + 6
                        mem[64] = _350 + uint255(stor2.length.field_1) + 38
                        mem[0] = address(arg1)
                        mem[32] = sha3(idx, 0)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _772
                    else:
                        if bool(stor2.length) != 1:
                            s = 0
                            while s < 1:
                                mem[s] = mem[_345 + s + 32]
                                s = s + 32
                                continue 
                            _777 = mem[64]
                            mem[mem[64]] = -mem[64] - 26
                            mem[64] = 6
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _777
                        else:
                            mem[0] = 2
                            s = 0
                            t = sha3(2)
                            while s < uint255(stor2.length.field_1):
                                mem[_350 + s + 32] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            _701 = mem[_345]
                            s = 0
                            while s < _701:
                                mem[_350 + uint255(stor2.length.field_1) + s + 32] = mem[_345 + s + 32]
                                s = s + 32
                                continue 
                            mem[_350 + uint255(stor2.length.field_1) + _701 + 32] = '.json'
                            if ceil32(_701) <= _701:
                                _1349 = mem[64]
                                mem[mem[64]] = _350 + uint255(stor2.length.field_1) + _701 + -mem[64] + 5
                                mem[64] = _350 + uint255(stor2.length.field_1) + _701 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _1349
                            else:
                                _1406 = mem[64]
                                mem[mem[64]] = _350 + uint255(stor2.length.field_1) + _701 + -mem[64] + 5
                                mem[64] = _350 + uint255(stor2.length.field_1) + _701 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _1406
                else:
                    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor2.length):
                        mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                        s = 0
                        while s < 1:
                            mem[_350 + stor2.length.field_1 % 128 + s + 32] = mem[_345 + s + 32]
                            s = s + 32
                            continue 
                        mem[_350 + stor2.length.field_1 % 128 + 33] = '.json'
                        _782 = mem[64]
                        mem[mem[64]] = _350 + stor2.length.field_1 % 128 + -mem[64] + 6
                        mem[64] = _350 + stor2.length.field_1 % 128 + 38
                        mem[0] = address(arg1)
                        mem[32] = sha3(idx, 0)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _782
                    else:
                        if bool(stor2.length) != 1:
                            s = 0
                            while s < 1:
                                mem[s] = mem[_345 + s + 32]
                                s = s + 32
                                continue 
                            _787 = mem[64]
                            mem[mem[64]] = -mem[64] - 26
                            mem[64] = 6
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _787
                        else:
                            mem[0] = 2
                            s = 0
                            t = sha3(2)
                            while s < stor2.length.field_1 % 128:
                                mem[_350 + s + 32] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            _702 = mem[_345]
                            s = 0
                            while s < _702:
                                mem[_350 + stor2.length.field_1 % 128 + s + 32] = mem[_345 + s + 32]
                                s = s + 32
                                continue 
                            mem[_350 + stor2.length.field_1 % 128 + _702 + 32] = '.json'
                            if ceil32(_702) <= _702:
                                _1353 = mem[64]
                                mem[mem[64]] = _350 + stor2.length.field_1 % 128 + _702 + -mem[64] + 5
                                mem[64] = _350 + stor2.length.field_1 % 128 + _702 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _1353
                            else:
                                _1411 = mem[64]
                                mem[mem[64]] = _350 + stor2.length.field_1 % 128 + _702 + -mem[64] + 5
                                mem[64] = _350 + stor2.length.field_1 % 128 + _702 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _1411
            else:
                t = 0
                s = idx
                while s:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 'NH{q', 65
                _690 = mem[64]
                mem[mem[64]] = t
                mem[64] = mem[64] + ceil32(t) + 32
                if not t:
                    u = t
                    s = idx
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[_690]:
                            revert with 'NH{q', 50
                        mem[u + _690 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _1325 = mem[64]
                    if bool(stor2.length):
                        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor2.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                            _1479 = mem[_690]
                            s = 0
                            while s < _1479:
                                mem[_1325 + uint255(stor2.length.field_1) + s + 32] = mem[_690 + s + 32]
                                s = s + 32
                                continue 
                            mem[_1325 + uint255(stor2.length.field_1) + _1479 + 32] = '.json'
                            if ceil32(_1479) <= _1479:
                                _2183 = mem[64]
                                mem[mem[64]] = _1325 + uint255(stor2.length.field_1) + _1479 + -mem[64] + 5
                                mem[64] = _1325 + uint255(stor2.length.field_1) + _1479 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2183
                            else:
                                _2276 = mem[64]
                                mem[mem[64]] = _1325 + uint255(stor2.length.field_1) + _1479 + -mem[64] + 5
                                mem[64] = _1325 + uint255(stor2.length.field_1) + _1479 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2276
                        else:
                            if bool(stor2.length) != 1:
                                _1485 = mem[_690]
                                s = 0
                                while s < _1485:
                                    mem[s] = mem[_690 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_1485] = '.json'
                                if ceil32(_1485) <= _1485:
                                    _2188 = mem[64]
                                    mem[mem[64]] = _1485 + -mem[64] - 27
                                    mem[64] = _1485 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2188
                                else:
                                    _2281 = mem[64]
                                    mem[mem[64]] = _1485 + -mem[64] - 27
                                    mem[64] = _1485 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2281
                            else:
                                mem[0] = 2
                                s = 0
                                t = sha3(2)
                                while s < uint255(stor2.length.field_1):
                                    mem[_1325 + s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                _2143 = mem[_690]
                                s = 0
                                while s < _2143:
                                    mem[_1325 + uint255(stor2.length.field_1) + s + 32] = mem[_690 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_1325 + uint255(stor2.length.field_1) + _2143 + 32] = '.json'
                                if ceil32(_2143) <= _2143:
                                    _2783 = mem[64]
                                    mem[mem[64]] = _1325 + uint255(stor2.length.field_1) + _2143 + -mem[64] + 5
                                    mem[64] = _1325 + uint255(stor2.length.field_1) + _2143 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2783
                                else:
                                    _2892 = mem[64]
                                    mem[mem[64]] = _1325 + uint255(stor2.length.field_1) + _2143 + -mem[64] + 5
                                    mem[64] = _1325 + uint255(stor2.length.field_1) + _2143 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2892
                    else:
                        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor2.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                            _1486 = mem[_690]
                            s = 0
                            while s < _1486:
                                mem[_1325 + stor2.length.field_1 % 128 + s + 32] = mem[_690 + s + 32]
                                s = s + 32
                                continue 
                            mem[_1325 + stor2.length.field_1 % 128 + _1486 + 32] = '.json'
                            if ceil32(_1486) <= _1486:
                                _2192 = mem[64]
                                mem[mem[64]] = _1325 + stor2.length.field_1 % 128 + _1486 + -mem[64] + 5
                                mem[64] = _1325 + stor2.length.field_1 % 128 + _1486 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2192
                            else:
                                _2286 = mem[64]
                                mem[mem[64]] = _1325 + stor2.length.field_1 % 128 + _1486 + -mem[64] + 5
                                mem[64] = _1325 + stor2.length.field_1 % 128 + _1486 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2286
                        else:
                            if bool(stor2.length) != 1:
                                _1491 = mem[_690]
                                s = 0
                                while s < _1491:
                                    mem[s] = mem[_690 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_1491] = '.json'
                                if ceil32(_1491) <= _1491:
                                    _2197 = mem[64]
                                    mem[mem[64]] = _1491 + -mem[64] - 27
                                    mem[64] = _1491 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2197
                                else:
                                    _2291 = mem[64]
                                    mem[mem[64]] = _1491 + -mem[64] - 27
                                    mem[64] = _1491 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2291
                            else:
                                mem[0] = 2
                                s = 0
                                t = sha3(2)
                                while s < stor2.length.field_1 % 128:
                                    mem[_1325 + s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                _2144 = mem[_690]
                                s = 0
                                while s < _2144:
                                    mem[_1325 + stor2.length.field_1 % 128 + s + 32] = mem[_690 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_1325 + stor2.length.field_1 % 128 + _2144 + 32] = '.json'
                                if ceil32(_2144) <= _2144:
                                    _2787 = mem[64]
                                    mem[mem[64]] = _1325 + stor2.length.field_1 % 128 + _2144 + -mem[64] + 5
                                    mem[64] = _1325 + stor2.length.field_1 % 128 + _2144 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2787
                                else:
                                    _2897 = mem[64]
                                    mem[mem[64]] = _1325 + stor2.length.field_1 % 128 + _2144 + -mem[64] + 5
                                    mem[64] = _1325 + stor2.length.field_1 % 128 + _2144 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2897
                else:
                    mem[_690 + 32 len t] = call.data[calldata.size len t]
                    u = t
                    s = idx
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[_690]:
                            revert with 'NH{q', 50
                        mem[u + _690 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _1326 = mem[64]
                    if bool(stor2.length):
                        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor2.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                            _1480 = mem[_690]
                            s = 0
                            while s < _1480:
                                mem[_1326 + uint255(stor2.length.field_1) + s + 32] = mem[_690 + s + 32]
                                s = s + 32
                                continue 
                            mem[_1326 + uint255(stor2.length.field_1) + _1480 + 32] = '.json'
                            if ceil32(_1480) <= _1480:
                                _2201 = mem[64]
                                mem[mem[64]] = _1326 + uint255(stor2.length.field_1) + _1480 + -mem[64] + 5
                                mem[64] = _1326 + uint255(stor2.length.field_1) + _1480 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2201
                            else:
                                _2296 = mem[64]
                                mem[mem[64]] = _1326 + uint255(stor2.length.field_1) + _1480 + -mem[64] + 5
                                mem[64] = _1326 + uint255(stor2.length.field_1) + _1480 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2296
                        else:
                            if bool(stor2.length) != 1:
                                _1487 = mem[_690]
                                s = 0
                                while s < _1487:
                                    mem[s] = mem[_690 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_1487] = '.json'
                                if ceil32(_1487) <= _1487:
                                    _2206 = mem[64]
                                    mem[mem[64]] = _1487 + -mem[64] - 27
                                    mem[64] = _1487 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2206
                                else:
                                    _2301 = mem[64]
                                    mem[mem[64]] = _1487 + -mem[64] - 27
                                    mem[64] = _1487 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2301
                            else:
                                mem[0] = 2
                                s = 0
                                t = sha3(2)
                                while s < uint255(stor2.length.field_1):
                                    mem[_1326 + s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                _2145 = mem[_690]
                                s = 0
                                while s < _2145:
                                    mem[_1326 + uint255(stor2.length.field_1) + s + 32] = mem[_690 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_1326 + uint255(stor2.length.field_1) + _2145 + 32] = '.json'
                                if ceil32(_2145) <= _2145:
                                    _2791 = mem[64]
                                    mem[mem[64]] = _1326 + uint255(stor2.length.field_1) + _2145 + -mem[64] + 5
                                    mem[64] = _1326 + uint255(stor2.length.field_1) + _2145 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2791
                                else:
                                    _2902 = mem[64]
                                    mem[mem[64]] = _1326 + uint255(stor2.length.field_1) + _2145 + -mem[64] + 5
                                    mem[64] = _1326 + uint255(stor2.length.field_1) + _2145 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2902
                    else:
                        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor2.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                            _1488 = mem[_690]
                            s = 0
                            while s < _1488:
                                mem[_1326 + stor2.length.field_1 % 128 + s + 32] = mem[_690 + s + 32]
                                s = s + 32
                                continue 
                            mem[_1326 + stor2.length.field_1 % 128 + _1488 + 32] = '.json'
                            if ceil32(_1488) <= _1488:
                                _2210 = mem[64]
                                mem[mem[64]] = _1326 + stor2.length.field_1 % 128 + _1488 + -mem[64] + 5
                                mem[64] = _1326 + stor2.length.field_1 % 128 + _1488 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2210
                            else:
                                _2306 = mem[64]
                                mem[mem[64]] = _1326 + stor2.length.field_1 % 128 + _1488 + -mem[64] + 5
                                mem[64] = _1326 + stor2.length.field_1 % 128 + _1488 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2306
                        else:
                            if bool(stor2.length) != 1:
                                _1492 = mem[_690]
                                s = 0
                                while s < _1492:
                                    mem[s] = mem[_690 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_1492] = '.json'
                                if ceil32(_1492) <= _1492:
                                    _2215 = mem[64]
                                    mem[mem[64]] = _1492 + -mem[64] - 27
                                    mem[64] = _1492 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2215
                                else:
                                    _2311 = mem[64]
                                    mem[mem[64]] = _1492 + -mem[64] - 27
                                    mem[64] = _1492 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2311
                            else:
                                mem[0] = 2
                                s = 0
                                t = sha3(2)
                                while s < stor2.length.field_1 % 128:
                                    mem[_1326 + s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                _2146 = mem[_690]
                                s = 0
                                while s < _2146:
                                    mem[_1326 + stor2.length.field_1 % 128 + s + 32] = mem[_690 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_1326 + stor2.length.field_1 % 128 + _2146 + 32] = '.json'
                                if ceil32(_2146) <= _2146:
                                    _2795 = mem[64]
                                    mem[mem[64]] = _1326 + stor2.length.field_1 % 128 + _2146 + -mem[64] + 5
                                    mem[64] = _1326 + stor2.length.field_1 % 128 + _2146 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2795
                                else:
                                    _2907 = mem[64]
                                    mem[mem[64]] = _1326 + stor2.length.field_1 % 128 + _2146 + -mem[64] + 5
                                    mem[64] = _1326 + stor2.length.field_1 % 128 + _2146 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2907
            if idx >= mem[(32 * sub_44d5989d) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * sub_44d5989d) + 160] = balanceOf[idx][address(arg1)]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _343 = mem[64]
        mem[mem[64]] = 64
        _349 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 96
        u = mem[64] + 96
        while idx < _349:
            mem[u] = t + -_343 - 96
            _684 = mem[s]
            _698 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _698:
                mem[t + v + 32] = mem[_684 + v + 32]
                v = v + 32
                continue 
            if ceil32(_698) > _698:
                mem[t + _698 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_698) + 32
            u = u + 32
            continue 
        mem[_343 + 32] = t - _343
        _697 = mem[(32 * sub_44d5989d) + 128]
        mem[t] = mem[(32 * sub_44d5989d) + 128]
        mem[t + 32 len 32 * _697] = mem[(32 * sub_44d5989d) + 160 len 32 * _697]
        return memory
          from mem[64]
           len t + (32 * _697) + -mem[64] + 32
    mem[128] = 96
    s = 128
    idx = sub_44d5989d
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    if sub_44d5989d > test266151307():
        revert with 'NH{q', 65
    _346 = mem[64]
    mem[mem[64]] = sub_44d5989d
    mem[64] = mem[64] + (32 * sub_44d5989d) + 32
    if not sub_44d5989d:
        idx = 0
        while idx < sub_44d5989d:
            if not idx:
                _693 = mem[64]
                mem[64] = mem[64] + 64
                mem[_693] = 1
                mem[_693 + 32] = '0'
                _704 = mem[64]
                if bool(stor2.length):
                    if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor2.length):
                        mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                        s = 0
                        while s < 1:
                            mem[_704 + uint255(stor2.length.field_1) + s + 32] = mem[_693 + s + 32]
                            s = s + 32
                            continue 
                        mem[_704 + uint255(stor2.length.field_1) + 33] = '.json'
                        _1416 = mem[64]
                        mem[mem[64]] = _704 + uint255(stor2.length.field_1) + -mem[64] + 6
                        mem[64] = _704 + uint255(stor2.length.field_1) + 38
                        mem[0] = address(arg1)
                        mem[32] = sha3(idx, 0)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1416
                    else:
                        if bool(stor2.length) != 1:
                            s = 0
                            while s < 1:
                                mem[s] = mem[_693 + s + 32]
                                s = s + 32
                                continue 
                            _1421 = mem[64]
                            mem[mem[64]] = -mem[64] - 26
                            mem[64] = 6
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _1421
                        else:
                            mem[0] = 2
                            s = 0
                            t = sha3(2)
                            while s < uint255(stor2.length.field_1):
                                mem[_704 + s + 32] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            _1331 = mem[_693]
                            s = 0
                            while s < _1331:
                                mem[_704 + uint255(stor2.length.field_1) + s + 32] = mem[_693 + s + 32]
                                s = s + 32
                                continue 
                            mem[_704 + uint255(stor2.length.field_1) + _1331 + 32] = '.json'
                            if ceil32(_1331) <= _1331:
                                _2219 = mem[64]
                                mem[mem[64]] = _704 + uint255(stor2.length.field_1) + _1331 + -mem[64] + 5
                                mem[64] = _704 + uint255(stor2.length.field_1) + _1331 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2219
                            else:
                                _2316 = mem[64]
                                mem[mem[64]] = _704 + uint255(stor2.length.field_1) + _1331 + -mem[64] + 5
                                mem[64] = _704 + uint255(stor2.length.field_1) + _1331 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2316
                else:
                    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor2.length):
                        mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                        s = 0
                        while s < 1:
                            mem[_704 + stor2.length.field_1 % 128 + s + 32] = mem[_693 + s + 32]
                            s = s + 32
                            continue 
                        mem[_704 + stor2.length.field_1 % 128 + 33] = '.json'
                        _1426 = mem[64]
                        mem[mem[64]] = _704 + stor2.length.field_1 % 128 + -mem[64] + 6
                        mem[64] = _704 + stor2.length.field_1 % 128 + 38
                        mem[0] = address(arg1)
                        mem[32] = sha3(idx, 0)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1426
                    else:
                        if bool(stor2.length) != 1:
                            s = 0
                            while s < 1:
                                mem[s] = mem[_693 + s + 32]
                                s = s + 32
                                continue 
                            _1431 = mem[64]
                            mem[mem[64]] = -mem[64] - 26
                            mem[64] = 6
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _1431
                        else:
                            mem[0] = 2
                            s = 0
                            t = sha3(2)
                            while s < stor2.length.field_1 % 128:
                                mem[_704 + s + 32] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            _1332 = mem[_693]
                            s = 0
                            while s < _1332:
                                mem[_704 + stor2.length.field_1 % 128 + s + 32] = mem[_693 + s + 32]
                                s = s + 32
                                continue 
                            mem[_704 + stor2.length.field_1 % 128 + _1332 + 32] = '.json'
                            if ceil32(_1332) <= _1332:
                                _2223 = mem[64]
                                mem[mem[64]] = _704 + stor2.length.field_1 % 128 + _1332 + -mem[64] + 5
                                mem[64] = _704 + stor2.length.field_1 % 128 + _1332 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2223
                            else:
                                _2321 = mem[64]
                                mem[mem[64]] = _704 + stor2.length.field_1 % 128 + _1332 + -mem[64] + 5
                                mem[64] = _704 + stor2.length.field_1 % 128 + _1332 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2321
            else:
                t = 0
                s = idx
                while s:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 'NH{q', 65
                _1319 = mem[64]
                mem[mem[64]] = t
                mem[64] = mem[64] + ceil32(t) + 32
                if not t:
                    u = t
                    s = idx
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[_1319]:
                            revert with 'NH{q', 50
                        mem[u + _1319 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _2134 = mem[64]
                    if bool(stor2.length):
                        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor2.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                            _2363 = mem[_1319]
                            s = 0
                            while s < _2363:
                                mem[_2134 + uint255(stor2.length.field_1) + s + 32] = mem[_1319 + s + 32]
                                s = s + 32
                                continue 
                            mem[_2134 + uint255(stor2.length.field_1) + _2363 + 32] = '.json'
                            if ceil32(_2363) <= _2363:
                                _2799 = mem[64]
                                mem[mem[64]] = _2134 + uint255(stor2.length.field_1) + _2363 + -mem[64] + 5
                                mem[64] = _2134 + uint255(stor2.length.field_1) + _2363 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2799
                            else:
                                _2912 = mem[64]
                                mem[mem[64]] = _2134 + uint255(stor2.length.field_1) + _2363 + -mem[64] + 5
                                mem[64] = _2134 + uint255(stor2.length.field_1) + _2363 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2912
                        else:
                            if bool(stor2.length) != 1:
                                _2367 = mem[_1319]
                                s = 0
                                while s < _2367:
                                    mem[s] = mem[_1319 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_2367] = '.json'
                                if ceil32(_2367) <= _2367:
                                    _2804 = mem[64]
                                    mem[mem[64]] = _2367 + -mem[64] - 27
                                    mem[64] = _2367 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2804
                                else:
                                    _2917 = mem[64]
                                    mem[mem[64]] = _2367 + -mem[64] - 27
                                    mem[64] = _2367 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2917
                            else:
                                mem[0] = 2
                                s = 0
                                t = sha3(2)
                                while s < uint255(stor2.length.field_1):
                                    mem[_2134 + s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                _2759 = mem[_1319]
                                s = 0
                                while s < _2759:
                                    mem[_2134 + uint255(stor2.length.field_1) + s + 32] = mem[_1319 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_2134 + uint255(stor2.length.field_1) + _2759 + 32] = '.json'
                                if ceil32(_2759) <= _2759:
                                    _3103 = mem[64]
                                    mem[mem[64]] = _2134 + uint255(stor2.length.field_1) + _2759 + -mem[64] + 5
                                    mem[64] = _2134 + uint255(stor2.length.field_1) + _2759 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _3103
                                else:
                                    _3136 = mem[64]
                                    mem[mem[64]] = _2134 + uint255(stor2.length.field_1) + _2759 + -mem[64] + 5
                                    mem[64] = _2134 + uint255(stor2.length.field_1) + _2759 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _3136
                    else:
                        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor2.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                            _2368 = mem[_1319]
                            s = 0
                            while s < _2368:
                                mem[_2134 + stor2.length.field_1 % 128 + s + 32] = mem[_1319 + s + 32]
                                s = s + 32
                                continue 
                            mem[_2134 + stor2.length.field_1 % 128 + _2368 + 32] = '.json'
                            if ceil32(_2368) <= _2368:
                                _2808 = mem[64]
                                mem[mem[64]] = _2134 + stor2.length.field_1 % 128 + _2368 + -mem[64] + 5
                                mem[64] = _2134 + stor2.length.field_1 % 128 + _2368 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2808
                            else:
                                _2922 = mem[64]
                                mem[mem[64]] = _2134 + stor2.length.field_1 % 128 + _2368 + -mem[64] + 5
                                mem[64] = _2134 + stor2.length.field_1 % 128 + _2368 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2922
                        else:
                            if bool(stor2.length) != 1:
                                _2375 = mem[_1319]
                                s = 0
                                while s < _2375:
                                    mem[s] = mem[_1319 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_2375] = '.json'
                                if ceil32(_2375) <= _2375:
                                    _2813 = mem[64]
                                    mem[mem[64]] = _2375 + -mem[64] - 27
                                    mem[64] = _2375 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2813
                                else:
                                    _2927 = mem[64]
                                    mem[mem[64]] = _2375 + -mem[64] - 27
                                    mem[64] = _2375 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2927
                            else:
                                mem[0] = 2
                                s = 0
                                t = sha3(2)
                                while s < stor2.length.field_1 % 128:
                                    mem[_2134 + s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                _2760 = mem[_1319]
                                s = 0
                                while s < _2760:
                                    mem[_2134 + stor2.length.field_1 % 128 + s + 32] = mem[_1319 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_2134 + stor2.length.field_1 % 128 + _2760 + 32] = '.json'
                                if ceil32(_2760) <= _2760:
                                    _3107 = mem[64]
                                    mem[mem[64]] = _2134 + stor2.length.field_1 % 128 + _2760 + -mem[64] + 5
                                    mem[64] = _2134 + stor2.length.field_1 % 128 + _2760 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _3107
                                else:
                                    _3141 = mem[64]
                                    mem[mem[64]] = _2134 + stor2.length.field_1 % 128 + _2760 + -mem[64] + 5
                                    mem[64] = _2134 + stor2.length.field_1 % 128 + _2760 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _3141
                else:
                    mem[_1319 + 32 len t] = call.data[calldata.size len t]
                    u = t
                    s = idx
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[_1319]:
                            revert with 'NH{q', 50
                        mem[u + _1319 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _2135 = mem[64]
                    if bool(stor2.length):
                        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor2.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                            _2364 = mem[_1319]
                            s = 0
                            while s < _2364:
                                mem[_2135 + uint255(stor2.length.field_1) + s + 32] = mem[_1319 + s + 32]
                                s = s + 32
                                continue 
                            mem[_2135 + uint255(stor2.length.field_1) + _2364 + 32] = '.json'
                            if ceil32(_2364) <= _2364:
                                _2817 = mem[64]
                                mem[mem[64]] = _2135 + uint255(stor2.length.field_1) + _2364 + -mem[64] + 5
                                mem[64] = _2135 + uint255(stor2.length.field_1) + _2364 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2817
                            else:
                                _2932 = mem[64]
                                mem[mem[64]] = _2135 + uint255(stor2.length.field_1) + _2364 + -mem[64] + 5
                                mem[64] = _2135 + uint255(stor2.length.field_1) + _2364 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2932
                        else:
                            if bool(stor2.length) != 1:
                                _2369 = mem[_1319]
                                s = 0
                                while s < _2369:
                                    mem[s] = mem[_1319 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_2369] = '.json'
                                if ceil32(_2369) <= _2369:
                                    _2822 = mem[64]
                                    mem[mem[64]] = _2369 + -mem[64] - 27
                                    mem[64] = _2369 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2822
                                else:
                                    _2937 = mem[64]
                                    mem[mem[64]] = _2369 + -mem[64] - 27
                                    mem[64] = _2369 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2937
                            else:
                                mem[0] = 2
                                s = 0
                                t = sha3(2)
                                while s < uint255(stor2.length.field_1):
                                    mem[_2135 + s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                _2761 = mem[_1319]
                                s = 0
                                while s < _2761:
                                    mem[_2135 + uint255(stor2.length.field_1) + s + 32] = mem[_1319 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_2135 + uint255(stor2.length.field_1) + _2761 + 32] = '.json'
                                if ceil32(_2761) <= _2761:
                                    _3111 = mem[64]
                                    mem[mem[64]] = _2135 + uint255(stor2.length.field_1) + _2761 + -mem[64] + 5
                                    mem[64] = _2135 + uint255(stor2.length.field_1) + _2761 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _3111
                                else:
                                    _3146 = mem[64]
                                    mem[mem[64]] = _2135 + uint255(stor2.length.field_1) + _2761 + -mem[64] + 5
                                    mem[64] = _2135 + uint255(stor2.length.field_1) + _2761 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _3146
                    else:
                        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor2.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                            _2370 = mem[_1319]
                            s = 0
                            while s < _2370:
                                mem[_2135 + stor2.length.field_1 % 128 + s + 32] = mem[_1319 + s + 32]
                                s = s + 32
                                continue 
                            mem[_2135 + stor2.length.field_1 % 128 + _2370 + 32] = '.json'
                            if ceil32(_2370) <= _2370:
                                _2826 = mem[64]
                                mem[mem[64]] = _2135 + stor2.length.field_1 % 128 + _2370 + -mem[64] + 5
                                mem[64] = _2135 + stor2.length.field_1 % 128 + _2370 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2826
                            else:
                                _2942 = mem[64]
                                mem[mem[64]] = _2135 + stor2.length.field_1 % 128 + _2370 + -mem[64] + 5
                                mem[64] = _2135 + stor2.length.field_1 % 128 + _2370 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2942
                        else:
                            if bool(stor2.length) != 1:
                                _2376 = mem[_1319]
                                s = 0
                                while s < _2376:
                                    mem[s] = mem[_1319 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_2376] = '.json'
                                if ceil32(_2376) <= _2376:
                                    _2831 = mem[64]
                                    mem[mem[64]] = _2376 + -mem[64] - 27
                                    mem[64] = _2376 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2831
                                else:
                                    _2947 = mem[64]
                                    mem[mem[64]] = _2376 + -mem[64] - 27
                                    mem[64] = _2376 + 5
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _2947
                            else:
                                mem[0] = 2
                                s = 0
                                t = sha3(2)
                                while s < stor2.length.field_1 % 128:
                                    mem[_2135 + s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                _2762 = mem[_1319]
                                s = 0
                                while s < _2762:
                                    mem[_2135 + stor2.length.field_1 % 128 + s + 32] = mem[_1319 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_2135 + stor2.length.field_1 % 128 + _2762 + 32] = '.json'
                                if ceil32(_2762) <= _2762:
                                    _3115 = mem[64]
                                    mem[mem[64]] = _2135 + stor2.length.field_1 % 128 + _2762 + -mem[64] + 5
                                    mem[64] = _2135 + stor2.length.field_1 % 128 + _2762 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _3115
                                else:
                                    _3151 = mem[64]
                                    mem[mem[64]] = _2135 + stor2.length.field_1 % 128 + _2762 + -mem[64] + 5
                                    mem[64] = _2135 + stor2.length.field_1 % 128 + _2762 + 37
                                    mem[0] = address(arg1)
                                    mem[32] = sha3(idx, 0)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _3151
            if idx >= mem[_346]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _346 + 32] = balanceOf[idx][address(arg1)]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _691 = mem[64]
        mem[mem[64]] = 64
        _703 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 96
        u = mem[64] + 96
        while idx < _703:
            mem[u] = t + -_691 - 96
            _1309 = mem[s]
            _1328 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1328:
                mem[t + v + 32] = mem[_1309 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1328) > _1328:
                mem[t + _1328 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1328) + 32
            u = u + 32
            continue 
        mem[_691 + 32] = t - _691
        _1327 = mem[_346]
        mem[t] = mem[_346]
        mem[t + 32 len 32 * _1327] = mem[_346 + 32 len 32 * _1327]
        return memory
          from mem[64]
           len t + (32 * _1327) + -mem[64] + 32
    mem[_346 + 32 len 32 * sub_44d5989d] = call.data[calldata.size len 32 * sub_44d5989d]
    idx = 0
    while idx < sub_44d5989d:
        if not idx:
            _694 = mem[64]
            mem[64] = mem[64] + 64
            mem[_694] = 1
            mem[_694 + 32] = '0'
            _706 = mem[64]
            if bool(stor2.length):
                if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor2.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                    s = 0
                    while s < 1:
                        mem[_706 + uint255(stor2.length.field_1) + s + 32] = mem[_694 + s + 32]
                        s = s + 32
                        continue 
                    mem[_706 + uint255(stor2.length.field_1) + 33] = '.json'
                    _1436 = mem[64]
                    mem[mem[64]] = _706 + uint255(stor2.length.field_1) + -mem[64] + 6
                    mem[64] = _706 + uint255(stor2.length.field_1) + 38
                    mem[0] = address(arg1)
                    mem[32] = sha3(idx, 0)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1436
                else:
                    if bool(stor2.length) != 1:
                        s = 0
                        while s < 1:
                            mem[s] = mem[_694 + s + 32]
                            s = s + 32
                            continue 
                        _1441 = mem[64]
                        mem[mem[64]] = -mem[64] - 26
                        mem[64] = 6
                        mem[0] = address(arg1)
                        mem[32] = sha3(idx, 0)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1441
                    else:
                        mem[0] = 2
                        s = 0
                        t = sha3(2)
                        while s < uint255(stor2.length.field_1):
                            mem[_706 + s + 32] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        _1333 = mem[_694]
                        s = 0
                        while s < _1333:
                            mem[_706 + uint255(stor2.length.field_1) + s + 32] = mem[_694 + s + 32]
                            s = s + 32
                            continue 
                        mem[_706 + uint255(stor2.length.field_1) + _1333 + 32] = '.json'
                        if ceil32(_1333) <= _1333:
                            _2227 = mem[64]
                            mem[mem[64]] = _706 + uint255(stor2.length.field_1) + _1333 + -mem[64] + 5
                            mem[64] = _706 + uint255(stor2.length.field_1) + _1333 + 37
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _2227
                        else:
                            _2326 = mem[64]
                            mem[mem[64]] = _706 + uint255(stor2.length.field_1) + _1333 + -mem[64] + 5
                            mem[64] = _706 + uint255(stor2.length.field_1) + _1333 + 37
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _2326
            else:
                if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor2.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                    s = 0
                    while s < 1:
                        mem[_706 + stor2.length.field_1 % 128 + s + 32] = mem[_694 + s + 32]
                        s = s + 32
                        continue 
                    mem[_706 + stor2.length.field_1 % 128 + 33] = '.json'
                    _1446 = mem[64]
                    mem[mem[64]] = _706 + stor2.length.field_1 % 128 + -mem[64] + 6
                    mem[64] = _706 + stor2.length.field_1 % 128 + 38
                    mem[0] = address(arg1)
                    mem[32] = sha3(idx, 0)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1446
                else:
                    if bool(stor2.length) != 1:
                        s = 0
                        while s < 1:
                            mem[s] = mem[_694 + s + 32]
                            s = s + 32
                            continue 
                        _1451 = mem[64]
                        mem[mem[64]] = -mem[64] - 26
                        mem[64] = 6
                        mem[0] = address(arg1)
                        mem[32] = sha3(idx, 0)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1451
                    else:
                        mem[0] = 2
                        s = 0
                        t = sha3(2)
                        while s < stor2.length.field_1 % 128:
                            mem[_706 + s + 32] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        _1334 = mem[_694]
                        s = 0
                        while s < _1334:
                            mem[_706 + stor2.length.field_1 % 128 + s + 32] = mem[_694 + s + 32]
                            s = s + 32
                            continue 
                        mem[_706 + stor2.length.field_1 % 128 + _1334 + 32] = '.json'
                        if ceil32(_1334) <= _1334:
                            _2231 = mem[64]
                            mem[mem[64]] = _706 + stor2.length.field_1 % 128 + _1334 + -mem[64] + 5
                            mem[64] = _706 + stor2.length.field_1 % 128 + _1334 + 37
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _2231
                        else:
                            _2331 = mem[64]
                            mem[mem[64]] = _706 + stor2.length.field_1 % 128 + _1334 + -mem[64] + 5
                            mem[64] = _706 + stor2.length.field_1 % 128 + _1334 + 37
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _2331
        else:
            t = 0
            s = idx
            while s:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            _1320 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                s = idx
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_1320]:
                        revert with 'NH{q', 50
                    mem[u + _1320 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _2137 = mem[64]
                if bool(stor2.length):
                    if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor2.length):
                        mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                        _2365 = mem[_1320]
                        s = 0
                        while s < _2365:
                            mem[_2137 + uint255(stor2.length.field_1) + s + 32] = mem[_1320 + s + 32]
                            s = s + 32
                            continue 
                        mem[_2137 + uint255(stor2.length.field_1) + _2365 + 32] = '.json'
                        if ceil32(_2365) <= _2365:
                            _2835 = mem[64]
                            mem[mem[64]] = _2137 + uint255(stor2.length.field_1) + _2365 + -mem[64] + 5
                            mem[64] = _2137 + uint255(stor2.length.field_1) + _2365 + 37
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _2835
                        else:
                            _2952 = mem[64]
                            mem[mem[64]] = _2137 + uint255(stor2.length.field_1) + _2365 + -mem[64] + 5
                            mem[64] = _2137 + uint255(stor2.length.field_1) + _2365 + 37
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _2952
                    else:
                        if bool(stor2.length) != 1:
                            _2371 = mem[_1320]
                            s = 0
                            while s < _2371:
                                mem[s] = mem[_1320 + s + 32]
                                s = s + 32
                                continue 
                            mem[_2371] = '.json'
                            if ceil32(_2371) <= _2371:
                                _2840 = mem[64]
                                mem[mem[64]] = _2371 + -mem[64] - 27
                                mem[64] = _2371 + 5
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2840
                            else:
                                _2957 = mem[64]
                                mem[mem[64]] = _2371 + -mem[64] - 27
                                mem[64] = _2371 + 5
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2957
                        else:
                            mem[0] = 2
                            s = 0
                            t = sha3(2)
                            while s < uint255(stor2.length.field_1):
                                mem[_2137 + s + 32] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            _2763 = mem[_1320]
                            s = 0
                            while s < _2763:
                                mem[_2137 + uint255(stor2.length.field_1) + s + 32] = mem[_1320 + s + 32]
                                s = s + 32
                                continue 
                            mem[_2137 + uint255(stor2.length.field_1) + _2763 + 32] = '.json'
                            if ceil32(_2763) <= _2763:
                                _3119 = mem[64]
                                mem[mem[64]] = _2137 + uint255(stor2.length.field_1) + _2763 + -mem[64] + 5
                                mem[64] = _2137 + uint255(stor2.length.field_1) + _2763 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _3119
                            else:
                                _3156 = mem[64]
                                mem[mem[64]] = _2137 + uint255(stor2.length.field_1) + _2763 + -mem[64] + 5
                                mem[64] = _2137 + uint255(stor2.length.field_1) + _2763 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _3156
                else:
                    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor2.length):
                        mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                        _2372 = mem[_1320]
                        s = 0
                        while s < _2372:
                            mem[_2137 + stor2.length.field_1 % 128 + s + 32] = mem[_1320 + s + 32]
                            s = s + 32
                            continue 
                        mem[_2137 + stor2.length.field_1 % 128 + _2372 + 32] = '.json'
                        if ceil32(_2372) <= _2372:
                            _2844 = mem[64]
                            mem[mem[64]] = _2137 + stor2.length.field_1 % 128 + _2372 + -mem[64] + 5
                            mem[64] = _2137 + stor2.length.field_1 % 128 + _2372 + 37
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _2844
                        else:
                            _2962 = mem[64]
                            mem[mem[64]] = _2137 + stor2.length.field_1 % 128 + _2372 + -mem[64] + 5
                            mem[64] = _2137 + stor2.length.field_1 % 128 + _2372 + 37
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _2962
                    else:
                        if bool(stor2.length) != 1:
                            _2377 = mem[_1320]
                            s = 0
                            while s < _2377:
                                mem[s] = mem[_1320 + s + 32]
                                s = s + 32
                                continue 
                            mem[_2377] = '.json'
                            if ceil32(_2377) <= _2377:
                                _2849 = mem[64]
                                mem[mem[64]] = _2377 + -mem[64] - 27
                                mem[64] = _2377 + 5
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2849
                            else:
                                _2967 = mem[64]
                                mem[mem[64]] = _2377 + -mem[64] - 27
                                mem[64] = _2377 + 5
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2967
                        else:
                            mem[0] = 2
                            s = 0
                            t = sha3(2)
                            while s < stor2.length.field_1 % 128:
                                mem[_2137 + s + 32] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            _2764 = mem[_1320]
                            s = 0
                            while s < _2764:
                                mem[_2137 + stor2.length.field_1 % 128 + s + 32] = mem[_1320 + s + 32]
                                s = s + 32
                                continue 
                            mem[_2137 + stor2.length.field_1 % 128 + _2764 + 32] = '.json'
                            if ceil32(_2764) <= _2764:
                                _3123 = mem[64]
                                mem[mem[64]] = _2137 + stor2.length.field_1 % 128 + _2764 + -mem[64] + 5
                                mem[64] = _2137 + stor2.length.field_1 % 128 + _2764 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _3123
                            else:
                                _3161 = mem[64]
                                mem[mem[64]] = _2137 + stor2.length.field_1 % 128 + _2764 + -mem[64] + 5
                                mem[64] = _2137 + stor2.length.field_1 % 128 + _2764 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _3161
            else:
                mem[_1320 + 32 len t] = call.data[calldata.size len t]
                u = t
                s = idx
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_1320]:
                        revert with 'NH{q', 50
                    mem[u + _1320 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _2138 = mem[64]
                if bool(stor2.length):
                    if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor2.length):
                        mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                        _2366 = mem[_1320]
                        s = 0
                        while s < _2366:
                            mem[_2138 + uint255(stor2.length.field_1) + s + 32] = mem[_1320 + s + 32]
                            s = s + 32
                            continue 
                        mem[_2138 + uint255(stor2.length.field_1) + _2366 + 32] = '.json'
                        if ceil32(_2366) <= _2366:
                            _2853 = mem[64]
                            mem[mem[64]] = _2138 + uint255(stor2.length.field_1) + _2366 + -mem[64] + 5
                            mem[64] = _2138 + uint255(stor2.length.field_1) + _2366 + 37
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _2853
                        else:
                            _2972 = mem[64]
                            mem[mem[64]] = _2138 + uint255(stor2.length.field_1) + _2366 + -mem[64] + 5
                            mem[64] = _2138 + uint255(stor2.length.field_1) + _2366 + 37
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _2972
                    else:
                        if bool(stor2.length) != 1:
                            _2373 = mem[_1320]
                            s = 0
                            while s < _2373:
                                mem[s] = mem[_1320 + s + 32]
                                s = s + 32
                                continue 
                            mem[_2373] = '.json'
                            if ceil32(_2373) <= _2373:
                                _2858 = mem[64]
                                mem[mem[64]] = _2373 + -mem[64] - 27
                                mem[64] = _2373 + 5
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2858
                            else:
                                _2977 = mem[64]
                                mem[mem[64]] = _2373 + -mem[64] - 27
                                mem[64] = _2373 + 5
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2977
                        else:
                            mem[0] = 2
                            s = 0
                            t = sha3(2)
                            while s < uint255(stor2.length.field_1):
                                mem[_2138 + s + 32] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            _2765 = mem[_1320]
                            s = 0
                            while s < _2765:
                                mem[_2138 + uint255(stor2.length.field_1) + s + 32] = mem[_1320 + s + 32]
                                s = s + 32
                                continue 
                            mem[_2138 + uint255(stor2.length.field_1) + _2765 + 32] = '.json'
                            if ceil32(_2765) <= _2765:
                                _3127 = mem[64]
                                mem[mem[64]] = _2138 + uint255(stor2.length.field_1) + _2765 + -mem[64] + 5
                                mem[64] = _2138 + uint255(stor2.length.field_1) + _2765 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _3127
                            else:
                                _3166 = mem[64]
                                mem[mem[64]] = _2138 + uint255(stor2.length.field_1) + _2765 + -mem[64] + 5
                                mem[64] = _2138 + uint255(stor2.length.field_1) + _2765 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _3166
                else:
                    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor2.length):
                        mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                        _2374 = mem[_1320]
                        s = 0
                        while s < _2374:
                            mem[_2138 + stor2.length.field_1 % 128 + s + 32] = mem[_1320 + s + 32]
                            s = s + 32
                            continue 
                        mem[_2138 + stor2.length.field_1 % 128 + _2374 + 32] = '.json'
                        if ceil32(_2374) <= _2374:
                            _2862 = mem[64]
                            mem[mem[64]] = _2138 + stor2.length.field_1 % 128 + _2374 + -mem[64] + 5
                            mem[64] = _2138 + stor2.length.field_1 % 128 + _2374 + 37
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _2862
                        else:
                            _2982 = mem[64]
                            mem[mem[64]] = _2138 + stor2.length.field_1 % 128 + _2374 + -mem[64] + 5
                            mem[64] = _2138 + stor2.length.field_1 % 128 + _2374 + 37
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 0)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _2982
                    else:
                        if bool(stor2.length) != 1:
                            _2378 = mem[_1320]
                            s = 0
                            while s < _2378:
                                mem[s] = mem[_1320 + s + 32]
                                s = s + 32
                                continue 
                            mem[_2378] = '.json'
                            if ceil32(_2378) <= _2378:
                                _2867 = mem[64]
                                mem[mem[64]] = _2378 + -mem[64] - 27
                                mem[64] = _2378 + 5
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2867
                            else:
                                _2987 = mem[64]
                                mem[mem[64]] = _2378 + -mem[64] - 27
                                mem[64] = _2378 + 5
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _2987
                        else:
                            mem[0] = 2
                            s = 0
                            t = sha3(2)
                            while s < stor2.length.field_1 % 128:
                                mem[_2138 + s + 32] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            _2766 = mem[_1320]
                            s = 0
                            while s < _2766:
                                mem[_2138 + stor2.length.field_1 % 128 + s + 32] = mem[_1320 + s + 32]
                                s = s + 32
                                continue 
                            mem[_2138 + stor2.length.field_1 % 128 + _2766 + 32] = '.json'
                            if ceil32(_2766) <= _2766:
                                _3131 = mem[64]
                                mem[mem[64]] = _2138 + stor2.length.field_1 % 128 + _2766 + -mem[64] + 5
                                mem[64] = _2138 + stor2.length.field_1 % 128 + _2766 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _3131
                            else:
                                _3171 = mem[64]
                                mem[mem[64]] = _2138 + stor2.length.field_1 % 128 + _2766 + -mem[64] + 5
                                mem[64] = _2138 + stor2.length.field_1 % 128 + _2766 + 37
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 0)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _3171
        if idx >= mem[_346]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _346 + 32] = balanceOf[idx][address(arg1)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _692 = mem[64]
    mem[mem[64]] = 64
    _705 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 96
    u = mem[64] + 96
    while idx < _705:
        mem[u] = t + -_692 - 96
        _1314 = mem[s]
        _1330 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _1330:
            mem[t + v + 32] = mem[_1314 + v + 32]
            v = v + 32
            continue 
        if ceil32(_1330) > _1330:
            mem[t + _1330 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_1330) + 32
        u = u + 32
        continue 
    mem[_692 + 32] = t - _692
    _1329 = mem[_346]
    mem[t] = mem[_346]
    mem[t + 32 len 32 * _1329] = mem[_346 + 32 len 32 * _1329]
    return memory
      from mem[64]
       len t + (32 * _1329) + -mem[64] + 32
}



}
