contract main {




// =====================  Runtime code  =====================


#
#  - sub_9f35eb33(?)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
address owner;
address sub_49e43873Address;
array of uint256 sub_694fe83a;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function sub_49e43873(?) payable {
    return sub_49e43873Address
}

function getCost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_694fe83a.length:
        revert with 'NH{q', 50
    return sub_694fe83a[arg1]
}

function sub_694fe83a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_694fe83a.length
    return sub_694fe83a[arg1]
}

function owner() payable {
    return owner
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_4f6f6399(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_694fe83a.length++
    sub_694fe83a[sub_694fe83a.length] = arg1
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

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
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
    if ceil32(arg5.length) + 128 > test266151307() or ceil32(arg5.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[ceil32(arg5.length) + 128] = 1
    if 0 >= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
        revert with 'NH{q', 50
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

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
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
    if (32 * arg1.length) + (32 * arg2.length) + 160 > test266151307() or (32 * arg2.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
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
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 0)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len 32 * arg1.length] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length]
    return Array(len=arg1.length, data=mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length])
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    if (32 * arg3.length) + 128 > test266151307() or (32 * arg3.length) + 128 < 96:
        revert with 'NH{q', 65
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
    if (32 * arg3.length) + (32 * arg4.length) + 160 > test266151307() or (32 * arg4.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[(32 * arg3.length) + 128] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = (32 * arg3.length) + 160
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
    if (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 > test266151307() or ceil32(arg5.length) + 192 < 160:
        revert with 'NH{q', 65
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    if arg1 != msg.sender:
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
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + (32 * arg3.length) + 160]:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[0] = arg2
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > -mem[(32 * idx) + (32 * arg3.length) + 160] - 1:
            revert with 'NH{q', 17
        balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + (32 * arg3.length) + 160]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 64
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 288 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 224] = (32 * arg3.length) + 96
    mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 288] = arg4.length
    mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 320 len 32 * arg4.length] = mem[(32 * arg3.length) + 160 len 32 * arg4.length]
    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                       Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                       mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 224 len ceil32(arg5.length) + -arg5.length + 32],
                       arg3.length,
                       mem[128 len 32 * arg3.length],
                       arg4.length,
                       mem[(32 * arg3.length) + 160 len 32 * arg4.length],
                       msg.sender,
                       arg1,
                       arg2,
    if ext_code.size(arg2) <= 0:
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 196] = msg.sender
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 228] = arg1
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 260] = 160
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 356] = arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 292] = (32 * arg3.length) + 192
    mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388] = arg4.length
    mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 420 len 32 * arg4.length] = mem[(32 * arg3.length) + 160 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 324] = (32 * arg3.length) + (32 * arg4.length) + 224
    mem[(64 * arg3.length) + (64 * arg4.length) + ceil32(arg5.length) + 420] = arg5.length
    mem[(64 * arg3.length) + (64 * arg4.length) + ceil32(arg5.length) + 452 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
    if ceil32(arg5.length) > arg5.length:
        mem[(64 * arg3.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 452] = 0
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[(32 * arg3.length) + 160 len 32 * arg4.length], arg5.length, arg5[all], mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require not 0, ext_call.return_data[4 len 28]
        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192] + 32 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if not (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192:
        revert with Error(string arg1), 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192]) + 292 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192])] = mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 224 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192])]
    if ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192]) <= mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192]:
        revert with Error(string arg1), 
                    32,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192],
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 224 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192])]
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192]) + mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192] + 292] = 0
    revert with 0, 
                32,
                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192],
                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 224 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192])],
                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + (2 * ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192])) + 292 len 2 * ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + ext_call.return_data[0] + 192])]
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor2.length.field_1:
                if not arg1:
                    mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '/'
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = '0'
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 226] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258] = mem[ceil32(stor2.length.field_1) + 192]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 290] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
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
                mem[ceil32(stor2.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + mem[ceil32(stor2.length.field_1) + ceil32(s) + 160] + 257] = 0
                return Array(len=mem[ceil32(stor2.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]), 
            if 31 >= stor2.length.field_1:
                mem[128] = 256 * stor2.length.field_8
                if not arg1:
                    mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '/'
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = '0'
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 226] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258] = mem[ceil32(stor2.length.field_1) + 192]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 290] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
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
                mem[ceil32(stor2.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + mem[ceil32(stor2.length.field_1) + ceil32(s) + 160] + 257] = 0
                return Array(len=mem[ceil32(stor2.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]), 
            mem[128] = uint256(stor2.field_0)
            idx = 128
            s = 0
            while stor2.length.field_1 + 96 > idx:
                mem[idx + 32] = stor2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not arg1:
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '/'
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = '0'
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 226] = 32
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258] = mem[ceil32(stor2.length.field_1) + 192]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 290] = 0
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
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
            mem[ceil32(stor2.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor2.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + mem[ceil32(stor2.length.field_1) + ceil32(s) + 160] + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor2.length.field_1:
            if not arg1:
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '/'
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = '0'
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 226] = 32
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258] = mem[ceil32(stor2.length.field_1) + 192]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 290] = 0
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
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
            mem[ceil32(stor2.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor2.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + mem[ceil32(stor2.length.field_1) + ceil32(s) + 160] + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]) + 32], 
        if 31 >= stor2.length.field_1:
            mem[128] = 256 * stor2.length.field_8
        else:
            mem[128] = uint256(stor2.field_0)
            idx = 128
            s = 0
            while stor2.length.field_1 + 96 > idx:
                mem[idx + 32] = stor2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if not arg1:
            mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '/'
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = '0'
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 226] = 32
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258] = mem[ceil32(stor2.length.field_1) + 192]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 290] = 0
            return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
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
        mem[ceil32(stor2.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + mem[ceil32(stor2.length.field_1) + ceil32(s) + 160] + 257] = 0
        return Array(len=mem[ceil32(stor2.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor2.length.field_1
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor2.length.field_1:
            if not arg1:
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '/'
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = '0'
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 226] = 32
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258] = mem[ceil32(stor2.length.field_1) + 192]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 290] = 0
                return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor2.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                        _3519 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3519)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3519)]
                        if ceil32(_3519) > _3519:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3519 + 257] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3519) + 32], 
                    _3555 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3555)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3555)]
                    if ceil32(_3555) > _3555:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3555 + 257] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3555) + 32], 
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3520 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3520)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3520)]
                    if ceil32(_3520) > _3520:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3520 + 257] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3520) + 32], 
                _3556 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3556)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3556)]
                if ceil32(_3556) > _3556:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3556 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3556) + 32], 
            mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3521 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3521)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3521)]
                    if ceil32(_3521) > _3521:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3521 + 257] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3521) + 32], 
                _3557 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3557)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3557)]
                if ceil32(_3557) > _3557:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3557 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3557) + 32], 
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3522 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3522)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3522)]
                if ceil32(_3522) > _3522:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3522 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3522) + 32], 
            _3558 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3558)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3558)]
            if ceil32(_3558) > _3558:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3558 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3558) + 32], 
        if 31 >= stor2.length.field_1:
            mem[128] = 256 * stor2.length.field_8
            if not arg1:
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '/'
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = '0'
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 226] = 32
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258] = mem[ceil32(stor2.length.field_1) + 192]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 290] = 0
                return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor2.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                        _3523 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3523)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3523)]
                        if ceil32(_3523) > _3523:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3523 + 257] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3523) + 32], 
                    _3561 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3561)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3561)]
                    if ceil32(_3561) > _3561:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3561 + 257] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3561) + 32], 
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3524 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3524)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3524)]
                    if ceil32(_3524) > _3524:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3524 + 257] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3524) + 32], 
                _3562 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3562)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3562)]
                if ceil32(_3562) > _3562:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3562 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3562) + 32], 
            mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3525 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3525)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3525)]
                    if ceil32(_3525) > _3525:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3525 + 257] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3525) + 32], 
                _3563 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3563)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3563)]
                if ceil32(_3563) > _3563:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3563 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3563) + 32], 
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3526 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3526)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3526)]
                if ceil32(_3526) > _3526:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3526 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3526) + 32], 
            _3564 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3564)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3564)]
            if ceil32(_3564) > _3564:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3564 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3564) + 32], 
        mem[0] = 2
        mem[128] = uint256(stor2.field_0)
        idx = 128
        s = 0
        while stor2.length.field_1 + 96 > idx:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '/'
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = '0'
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 226] = 32
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258] = mem[ceil32(stor2.length.field_1) + 192]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 290] = 0
            return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor2.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
                    _4263 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4263)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4263)]
                    if ceil32(_4263) > _4263:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4263 + 257] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4263) + 32], 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 0
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
                _4279 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4279)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4279)]
                if ceil32(_4279) > _4279:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4279 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4279) + 32], 
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
                _4264 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4264)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4264)]
                if ceil32(_4264) > _4264:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4264 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4264) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 0
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
            _4280 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4280)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4280)]
            if ceil32(_4280) > _4280:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4280 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4280) + 32], 
        mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        if ceil32(stor2.length.field_1) <= stor2.length.field_1:
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
                _4265 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4265)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4265)]
                if ceil32(_4265) > _4265:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4265 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4265) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 0
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
            _4281 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4281)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4281)]
            if ceil32(_4281) > _4281:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4281 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4281) + 32], 
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
            _4266 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4266)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4266)]
            if ceil32(_4266) > _4266:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4266 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4266) + 32], 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 0
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
        _4282 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4282)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4282)]
        if ceil32(_4282) > _4282:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4282 + 257] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4282) + 32], 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor2.length.field_1:
        if not arg1:
            mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '/'
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = '0'
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 226] = 32
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258] = mem[ceil32(stor2.length.field_1) + 192]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 290] = 0
            return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor2.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3527 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3527)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3527)]
                    if ceil32(_3527) > _3527:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3527 + 257] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3527) + 32], 
                _3565 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3565)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3565)]
                if ceil32(_3565) > _3565:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3565 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3565) + 32], 
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3528 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3528)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3528)]
                if ceil32(_3528) > _3528:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3528 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3528) + 32], 
            _3566 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3566)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3566)]
            if ceil32(_3566) > _3566:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3566 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3566) + 32], 
        mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
        if ceil32(stor2.length.field_1) <= stor2.length.field_1:
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3529 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3529)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3529)]
                if ceil32(_3529) > _3529:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3529 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3529) + 32], 
            _3567 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3567)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3567)]
            if ceil32(_3567) > _3567:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3567 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3567) + 32], 
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            _3530 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3530)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3530)]
            if ceil32(_3530) > _3530:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3530 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3530) + 32], 
        _3568 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3568)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3568)]
        if ceil32(_3568) > _3568:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3568 + 257] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3568) + 32], 
    if 31 >= stor2.length.field_1:
        mem[128] = 256 * stor2.length.field_8
        if not arg1:
            mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '/'
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = '0'
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 226] = 32
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258] = mem[ceil32(stor2.length.field_1) + 192]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 290] = 0
            return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor2.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3531 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3531)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3531)]
                    if ceil32(_3531) > _3531:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3531 + 257] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3531) + 32], 
                _3571 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3571)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3571)]
                if ceil32(_3571) > _3571:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3571 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3571) + 32], 
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3532 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3532)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3532)]
                if ceil32(_3532) > _3532:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3532 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3532) + 32], 
            _3572 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3572)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3572)]
            if ceil32(_3572) > _3572:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3572 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3572) + 32], 
        mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
        if ceil32(stor2.length.field_1) <= stor2.length.field_1:
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3533 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3533)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3533)]
                if ceil32(_3533) > _3533:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3533 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3533) + 32], 
            _3573 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3573)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3573)]
            if ceil32(_3573) > _3573:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3573 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3573) + 32], 
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            _3534 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3534)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3534)]
            if ceil32(_3534) > _3534:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3534 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3534) + 32], 
        _3574 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_3574)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3574)]
        if ceil32(_3574) > _3574:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3574 + 257] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_3574) + 32], 
    mem[0] = 2
    mem[128] = uint256(stor2.field_0)
    idx = 128
    s = 0
    while stor2.length.field_1 + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '/'
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = '0'
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 226] = 32
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258] = mem[ceil32(stor2.length.field_1) + 192]
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 290 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 290] = 0
        return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 258 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
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
    mem[ceil32(stor2.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        if ceil32(stor2.length.field_1) <= stor2.length.field_1:
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
                _4267 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4267)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4267)]
                if ceil32(_4267) > _4267:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4267 + 257] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4267) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 0
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
            _4283 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4283)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4283)]
            if ceil32(_4283) > _4283:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4283 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4283) + 32], 
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
            _4268 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4268)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4268)]
            if ceil32(_4268) > _4268:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4268 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4268) + 32], 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 0
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
        _4284 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4284)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4284)]
        if ceil32(_4284) > _4284:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4284 + 257] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4284) + 32], 
    mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = '/'
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 193 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
    if ceil32(stor2.length.field_1) <= stor2.length.field_1:
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
            _4269 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4269)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4269)]
            if ceil32(_4269) > _4269:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4269 + 257] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4269) + 32], 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 0
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
        _4285 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4285)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4285)]
        if ceil32(_4285) > _4285:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4285 + 257] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4285) + 32], 
    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
        _4270 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4270)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4270)]
        if ceil32(_4270) > _4270:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4270 + 257] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4270) + 32], 
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 0
    mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 193] = 32
    _4286 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 257 len ceil32(_4286)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4286)]
    if ceil32(_4286) > _4286:
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4286 + 257] = 0
    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 225 len ceil32(_4286) + 32], 
}



}
