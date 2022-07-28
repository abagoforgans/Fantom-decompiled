contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
address owner;
mapping of struct stor4;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
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

function ownerBurn(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[arg1][address(msg.sender)] < arg2:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg1][address(msg.sender)] -= arg2
    emit TransferSingle(arg1, arg2, msg.sender, msg.sender, 0);
}

function setURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
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
}

function sub_40550b94(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    if bool(stor4[arg1].field_0):
        if bool(stor4[arg1].field_0) == uint255(stor4[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor4[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[arg1].field_0 = 0
            idx = 0
            while uint255(stor4[arg1].field_1) + 31 / 32 > idx:
                stor4[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4[arg1].field_0) == stor4[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor4[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[arg1].field_0 = 0
            idx = 0
            while stor4[arg1].field_1 % 128 + 31 / 32 > idx:
                stor4[arg1][idx].field_0 = 0
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
    if ceil32(arg5.length) + 128 > test266151307() or ceil32(arg5.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
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

function mint(address arg1, uint256 arg2, uint256 arg3, string arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    require msg.sender == owner
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
            args msg.sender, 0, arg2, arg3, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if bool(stor4[arg2].field_0):
        if bool(stor4[arg2].field_0) == uint255(stor4[arg2].field_1) < 32:
            revert with 'NH{q', 34
        if arg4.length:
            stor4[arg2][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor4[arg2].field_0 = 0
            idx = 0
            while uint255(stor4[arg2].field_1) + 31 / 32 > idx:
                stor4[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4[arg2].field_0) == stor4[arg2].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            stor4[arg2][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor4[arg2].field_0 = 0
            idx = 0
            while stor4[arg2].field_1 % 128 + 31 / 32 > idx:
                stor4[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
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

function symbols(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor4[arg1].field_0):
        if bool(stor4[arg1].field_0) == uint255(stor4[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor4[arg1].field_0):
            if bool(stor4[arg1].field_0) == uint255(stor4[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor4[arg1].field_1):
                if 31 < uint255(stor4[arg1].field_1):
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor4[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor4[arg1].field_1)), data=mem[128 len ceil32(uint255(stor4[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor4[arg1].field_8)
        else:
            if bool(stor4[arg1].field_0) == stor4[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_1 % 128:
                if 31 < stor4[arg1].field_1 % 128:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor4[arg1].field_1)), data=mem[128 len ceil32(uint255(stor4[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor4[arg1].field_8)
        mem[ceil32(uint255(stor4[arg1].field_1)) + 192 len ceil32(uint255(stor4[arg1].field_1))] = mem[128 len ceil32(uint255(stor4[arg1].field_1))]
        if ceil32(uint255(stor4[arg1].field_1)) > uint255(stor4[arg1].field_1):
            mem[ceil32(uint255(stor4[arg1].field_1)) + uint255(stor4[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor4[arg1].field_1)), data=mem[128 len ceil32(uint255(stor4[arg1].field_1))], mem[(2 * ceil32(uint255(stor4[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor4[arg1].field_1))]), 
    if bool(stor4[arg1].field_0) == stor4[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor4[arg1].field_0):
        if bool(stor4[arg1].field_0) == uint255(stor4[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor4[arg1].field_1):
            if 31 < uint255(stor4[arg1].field_1):
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor4[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0 % 128, data=mem[128 len ceil32(stor4[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4[arg1].field_8)
    else:
        if bool(stor4[arg1].field_0) == stor4[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_1 % 128:
            if 31 < stor4[arg1].field_1 % 128:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0 % 128, data=mem[128 len ceil32(stor4[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4[arg1].field_8)
    mem[ceil32(stor4[arg1].field_1 % 128) + 192 len ceil32(stor4[arg1].field_1 % 128)] = mem[128 len ceil32(stor4[arg1].field_1 % 128)]
    if ceil32(stor4[arg1].field_1 % 128) > stor4[arg1].field_1 % 128:
        mem[ceil32(stor4[arg1].field_1 % 128) + stor4[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor4[arg1].field_0 % 128, data=mem[128 len ceil32(stor4[arg1].field_1 % 128)], mem[(2 * ceil32(stor4[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor4[arg1].field_1 % 128)]), 
}

function sub_8224e236(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require msg.sender == owner
    idx = arg2
    while idx <= arg3:
        _92 = mem[64]
        mem[64] = mem[64] + 32
        mem[_92] = 0
        if not address(arg1):
            revert with 0, 'ERC1155: mint to the zero address'
        _94 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_94]:
            revert with 'NH{q', 50
        mem[_94 + 32] = idx
        mem[_94 + 64] = 1
        mem[64] = _94 + 128
        mem[_94 + 96] = 1
        mem[32] = sha3(idx, 0)
        if balanceOf[idx][address(arg1)] > -2:
            revert with 'NH{q', 17
        balanceOf[idx][address(arg1)]++
        mem[_94 + 128] = idx
        mem[_94 + 160] = 1
        emit TransferSingle(idx, 1, msg.sender, 0, address(arg1));
        if ext_code.size(address(arg1)) > 0:
            mem[_94 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
            mem[_94 + 132] = msg.sender
            mem[_94 + 164] = 0
            mem[_94 + 196] = idx
            mem[_94 + 228] = 1
            mem[_94 + 260] = 160
            mem[_94 + 292] = 0
            s = 0
            while s < 0:
                mem[_94 + s + 324] = mem[_92 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(arg1))
            call address(arg1).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, idx, 1, 160, 0
            mem[_94 + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[64] = _94 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        mem[32] = 4
        if bool(stor4[idx].field_0):
            if bool(stor4[idx].field_0) == uint255(stor4[idx].field_1) < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(idx, 4)
            if not mem[96]:
                stor4[idx].field_0 = 0
                s = sha3(sha3(idx, 4))
                while sha3(sha3(idx, 4)) + (uint255(stor4[idx].field_1) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                stor4[idx].field_0 = (2 * mem[96]) + 1
                t = sha3(sha3(idx, 4))
                s = 128
                while mem[96] + 128 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(idx, 4)) + (Mask(251, 0, mem[96] + 31) >> 5)
                while sha3(sha3(idx, 4)) + (uint255(stor4[idx].field_1) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        else:
            if bool(stor4[idx].field_0) == stor4[idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(idx, 4)
            if not mem[96]:
                stor4[idx].field_0 = 0
                s = sha3(sha3(idx, 4))
                while sha3(sha3(idx, 4)) + (stor4[idx].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                stor4[idx].field_0 = (2 * mem[96]) + 1
                t = sha3(sha3(idx, 4))
                s = 128
                while mem[96] + 128 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(idx, 4)) + (Mask(251, 0, mem[96] + 31) >> 5)
                while sha3(sha3(idx, 4)) + (stor4[idx].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
