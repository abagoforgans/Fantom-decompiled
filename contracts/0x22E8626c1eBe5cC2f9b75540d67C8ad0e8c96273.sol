contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const sub_116cad41(?) = 6

const sub_1ea5b694(?) = 0

const sub_5f6b0d41(?) = 1

const sub_6eeb9570(?) = 3

const sub_7e3323f6(?) = 2

const sub_a47c3330(?) = 4

const sub_e9cf5065(?) = 5


mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of uint256 stor2;
mapping of uint256 totalSupply;
address owner;
array of uint256 stor5;

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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function sub_28af8808(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 6:
        revert with 0, 'ERC1155#mint: NONEXISTENT_ID'
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg1][address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[arg1][address(msg.sender)] += arg2
    emit TransferSingle(arg1, arg2, msg.sender, 0, msg.sender);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg1, arg2, 160, arg3.length, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 1) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if totalSupply[arg1] > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply[arg1] += arg2
}

function setURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
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

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 3
    if totalSupply[arg1] <= 0:
        revert with 0, 'ERC1155#uri: NONEXISTENT_TOKEN'
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1 <= 0:
            revert with 0, 'ERC1155#uri: BLANK_URI'
        if not arg1:
            mem[96] = 1
            mem[128] = '0'
            if bool(stor5.length):
                if bool(stor5.length) == stor5.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor5.length):
                    mem[192] = Mask(248, 8, stor5.length)
                else:
                    if bool(stor5.length) != 1:
                        mem[64] = 1
                        _243 = mem[160]
                        mem[33] = mem[160]
                        mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_243) > _243:
                            mem[_243 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_243) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < stor5.length.field_1:
                        mem[idx + 192] = stor5[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[stor5.length.field_1 + 192] = '0'
                mem[stor5.length.field_1 + 193] = 32
                mem[stor5.length.field_1 + 225] = mem[160]
                mem[stor5.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[stor5.length.field_1 + mem[160] + 257] = 0
                return Array(len=mem[160], data=mem[stor5.length.field_1 + 257 len ceil32(mem[160])])
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor5.length):
                mem[192] = Mask(248, 8, stor5.length)
            else:
                if bool(stor5.length) != 1:
                    mem[64] = 1
                    _245 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_245) > _245:
                        mem[_245 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_245) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor5.length.field_1:
                    mem[idx + 192] = stor5[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor5.length.field_1 + 192] = '0'
            mem[stor5.length.field_1 + 193] = 32
            mem[stor5.length.field_1 + 225] = mem[160]
            mem[stor5.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor5.length.field_1 + mem[160] + 257] = 0
            return Array(len=mem[160], data=mem[stor5.length.field_1 + 257 len ceil32(mem[160])])
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
            _718 = mem[64]
            if bool(stor5.length):
                if bool(stor5.length) == stor5.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor5.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor5.length)
                    _790 = mem[96]
                    mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        _1174 = mem[64]
                        mem[64] = mem[64] + stor5.length.field_1 + mem[96] + 32
                        mem[_718 + stor5.length.field_1 + mem[96] + 32] = 32
                        _1262 = mem[_1174]
                        mem[_718 + stor5.length.field_1 + _790 + 64] = mem[_1174]
                        mem[_718 + stor5.length.field_1 + _790 + 96 len ceil32(_1262)] = mem[_1174 + 32 len ceil32(_1262)]
                        if ceil32(_1262) > _1262:
                            mem[_718 + stor5.length.field_1 + _790 + _1262 + 96] = 0
                        return memory
                          from mem[64]
                           len _718 + stor5.length.field_1 + _790 + ceil32(_1262) + -mem[64] + 96
                    mem[mem[64] + stor5.length.field_1 + mem[96] + 32] = 0
                    _1199 = mem[64]
                    mem[64] = mem[64] + stor5.length.field_1 + mem[96] + 32
                    mem[_718 + stor5.length.field_1 + mem[96] + 32] = 32
                    _1278 = mem[_1199]
                    mem[_718 + stor5.length.field_1 + _790 + 64] = mem[_1199]
                    mem[_718 + stor5.length.field_1 + _790 + 96 len ceil32(_1278)] = mem[_1199 + 32 len ceil32(_1278)]
                    if ceil32(_1278) > _1278:
                        mem[_718 + stor5.length.field_1 + _790 + _1278 + 96] = 0
                    return 32, mem[_718 + stor5.length.field_1 + _790 + 64 len ceil32(_1278) + 32]
                if bool(stor5.length) != 1:
                    _798 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(_798) <= _798:
                        _1176 = mem[64]
                        mem[64] = _798
                        mem[_798] = 32
                        _1263 = mem[_1176]
                        mem[_798 + 32] = mem[_1176]
                        mem[_798 + 64 len ceil32(_1263)] = mem[_1176 + 32 len ceil32(_1263)]
                        if ceil32(_1263) > _1263:
                            mem[_798 + _1263 + 64] = 0
                        return 32, mem[_798 + 32 len ceil32(_1263) + 32]
                    mem[_798] = 0
                    _1201 = mem[64]
                    mem[64] = _798
                    mem[_798] = 32
                    _1279 = mem[_1201]
                    mem[_798 + 32] = mem[_1201]
                    mem[_798 + 64 len ceil32(_1279)] = mem[_1201 + 32 len ceil32(_1279)]
                    if ceil32(_1279) > _1279:
                        mem[_798 + _1279 + 64] = 0
                    return 32, mem[_798 + 32 len ceil32(_1279) + 32]
                mem[0] = 5
                idx = 0
                s = 0
                while idx < stor5.length.field_1:
                    mem[_718 + idx + 32] = stor5[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1175 = mem[96]
                mem[_718 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1175) <= _1175:
                    _1534 = mem[64]
                    mem[64] = _718 + stor5.length.field_1 + _1175 + 32
                    mem[_718 + stor5.length.field_1 + _1175 + 32] = 32
                    _1630 = mem[_1534]
                    mem[_718 + stor5.length.field_1 + _1175 + 64] = mem[_1534]
                    mem[_718 + stor5.length.field_1 + _1175 + 96 len ceil32(_1630)] = mem[_1534 + 32 len ceil32(_1630)]
                    if ceil32(_1630) > _1630:
                        mem[_718 + stor5.length.field_1 + _1175 + _1630 + 96] = 0
                    return 32, mem[_718 + stor5.length.field_1 + _1175 + 64 len ceil32(_1630) + 32]
                mem[_718 + stor5.length.field_1 + _1175 + 32] = 0
                _1543 = mem[64]
                mem[64] = _718 + stor5.length.field_1 + _1175 + 32
                mem[_718 + stor5.length.field_1 + _1175 + 32] = 32
                _1638 = mem[_1543]
                mem[_718 + stor5.length.field_1 + _1175 + 64] = mem[_1543]
                mem[_718 + stor5.length.field_1 + _1175 + 96 len ceil32(_1638)] = mem[_1543 + 32 len ceil32(_1638)]
                if ceil32(_1638) > _1638:
                    mem[_718 + stor5.length.field_1 + _1175 + _1638 + 96] = 0
                return 32, mem[_718 + stor5.length.field_1 + _1175 + 64 len ceil32(_1638) + 32]
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor5.length):
                mem[mem[64] + 32] = Mask(248, 8, stor5.length)
                _799 = mem[96]
                mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_799) <= _799:
                    _1177 = mem[64]
                    mem[64] = _718 + stor5.length.field_1 + _799 + 32
                    mem[_718 + stor5.length.field_1 + _799 + 32] = 32
                    _1264 = mem[_1177]
                    mem[_718 + stor5.length.field_1 + _799 + 64] = mem[_1177]
                    mem[_718 + stor5.length.field_1 + _799 + 96 len ceil32(_1264)] = mem[_1177 + 32 len ceil32(_1264)]
                    if ceil32(_1264) > _1264:
                        mem[_718 + stor5.length.field_1 + _799 + _1264 + 96] = 0
                    return 32, mem[_718 + stor5.length.field_1 + _799 + 64 len ceil32(_1264) + 32]
                mem[_718 + stor5.length.field_1 + _799 + 32] = 0
                _1203 = mem[64]
                mem[64] = _718 + stor5.length.field_1 + _799 + 32
                mem[_718 + stor5.length.field_1 + _799 + 32] = 32
                _1280 = mem[_1203]
                mem[_718 + stor5.length.field_1 + _799 + 64] = mem[_1203]
                mem[_718 + stor5.length.field_1 + _799 + 96 len ceil32(_1280)] = mem[_1203 + 32 len ceil32(_1280)]
                if ceil32(_1280) > _1280:
                    mem[_718 + stor5.length.field_1 + _799 + _1280 + 96] = 0
                return 32, mem[_718 + stor5.length.field_1 + _799 + 64 len ceil32(_1280) + 32]
            if bool(stor5.length) != 1:
                _806 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_806) <= _806:
                    _1179 = mem[64]
                    mem[64] = _806
                    mem[_806] = 32
                    _1265 = mem[_1179]
                    mem[_806 + 32] = mem[_1179]
                    mem[_806 + 64 len ceil32(_1265)] = mem[_1179 + 32 len ceil32(_1265)]
                    if ceil32(_1265) > _1265:
                        mem[_806 + _1265 + 64] = 0
                    return 32, mem[_806 + 32 len ceil32(_1265) + 32]
                mem[_806] = 0
                _1205 = mem[64]
                mem[64] = _806
                mem[_806] = 32
                _1281 = mem[_1205]
                mem[_806 + 32] = mem[_1205]
                mem[_806 + 64 len ceil32(_1281)] = mem[_1205 + 32 len ceil32(_1281)]
                if ceil32(_1281) > _1281:
                    mem[_806 + _1281 + 64] = 0
                return 32, mem[_806 + 32 len ceil32(_1281) + 32]
            mem[0] = 5
            idx = 0
            s = 0
            while idx < stor5.length.field_1:
                mem[_718 + idx + 32] = stor5[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1178 = mem[96]
            mem[_718 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1178) <= _1178:
                _1535 = mem[64]
                mem[64] = _718 + stor5.length.field_1 + _1178 + 32
                mem[_718 + stor5.length.field_1 + _1178 + 32] = 32
                _1631 = mem[_1535]
                mem[_718 + stor5.length.field_1 + _1178 + 64] = mem[_1535]
                mem[_718 + stor5.length.field_1 + _1178 + 96 len ceil32(_1631)] = mem[_1535 + 32 len ceil32(_1631)]
                if ceil32(_1631) > _1631:
                    mem[_718 + stor5.length.field_1 + _1178 + _1631 + 96] = 0
                return 32, mem[_718 + stor5.length.field_1 + _1178 + 64 len ceil32(_1631) + 32]
            mem[_718 + stor5.length.field_1 + _1178 + 32] = 0
            _1545 = mem[64]
            mem[64] = _718 + stor5.length.field_1 + _1178 + 32
            mem[_718 + stor5.length.field_1 + _1178 + 32] = 32
            _1639 = mem[_1545]
            mem[_718 + stor5.length.field_1 + _1178 + 64] = mem[_1545]
            mem[_718 + stor5.length.field_1 + _1178 + 96 len ceil32(_1639)] = mem[_1545 + 32 len ceil32(_1639)]
            if ceil32(_1639) > _1639:
                mem[_718 + stor5.length.field_1 + _1178 + _1639 + 96] = 0
            return 32, mem[_718 + stor5.length.field_1 + _1178 + 64 len ceil32(_1639) + 32]
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
        _719 = mem[64]
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor5.length):
                mem[mem[64] + 32] = Mask(248, 8, stor5.length)
                _791 = mem[96]
                mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _1180 = mem[64]
                    mem[64] = mem[64] + stor5.length.field_1 + mem[96] + 32
                    mem[_719 + stor5.length.field_1 + mem[96] + 32] = 32
                    _1266 = mem[_1180]
                    mem[_719 + stor5.length.field_1 + _791 + 64] = mem[_1180]
                    mem[_719 + stor5.length.field_1 + _791 + 96 len ceil32(_1266)] = mem[_1180 + 32 len ceil32(_1266)]
                    if ceil32(_1266) > _1266:
                        mem[_719 + stor5.length.field_1 + _791 + _1266 + 96] = 0
                    return memory
                      from mem[64]
                       len _719 + stor5.length.field_1 + _791 + ceil32(_1266) + -mem[64] + 96
                mem[mem[64] + stor5.length.field_1 + mem[96] + 32] = 0
                _1207 = mem[64]
                mem[64] = mem[64] + stor5.length.field_1 + mem[96] + 32
                mem[_719 + stor5.length.field_1 + mem[96] + 32] = 32
                _1282 = mem[_1207]
                mem[_719 + stor5.length.field_1 + _791 + 64] = mem[_1207]
                mem[_719 + stor5.length.field_1 + _791 + 96 len ceil32(_1282)] = mem[_1207 + 32 len ceil32(_1282)]
                if ceil32(_1282) > _1282:
                    mem[_719 + stor5.length.field_1 + _791 + _1282 + 96] = 0
                return 32, mem[_719 + stor5.length.field_1 + _791 + 64 len ceil32(_1282) + 32]
            if bool(stor5.length) != 1:
                _800 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_800) <= _800:
                    _1182 = mem[64]
                    mem[64] = _800
                    mem[_800] = 32
                    _1267 = mem[_1182]
                    mem[_800 + 32] = mem[_1182]
                    mem[_800 + 64 len ceil32(_1267)] = mem[_1182 + 32 len ceil32(_1267)]
                    if ceil32(_1267) > _1267:
                        mem[_800 + _1267 + 64] = 0
                    return 32, mem[_800 + 32 len ceil32(_1267) + 32]
                mem[_800] = 0
                _1209 = mem[64]
                mem[64] = _800
                mem[_800] = 32
                _1283 = mem[_1209]
                mem[_800 + 32] = mem[_1209]
                mem[_800 + 64 len ceil32(_1283)] = mem[_1209 + 32 len ceil32(_1283)]
                if ceil32(_1283) > _1283:
                    mem[_800 + _1283 + 64] = 0
                return 32, mem[_800 + 32 len ceil32(_1283) + 32]
            mem[0] = 5
            idx = 0
            s = 0
            while idx < stor5.length.field_1:
                mem[_719 + idx + 32] = stor5[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1181 = mem[96]
            mem[_719 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1181) <= _1181:
                _1536 = mem[64]
                mem[64] = _719 + stor5.length.field_1 + _1181 + 32
                mem[_719 + stor5.length.field_1 + _1181 + 32] = 32
                _1632 = mem[_1536]
                mem[_719 + stor5.length.field_1 + _1181 + 64] = mem[_1536]
                mem[_719 + stor5.length.field_1 + _1181 + 96 len ceil32(_1632)] = mem[_1536 + 32 len ceil32(_1632)]
                if ceil32(_1632) > _1632:
                    mem[_719 + stor5.length.field_1 + _1181 + _1632 + 96] = 0
                return 32, mem[_719 + stor5.length.field_1 + _1181 + 64 len ceil32(_1632) + 32]
            mem[_719 + stor5.length.field_1 + _1181 + 32] = 0
            _1547 = mem[64]
            mem[64] = _719 + stor5.length.field_1 + _1181 + 32
            mem[_719 + stor5.length.field_1 + _1181 + 32] = 32
            _1640 = mem[_1547]
            mem[_719 + stor5.length.field_1 + _1181 + 64] = mem[_1547]
            mem[_719 + stor5.length.field_1 + _1181 + 96 len ceil32(_1640)] = mem[_1547 + 32 len ceil32(_1640)]
            if ceil32(_1640) > _1640:
                mem[_719 + stor5.length.field_1 + _1181 + _1640 + 96] = 0
            return 32, mem[_719 + stor5.length.field_1 + _1181 + 64 len ceil32(_1640) + 32]
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor5.length):
            mem[mem[64] + 32] = Mask(248, 8, stor5.length)
            _801 = mem[96]
            mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_801) <= _801:
                _1183 = mem[64]
                mem[64] = _719 + stor5.length.field_1 + _801 + 32
                mem[_719 + stor5.length.field_1 + _801 + 32] = 32
                _1268 = mem[_1183]
                mem[_719 + stor5.length.field_1 + _801 + 64] = mem[_1183]
                mem[_719 + stor5.length.field_1 + _801 + 96 len ceil32(_1268)] = mem[_1183 + 32 len ceil32(_1268)]
                if ceil32(_1268) > _1268:
                    mem[_719 + stor5.length.field_1 + _801 + _1268 + 96] = 0
                return 32, mem[_719 + stor5.length.field_1 + _801 + 64 len ceil32(_1268) + 32]
            mem[_719 + stor5.length.field_1 + _801 + 32] = 0
            _1211 = mem[64]
            mem[64] = _719 + stor5.length.field_1 + _801 + 32
            mem[_719 + stor5.length.field_1 + _801 + 32] = 32
            _1284 = mem[_1211]
            mem[_719 + stor5.length.field_1 + _801 + 64] = mem[_1211]
            mem[_719 + stor5.length.field_1 + _801 + 96 len ceil32(_1284)] = mem[_1211 + 32 len ceil32(_1284)]
            if ceil32(_1284) > _1284:
                mem[_719 + stor5.length.field_1 + _801 + _1284 + 96] = 0
            return 32, mem[_719 + stor5.length.field_1 + _801 + 64 len ceil32(_1284) + 32]
        if bool(stor5.length) != 1:
            _807 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_807) <= _807:
                _1185 = mem[64]
                mem[64] = _807
                mem[_807] = 32
                _1269 = mem[_1185]
                mem[_807 + 32] = mem[_1185]
                mem[_807 + 64 len ceil32(_1269)] = mem[_1185 + 32 len ceil32(_1269)]
                if ceil32(_1269) > _1269:
                    mem[_807 + _1269 + 64] = 0
                return 32, mem[_807 + 32 len ceil32(_1269) + 32]
            mem[_807] = 0
            _1213 = mem[64]
            mem[64] = _807
            mem[_807] = 32
            _1285 = mem[_1213]
            mem[_807 + 32] = mem[_1213]
            mem[_807 + 64 len ceil32(_1285)] = mem[_1213 + 32 len ceil32(_1285)]
            if ceil32(_1285) > _1285:
                mem[_807 + _1285 + 64] = 0
            return 32, mem[_807 + 32 len ceil32(_1285) + 32]
        mem[0] = 5
        idx = 0
        s = 0
        while idx < stor5.length.field_1:
            mem[_719 + idx + 32] = stor5[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1184 = mem[96]
        mem[_719 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_1184) <= _1184:
            _1537 = mem[64]
            mem[64] = _719 + stor5.length.field_1 + _1184 + 32
            mem[_719 + stor5.length.field_1 + _1184 + 32] = 32
            _1633 = mem[_1537]
            mem[_719 + stor5.length.field_1 + _1184 + 64] = mem[_1537]
            mem[_719 + stor5.length.field_1 + _1184 + 96 len ceil32(_1633)] = mem[_1537 + 32 len ceil32(_1633)]
            if ceil32(_1633) > _1633:
                mem[_719 + stor5.length.field_1 + _1184 + _1633 + 96] = 0
            return 32, mem[_719 + stor5.length.field_1 + _1184 + 64 len ceil32(_1633) + 32]
        mem[_719 + stor5.length.field_1 + _1184 + 32] = 0
        _1549 = mem[64]
        mem[64] = _719 + stor5.length.field_1 + _1184 + 32
        mem[_719 + stor5.length.field_1 + _1184 + 32] = 32
        _1641 = mem[_1549]
        mem[_719 + stor5.length.field_1 + _1184 + 64] = mem[_1549]
        mem[_719 + stor5.length.field_1 + _1184 + 96 len ceil32(_1641)] = mem[_1549 + 32 len ceil32(_1641)]
        if ceil32(_1641) > _1641:
            mem[_719 + stor5.length.field_1 + _1184 + _1641 + 96] = 0
        return 32, mem[_719 + stor5.length.field_1 + _1184 + 64 len ceil32(_1641) + 32]
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if stor5.length.field_1 <= 0:
        revert with 0, 'ERC1155#uri: BLANK_URI'
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor5.length):
                mem[192] = Mask(248, 8, stor5.length)
            else:
                if bool(stor5.length) != 1:
                    mem[64] = 1
                    _247 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_247) > _247:
                        mem[_247 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_247) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor5.length.field_1:
                    mem[idx + 192] = stor5[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor5.length.field_1 + 192] = '0'
            mem[stor5.length.field_1 + 193] = 32
            mem[stor5.length.field_1 + 225] = mem[160]
            mem[stor5.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor5.length.field_1 + mem[160] + 257] = 0
            return Array(len=mem[160], data=mem[stor5.length.field_1 + 257 len ceil32(mem[160])])
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor5.length):
            mem[192] = Mask(248, 8, stor5.length)
        else:
            if bool(stor5.length) != 1:
                mem[64] = 1
                _249 = mem[160]
                mem[33] = mem[160]
                mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_249) > _249:
                    mem[_249 + 65] = 0
                return memory
                  from mem[64]
                   len ceil32(_249) + -mem[64] + 65
            idx = 0
            s = 0
            while idx < stor5.length.field_1:
                mem[idx + 192] = stor5[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor5.length.field_1 + 192] = '0'
        mem[stor5.length.field_1 + 193] = 32
        mem[stor5.length.field_1 + 225] = mem[160]
        mem[stor5.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor5.length.field_1 + mem[160] + 257] = 0
        return Array(len=mem[160], data=mem[stor5.length.field_1 + 257 len ceil32(mem[160])])
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
        _720 = mem[64]
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor5.length):
                mem[mem[64] + 32] = Mask(248, 8, stor5.length)
                _794 = mem[96]
                mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _1186 = mem[64]
                    mem[64] = mem[64] + stor5.length.field_1 + mem[96] + 32
                    mem[_720 + stor5.length.field_1 + mem[96] + 32] = 32
                    _1270 = mem[_1186]
                    mem[_720 + stor5.length.field_1 + _794 + 64] = mem[_1186]
                    mem[_720 + stor5.length.field_1 + _794 + 96 len ceil32(_1270)] = mem[_1186 + 32 len ceil32(_1270)]
                    if ceil32(_1270) > _1270:
                        mem[_720 + stor5.length.field_1 + _794 + _1270 + 96] = 0
                    return memory
                      from mem[64]
                       len _720 + stor5.length.field_1 + _794 + ceil32(_1270) + -mem[64] + 96
                mem[mem[64] + stor5.length.field_1 + mem[96] + 32] = 0
                _1215 = mem[64]
                mem[64] = mem[64] + stor5.length.field_1 + mem[96] + 32
                mem[_720 + stor5.length.field_1 + mem[96] + 32] = 32
                _1286 = mem[_1215]
                mem[_720 + stor5.length.field_1 + _794 + 64] = mem[_1215]
                mem[_720 + stor5.length.field_1 + _794 + 96 len ceil32(_1286)] = mem[_1215 + 32 len ceil32(_1286)]
                if ceil32(_1286) > _1286:
                    mem[_720 + stor5.length.field_1 + _794 + _1286 + 96] = 0
                return 32, mem[_720 + stor5.length.field_1 + _794 + 64 len ceil32(_1286) + 32]
            if bool(stor5.length) != 1:
                _802 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_802) <= _802:
                    _1188 = mem[64]
                    mem[64] = _802
                    mem[_802] = 32
                    _1271 = mem[_1188]
                    mem[_802 + 32] = mem[_1188]
                    mem[_802 + 64 len ceil32(_1271)] = mem[_1188 + 32 len ceil32(_1271)]
                    if ceil32(_1271) > _1271:
                        mem[_802 + _1271 + 64] = 0
                    return 32, mem[_802 + 32 len ceil32(_1271) + 32]
                mem[_802] = 0
                _1217 = mem[64]
                mem[64] = _802
                mem[_802] = 32
                _1287 = mem[_1217]
                mem[_802 + 32] = mem[_1217]
                mem[_802 + 64 len ceil32(_1287)] = mem[_1217 + 32 len ceil32(_1287)]
                if ceil32(_1287) > _1287:
                    mem[_802 + _1287 + 64] = 0
                return 32, mem[_802 + 32 len ceil32(_1287) + 32]
            mem[0] = 5
            idx = 0
            s = 0
            while idx < stor5.length.field_1:
                mem[_720 + idx + 32] = stor5[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1187 = mem[96]
            mem[_720 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1187) <= _1187:
                _1538 = mem[64]
                mem[64] = _720 + stor5.length.field_1 + _1187 + 32
                mem[_720 + stor5.length.field_1 + _1187 + 32] = 32
                _1634 = mem[_1538]
                mem[_720 + stor5.length.field_1 + _1187 + 64] = mem[_1538]
                mem[_720 + stor5.length.field_1 + _1187 + 96 len ceil32(_1634)] = mem[_1538 + 32 len ceil32(_1634)]
                if ceil32(_1634) > _1634:
                    mem[_720 + stor5.length.field_1 + _1187 + _1634 + 96] = 0
                return 32, mem[_720 + stor5.length.field_1 + _1187 + 64 len ceil32(_1634) + 32]
            mem[_720 + stor5.length.field_1 + _1187 + 32] = 0
            _1551 = mem[64]
            mem[64] = _720 + stor5.length.field_1 + _1187 + 32
            mem[_720 + stor5.length.field_1 + _1187 + 32] = 32
            _1642 = mem[_1551]
            mem[_720 + stor5.length.field_1 + _1187 + 64] = mem[_1551]
            mem[_720 + stor5.length.field_1 + _1187 + 96 len ceil32(_1642)] = mem[_1551 + 32 len ceil32(_1642)]
            if ceil32(_1642) > _1642:
                mem[_720 + stor5.length.field_1 + _1187 + _1642 + 96] = 0
            return 32, mem[_720 + stor5.length.field_1 + _1187 + 64 len ceil32(_1642) + 32]
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor5.length):
            mem[mem[64] + 32] = Mask(248, 8, stor5.length)
            _803 = mem[96]
            mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_803) <= _803:
                _1189 = mem[64]
                mem[64] = _720 + stor5.length.field_1 + _803 + 32
                mem[_720 + stor5.length.field_1 + _803 + 32] = 32
                _1272 = mem[_1189]
                mem[_720 + stor5.length.field_1 + _803 + 64] = mem[_1189]
                mem[_720 + stor5.length.field_1 + _803 + 96 len ceil32(_1272)] = mem[_1189 + 32 len ceil32(_1272)]
                if ceil32(_1272) > _1272:
                    mem[_720 + stor5.length.field_1 + _803 + _1272 + 96] = 0
                return 32, mem[_720 + stor5.length.field_1 + _803 + 64 len ceil32(_1272) + 32]
            mem[_720 + stor5.length.field_1 + _803 + 32] = 0
            _1219 = mem[64]
            mem[64] = _720 + stor5.length.field_1 + _803 + 32
            mem[_720 + stor5.length.field_1 + _803 + 32] = 32
            _1288 = mem[_1219]
            mem[_720 + stor5.length.field_1 + _803 + 64] = mem[_1219]
            mem[_720 + stor5.length.field_1 + _803 + 96 len ceil32(_1288)] = mem[_1219 + 32 len ceil32(_1288)]
            if ceil32(_1288) > _1288:
                mem[_720 + stor5.length.field_1 + _803 + _1288 + 96] = 0
            return 32, mem[_720 + stor5.length.field_1 + _803 + 64 len ceil32(_1288) + 32]
        if bool(stor5.length) != 1:
            _808 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_808) <= _808:
                _1191 = mem[64]
                mem[64] = _808
                mem[_808] = 32
                _1273 = mem[_1191]
                mem[_808 + 32] = mem[_1191]
                mem[_808 + 64 len ceil32(_1273)] = mem[_1191 + 32 len ceil32(_1273)]
                if ceil32(_1273) > _1273:
                    mem[_808 + _1273 + 64] = 0
                return 32, mem[_808 + 32 len ceil32(_1273) + 32]
            mem[_808] = 0
            _1221 = mem[64]
            mem[64] = _808
            mem[_808] = 32
            _1289 = mem[_1221]
            mem[_808 + 32] = mem[_1221]
            mem[_808 + 64 len ceil32(_1289)] = mem[_1221 + 32 len ceil32(_1289)]
            if ceil32(_1289) > _1289:
                mem[_808 + _1289 + 64] = 0
            return 32, mem[_808 + 32 len ceil32(_1289) + 32]
        mem[0] = 5
        idx = 0
        s = 0
        while idx < stor5.length.field_1:
            mem[_720 + idx + 32] = stor5[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1190 = mem[96]
        mem[_720 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_1190) <= _1190:
            _1539 = mem[64]
            mem[64] = _720 + stor5.length.field_1 + _1190 + 32
            mem[_720 + stor5.length.field_1 + _1190 + 32] = 32
            _1635 = mem[_1539]
            mem[_720 + stor5.length.field_1 + _1190 + 64] = mem[_1539]
            mem[_720 + stor5.length.field_1 + _1190 + 96 len ceil32(_1635)] = mem[_1539 + 32 len ceil32(_1635)]
            if ceil32(_1635) > _1635:
                mem[_720 + stor5.length.field_1 + _1190 + _1635 + 96] = 0
            return 32, mem[_720 + stor5.length.field_1 + _1190 + 64 len ceil32(_1635) + 32]
        mem[_720 + stor5.length.field_1 + _1190 + 32] = 0
        _1553 = mem[64]
        mem[64] = _720 + stor5.length.field_1 + _1190 + 32
        mem[_720 + stor5.length.field_1 + _1190 + 32] = 32
        _1643 = mem[_1553]
        mem[_720 + stor5.length.field_1 + _1190 + 64] = mem[_1553]
        mem[_720 + stor5.length.field_1 + _1190 + 96 len ceil32(_1643)] = mem[_1553 + 32 len ceil32(_1643)]
        if ceil32(_1643) > _1643:
            mem[_720 + stor5.length.field_1 + _1190 + _1643 + 96] = 0
        return 32, mem[_720 + stor5.length.field_1 + _1190 + 64 len ceil32(_1643) + 32]
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
    _721 = mem[64]
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor5.length):
            mem[mem[64] + 32] = Mask(248, 8, stor5.length)
            _795 = mem[96]
            mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _1192 = mem[64]
                mem[64] = mem[64] + stor5.length.field_1 + mem[96] + 32
                mem[_721 + stor5.length.field_1 + mem[96] + 32] = 32
                _1274 = mem[_1192]
                mem[_721 + stor5.length.field_1 + _795 + 64] = mem[_1192]
                mem[_721 + stor5.length.field_1 + _795 + 96 len ceil32(_1274)] = mem[_1192 + 32 len ceil32(_1274)]
                if ceil32(_1274) > _1274:
                    mem[_721 + stor5.length.field_1 + _795 + _1274 + 96] = 0
                return memory
                  from mem[64]
                   len _721 + stor5.length.field_1 + _795 + ceil32(_1274) + -mem[64] + 96
            mem[mem[64] + stor5.length.field_1 + mem[96] + 32] = 0
            _1223 = mem[64]
            mem[64] = mem[64] + stor5.length.field_1 + mem[96] + 32
            mem[_721 + stor5.length.field_1 + mem[96] + 32] = 32
            _1290 = mem[_1223]
            mem[_721 + stor5.length.field_1 + _795 + 64] = mem[_1223]
            mem[_721 + stor5.length.field_1 + _795 + 96 len ceil32(_1290)] = mem[_1223 + 32 len ceil32(_1290)]
            if ceil32(_1290) > _1290:
                mem[_721 + stor5.length.field_1 + _795 + _1290 + 96] = 0
            return 32, mem[_721 + stor5.length.field_1 + _795 + 64 len ceil32(_1290) + 32]
        if bool(stor5.length) != 1:
            _804 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_804) <= _804:
                _1194 = mem[64]
                mem[64] = _804
                mem[_804] = 32
                _1275 = mem[_1194]
                mem[_804 + 32] = mem[_1194]
                mem[_804 + 64 len ceil32(_1275)] = mem[_1194 + 32 len ceil32(_1275)]
                if ceil32(_1275) > _1275:
                    mem[_804 + _1275 + 64] = 0
                return 32, mem[_804 + 32 len ceil32(_1275) + 32]
            mem[_804] = 0
            _1225 = mem[64]
            mem[64] = _804
            mem[_804] = 32
            _1291 = mem[_1225]
            mem[_804 + 32] = mem[_1225]
            mem[_804 + 64 len ceil32(_1291)] = mem[_1225 + 32 len ceil32(_1291)]
            if ceil32(_1291) > _1291:
                mem[_804 + _1291 + 64] = 0
            return 32, mem[_804 + 32 len ceil32(_1291) + 32]
        mem[0] = 5
        idx = 0
        s = 0
        while idx < stor5.length.field_1:
            mem[_721 + idx + 32] = stor5[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1193 = mem[96]
        mem[_721 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_1193) <= _1193:
            _1540 = mem[64]
            mem[64] = _721 + stor5.length.field_1 + _1193 + 32
            mem[_721 + stor5.length.field_1 + _1193 + 32] = 32
            _1636 = mem[_1540]
            mem[_721 + stor5.length.field_1 + _1193 + 64] = mem[_1540]
            mem[_721 + stor5.length.field_1 + _1193 + 96 len ceil32(_1636)] = mem[_1540 + 32 len ceil32(_1636)]
            if ceil32(_1636) > _1636:
                mem[_721 + stor5.length.field_1 + _1193 + _1636 + 96] = 0
            return 32, mem[_721 + stor5.length.field_1 + _1193 + 64 len ceil32(_1636) + 32]
        mem[_721 + stor5.length.field_1 + _1193 + 32] = 0
        _1555 = mem[64]
        mem[64] = _721 + stor5.length.field_1 + _1193 + 32
        mem[_721 + stor5.length.field_1 + _1193 + 32] = 32
        _1644 = mem[_1555]
        mem[_721 + stor5.length.field_1 + _1193 + 64] = mem[_1555]
        mem[_721 + stor5.length.field_1 + _1193 + 96 len ceil32(_1644)] = mem[_1555 + 32 len ceil32(_1644)]
        if ceil32(_1644) > _1644:
            mem[_721 + stor5.length.field_1 + _1193 + _1644 + 96] = 0
        return 32, mem[_721 + stor5.length.field_1 + _1193 + 64 len ceil32(_1644) + 32]
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor5.length):
        mem[mem[64] + 32] = Mask(248, 8, stor5.length)
        _805 = mem[96]
        mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_805) <= _805:
            _1195 = mem[64]
            mem[64] = _721 + stor5.length.field_1 + _805 + 32
            mem[_721 + stor5.length.field_1 + _805 + 32] = 32
            _1276 = mem[_1195]
            mem[_721 + stor5.length.field_1 + _805 + 64] = mem[_1195]
            mem[_721 + stor5.length.field_1 + _805 + 96 len ceil32(_1276)] = mem[_1195 + 32 len ceil32(_1276)]
            if ceil32(_1276) > _1276:
                mem[_721 + stor5.length.field_1 + _805 + _1276 + 96] = 0
            return 32, mem[_721 + stor5.length.field_1 + _805 + 64 len ceil32(_1276) + 32]
        mem[_721 + stor5.length.field_1 + _805 + 32] = 0
        _1227 = mem[64]
        mem[64] = _721 + stor5.length.field_1 + _805 + 32
        mem[_721 + stor5.length.field_1 + _805 + 32] = 32
        _1292 = mem[_1227]
        mem[_721 + stor5.length.field_1 + _805 + 64] = mem[_1227]
        mem[_721 + stor5.length.field_1 + _805 + 96 len ceil32(_1292)] = mem[_1227 + 32 len ceil32(_1292)]
        if ceil32(_1292) > _1292:
            mem[_721 + stor5.length.field_1 + _805 + _1292 + 96] = 0
        return 32, mem[_721 + stor5.length.field_1 + _805 + 64 len ceil32(_1292) + 32]
    if bool(stor5.length) != 1:
        _809 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_809) <= _809:
            _1197 = mem[64]
            mem[64] = _809
            mem[_809] = 32
            _1277 = mem[_1197]
            mem[_809 + 32] = mem[_1197]
            mem[_809 + 64 len ceil32(_1277)] = mem[_1197 + 32 len ceil32(_1277)]
            if ceil32(_1277) > _1277:
                mem[_809 + _1277 + 64] = 0
            return 32, mem[_809 + 32 len ceil32(_1277) + 32]
        mem[_809] = 0
        _1229 = mem[64]
        mem[64] = _809
        mem[_809] = 32
        _1293 = mem[_1229]
        mem[_809 + 32] = mem[_1229]
        mem[_809 + 64 len ceil32(_1293)] = mem[_1229 + 32 len ceil32(_1293)]
        if ceil32(_1293) > _1293:
            mem[_809 + _1293 + 64] = 0
        return 32, mem[_809 + 32 len ceil32(_1293) + 32]
    mem[0] = 5
    idx = 0
    s = 0
    while idx < stor5.length.field_1:
        mem[_721 + idx + 32] = stor5[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _1196 = mem[96]
    mem[_721 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_1196) <= _1196:
        _1541 = mem[64]
        mem[64] = _721 + stor5.length.field_1 + _1196 + 32
        mem[_721 + stor5.length.field_1 + _1196 + 32] = 32
        _1637 = mem[_1541]
        mem[_721 + stor5.length.field_1 + _1196 + 64] = mem[_1541]
        mem[_721 + stor5.length.field_1 + _1196 + 96 len ceil32(_1637)] = mem[_1541 + 32 len ceil32(_1637)]
        if ceil32(_1637) > _1637:
            mem[_721 + stor5.length.field_1 + _1196 + _1637 + 96] = 0
        return 32, mem[_721 + stor5.length.field_1 + _1196 + 64 len ceil32(_1637) + 32]
    mem[_721 + stor5.length.field_1 + _1196 + 32] = 0
    _1557 = mem[64]
    mem[64] = _721 + stor5.length.field_1 + _1196 + 32
    mem[_721 + stor5.length.field_1 + _1196 + 32] = 32
    _1645 = mem[_1557]
    mem[_721 + stor5.length.field_1 + _1196 + 64] = mem[_1557]
    mem[_721 + stor5.length.field_1 + _1196 + 96 len ceil32(_1645)] = mem[_1557 + 32 len ceil32(_1645)]
    if ceil32(_1645) > _1645:
        mem[_721 + stor5.length.field_1 + _1196 + _1645 + 96] = 0
    return 32, mem[_721 + stor5.length.field_1 + _1196 + 64 len ceil32(_1645) + 32]
}



}
