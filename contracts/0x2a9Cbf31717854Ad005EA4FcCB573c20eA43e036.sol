contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
mapping of uint256 totalSupply;
array of struct stor5;
uint256 stor6;
address owner;
uint256 stor7;
mapping of struct stor8;
mapping of uint256 nonce;
uint256 sub_5b8bbc24;
uint256 sub_f32201f4;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(totalSupply[arg1])
}

function sub_5b8bbc24(?) payable {
    return sub_5b8bbc24
}

function nonce(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[arg1]
}

function owner() payable {
    return address(owner)
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return totalSupply[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor2[address(arg1)][address(arg2)])
}

function sub_f32201f4(?) payable {
    return sub_f32201f4
}

function _fallback() payable {
    revert
}

function sub_b3e2fb77(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, '!owner'
    if arg1 < sub_5b8bbc24:
        revert with 0, 'bad value'
    sub_f32201f4 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, '!owner'
    address(owner) = arg1
    emit OwnershipTransferred(msg.sender, arg1);
}

function luck(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= sub_5b8bbc24:
        revert with 0, 'gem kind not exist'
    if not stor8[arg1].field_512:
        revert with 0, 'no entropy'
    return sha3(chainid, stor8[arg1].field_512, this.address, msg.sender, arg1, nonce[msg.sender], arg2)
}

function updateEntropy(uint256 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= sub_5b8bbc24:
        revert with 0, 'gem kind not exist'
    if stor8[arg1].field_1792 != msg.sender:
        if stor8[arg1].field_1536 != msg.sender:
            revert with 0, 'unauthorized'
    stor8[arg1].field_512 = arg2
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function updateMiningData(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg1 >= sub_5b8bbc24:
        revert with 0, 'gem kind not exist'
    if stor8[arg1].field_1792 != msg.sender:
        revert with 0, 'not gem manager'
    if arg2 <= 0:
        revert with 0, 'bad difficulty'
    if arg2 > 0x100000000000000000000000000000000:
        revert with 0, 'bad difficulty'
    if arg3 < 10000:
        revert with 0, 'bad multiplier'
    if arg3 > 10^10:
        revert with 0, 'bad multiplier'
    if arg4 <= 0:
        revert with 0, 'bad gems per mine'
    if arg4 > 10^6:
        revert with 0, 'bad gems per mine'
    stor8[arg1].field_768 = arg2
    stor8[arg1].field_1280 = arg3
    stor8[arg1].field_1024 = arg4
}

function sub_ad1e8b37(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    idx = 0
    while idx < ('cd', 4).length:
        if cd[((32 * idx) + cd[4] + 36)] >= sub_5b8bbc24:
            revert with 0, 'gem kind not exist'
        if stor8[cd[((32 * idx) + cd[4] + 36)]].field_1792 != msg.sender:
            revert with 0, 'not gem manager'
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 8
        stor8[cd[((32 * idx) + cd[4] + 36)]].field_1536 = address(cd[36])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_b88c1afb(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    idx = 0
    while idx < ('cd', 4).length:
        if cd[((32 * idx) + cd[4] + 36)] >= sub_5b8bbc24:
            revert with 0, 'gem kind not exist'
        if stor8[cd[((32 * idx) + cd[4] + 36)]].field_1792 != msg.sender:
            revert with 0, 'not gem manager'
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 8
        stor8[cd[((32 * idx) + cd[4] + 36)]].field_2048 = address(cd[36])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_5d4b60aa(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if cd[((32 * idx) + cd[4] + 36)] >= sub_5b8bbc24:
            revert with 0, 'gem kind not exist'
        if stor8[cd[((32 * idx) + cd[4] + 36)]].field_1792 != msg.sender:
            revert with 0, 'not gem manager'
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 8
        stor8[cd[((32 * idx) + cd[4] + 36)]].field_1792 = 0
        stor8[cd[((32 * idx) + cd[4] + 36)]].field_2048 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a41b41d2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if cd[((32 * idx) + cd[4] + 36)] >= sub_5b8bbc24:
            revert with 0, 'gem kind not exist'
        if stor8[cd[((32 * idx) + cd[4] + 36)]].field_2048 != msg.sender:
            revert with 0, 'not pending manager'
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 8
        stor8[cd[((32 * idx) + cd[4] + 36)]].field_2048 = 0
        stor8[cd[((32 * idx) + cd[4] + 36)]].field_1792 = msg.sender or Mask(96, 160, stor8[cd[((32 * idx) + cd[4] + 36)]].field_1792)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function initialize(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        uint8(stor5.length) = 34
        stor5.length.field_8 = 0
        stor5.length.field_120 = Mask(136, 0, 'Provably Rare Gem')
        idx = 0
        while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        uint8(stor5.length) = 34
        stor5.length.field_8 = 0
        stor5.length.field_120 = Mask(136, 0, 'Provably Rare Gem')
        idx = 0
        while stor5.length.field_1 + 31 / 32 > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6 = 1
    uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
    sub_f32201f4 = arg1
    emit OwnershipTransferred(0, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
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
        if not stor2[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
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

function mine(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor6 != 1:
        revert with 0, '!lock'
    stor6 = 2
    if arg1 >= sub_5b8bbc24:
        revert with 0, 'gem kind not exist'
    if not stor8[arg1].field_512:
        revert with 0, 'no entropy'
    if nonce[msg.sender] == -1:
        revert with 0, 17
    nonce[msg.sender]++
    if arg1 >= sub_5b8bbc24:
        revert with 0, 'gem kind not exist'
    if not stor8[arg1].field_768:
        revert with 0, 18
    if sha3(chainid, stor8[arg1].field_512, this.address, msg.sender, arg1, nonce[msg.sender], arg2) > -1 / stor8[arg1].field_768:
        revert with 0, 'salt not good enough'
    if stor8[arg1].field_768 and stor8[arg1].field_1280 > -1 / stor8[arg1].field_768:
        revert with 0, 17
    if 1 > !(stor8[arg1].field_768 * stor8[arg1].field_1280 / 10000):
        revert with 0, 17
    stor8[arg1].field_768 = (stor8[arg1].field_768 * stor8[arg1].field_1280 / 10000) + 1
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg1][address(msg.sender)] > !stor8[arg1].field_1024:
        revert with 0, 17
    balanceOf[arg1][address(msg.sender)] += stor8[arg1].field_1024
    emit TransferSingle(arg1, stor8[arg1].field_1024, msg.sender, 0, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg1, stor8[arg1].field_1024, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if totalSupply[arg1] > !stor8[arg1].field_1024:
        revert with 0, 17
    totalSupply[arg1] += stor8[arg1].field_1024
    stor6 = 1
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
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 1)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function craft(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if stor6 != 1:
        revert with 0, '!lock'
    stor6 = 2
    if arg1 >= sub_5b8bbc24:
        revert with 0, 'gem kind not exist'
    if stor8[arg1].field_1536 != msg.sender:
        revert with 0, 'not gem crafter'
    if not arg3:
        revert with 0, 'ERC1155: mint to the zero address'
    if not arg2:
        if balanceOf[arg1][address(arg3)] > !stor8[arg1].field_1024:
            revert with 0, 17
        balanceOf[arg1][address(arg3)] += stor8[arg1].field_1024
        emit TransferSingle(arg1, stor8[arg1].field_1024, msg.sender, 0, arg3);
        if ext_code.size(arg3):
            require ext_code.size(arg3)
            call arg3.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, arg1, stor8[arg1].field_1024, 160, 0
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if totalSupply[arg1] > !stor8[arg1].field_1024:
            revert with 0, 17
        totalSupply[arg1] += stor8[arg1].field_1024
    else:
        if balanceOf[arg1][address(arg3)] > !arg2:
            revert with 0, 17
        balanceOf[arg1][address(arg3)] += arg2
        emit TransferSingle(arg1, arg2, msg.sender, 0, arg3);
        if ext_code.size(arg3):
            require ext_code.size(arg3)
            call arg3.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, arg1, arg2, 160, 0
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if totalSupply[arg1] > !arg2:
            revert with 0, 17
        totalSupply[arg1] += arg2
    stor6 = 1
}

function name() payable {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function sub_089b1367(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    if cd[4] >= sub_5b8bbc24:
        revert with 0, 'gem kind not exist'
    if stor8[cd[4]].field_1792 != msg.sender:
        revert with 0, 'not gem manager'
    if stor8[cd[4]].field_0:
        if stor8[cd[4]].field_0 == uint255(stor8[cd[4]].field_0) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor8[cd[4]].field_0 = 0
            idx = 0
            while (uint255(stor8[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                stor8[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor8[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor8[cd[4]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(stor8[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                stor8[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[cd[4]].field_0 == stor8[cd[4]].field_1 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor8[cd[4]].field_0 = 0
            idx = 0
            while stor8[cd[4]].field_1 + 31 / 32 > idx:
                stor8[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor8[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor8[cd[4]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor8[cd[4]].field_1 + 31 / 32 > idx:
                stor8[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
    if stor8[cd[4]].field_256:
        if stor8[cd[4]].field_256 == uint255(stor8[cd[4]].field_256) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 68).length:
            stor8[cd[4]].field_256 = 0
            idx = 0
            while (uint255(stor8[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                stor8[cd[4]][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor8[cd[4]].field_256 = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor8[cd[4]][s + 1].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while (uint255(stor8[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                stor8[cd[4]][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[cd[4]].field_256 == stor8[cd[4]].field_257 < 32:
            revert with 0, 34
        if not ('cd', 68).length:
            stor8[cd[4]].field_256 = 0
            idx = 0
            while stor8[cd[4]].field_257 + 31 / 32 > idx:
                stor8[cd[4]][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor8[cd[4]].field_256 = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor8[cd[4]][s + 1].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while stor8[cd[4]].field_257 + 31 / 32 > idx:
                stor8[cd[4]][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_626bc15b(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    if sub_5b8bbc24 >= sub_f32201f4:
        revert with 0, 'reach max gem'
    if arg3 <= 0:
        revert with 0, 'bad difficulty'
    if arg3 > 0x100000000000000000000000000000000:
        revert with 0, 'bad difficulty'
    if arg4 <= 0:
        revert with 0, 'bad gems per mine'
    if arg4 > 10^6:
        revert with 0, 'bad gems per mine'
    if arg5 < 10000:
        revert with 0, 'bad multiplier'
    if arg5 > 10^10:
        revert with 0, 'bad multiplier'
    if not address(arg7):
        revert with 0, 'bad manager'
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if sub_5b8bbc24 == -1:
        revert with 0, 17
    sub_5b8bbc24++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = address(arg6)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = address(arg7)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416] = 0
    if stor8[stor10].field_0:
        if stor8[stor10].field_0 == uint255(stor8[stor10].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor10][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor10].field_0 = 0
            idx = 0
            while (uint255(stor8[stor10].field_0) * 0.5) + 31 / 32 > idx:
                stor8[stor10][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor10].field_0 == stor8[stor10].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor10][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor10].field_0 = 0
            idx = 0
            while stor8[stor10].field_1 + 31 / 32 > idx:
                stor8[stor10][idx].field_0 = 0
                idx = idx + 1
                continue 
    if stor8[stor10].field_256:
        if stor8[stor10].field_256 == uint255(stor8[stor10].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            stor8[stor10][1][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
        else:
            stor8[stor10].field_256 = 0
            idx = 0
            while (uint255(stor8[stor10].field_256) * 0.5) + 31 / 32 > idx:
                stor8[stor10][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor10].field_256 == stor8[stor10].field_257 < 32:
            revert with 0, 34
        if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            stor8[stor10][1][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
        else:
            stor8[stor10].field_256 = 0
            idx = 0
            while stor8[stor10].field_257 + 31 / 32 > idx:
                stor8[stor10][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    stor8[stor10].field_512 = 0
    stor8[stor10].field_768 = arg3
    stor8[stor10].field_1024 = arg4
    stor8[stor10].field_1280 = arg5
    stor8[stor10].field_1536 = address(arg6)
    stor8[stor10].field_1792 = address(arg7)
    stor8[stor10].field_2048 = 0
    stor8[stor10].field_2304 = 0
    emit Create(sub_5b8bbc24);
    return sub_5b8bbc24
}

function gems(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor8[arg1].field_0:
            if stor8[arg1].field_0 == uint255(stor8[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8[arg1].field_0):
                if 31 >= uint255(stor8[arg1].field_0) * 0.5:
                    mem[128] = 256 * stor8[arg1].field_8
                else:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor8[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
                revert with 0, 34
            if stor8[arg1].field_1:
                if 31 >= stor8[arg1].field_1:
                    mem[128] = 256 * stor8[arg1].field_8
                else:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor8[arg1].field_256:
            if stor8[arg1].field_256 == uint255(stor8[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if stor8[arg1].field_256:
                if stor8[arg1].field_256 == uint255(stor8[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor8[arg1].field_256):
                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = 0
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = uint255(stor8[arg1].field_256) * 0.5
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512 len ceil32(uint255(stor8[arg1].field_256) * 0.5)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]
                    if ceil32(uint255(stor8[arg1].field_256) * 0.5) > uint255(stor8[arg1].field_256) * 0.5:
                        mem[(uint255(stor8[arg1].field_256) * 0.5) + (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512] = 0
                else:
                    if 31 >= uint255(stor8[arg1].field_256) * 0.5:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor8[arg1].field_264
                    else:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = stor8[arg1][1].field_0
                        idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor8[arg1].field_256) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor8[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = 0
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = uint255(stor8[arg1].field_256) * 0.5
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512 len ceil32(uint255(stor8[arg1].field_256) * 0.5)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]
                    if ceil32(uint255(stor8[arg1].field_256) * 0.5) > uint255(stor8[arg1].field_256) * 0.5:
                        mem[(uint255(stor8[arg1].field_256) * 0.5) + (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512] = 0
            else:
                if stor8[arg1].field_256 == stor8[arg1].field_257 < 32:
                    revert with 0, 34
                if not stor8[arg1].field_257:
                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = 0
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = uint255(stor8[arg1].field_256) * 0.5
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512 len ceil32(uint255(stor8[arg1].field_256) * 0.5)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]
                    if ceil32(uint255(stor8[arg1].field_256) * 0.5) > uint255(stor8[arg1].field_256) * 0.5:
                        mem[(uint255(stor8[arg1].field_256) * 0.5) + (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512] = 0
                else:
                    if 31 >= stor8[arg1].field_257:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor8[arg1].field_264
                    else:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = stor8[arg1][1].field_0
                        idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor8[arg1].field_257 + 128 > idx:
                            mem[idx + 32] = stor8[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = 0
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = uint255(stor8[arg1].field_256) * 0.5
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512 len ceil32(uint255(stor8[arg1].field_256) * 0.5)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]
                    if ceil32(uint255(stor8[arg1].field_256) * 0.5) > uint255(stor8[arg1].field_256) * 0.5:
                        mem[(uint255(stor8[arg1].field_256) * 0.5) + (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512] = 0
            return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], 2 * Mask(256, -1, stor8[arg1].field_256), mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]), 
                   ceil32(uint255(stor8[arg1].field_0) * 0.5) + 320,
                   stor8[arg1].field_512,
                   stor8[arg1].field_768,
                   stor8[arg1].field_1024,
                   stor8[arg1].field_1280,
                   stor8[arg1].field_1536,
                   stor8[arg1].field_1792,
                   stor8[arg1].field_2048
        if stor8[arg1].field_256 == stor8[arg1].field_257 < 32:
            revert with 0, 34
        if stor8[arg1].field_256:
            if stor8[arg1].field_256 == uint255(stor8[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor8[arg1].field_256):
                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor8[arg1].field_257) + 480] = 0
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257) + 480] = stor8[arg1].field_257
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257) + 512 len ceil32(stor8[arg1].field_257)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(stor8[arg1].field_257)]
                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                    mem[stor8[arg1].field_257 + (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257) + 512] = 0
            else:
                if 31 >= uint255(stor8[arg1].field_256) * 0.5:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor8[arg1].field_264
                else:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = stor8[arg1][1].field_0
                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor8[arg1].field_256) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor8[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor8[arg1].field_257) + 480] = 0
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257) + 480] = stor8[arg1].field_257
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257) + 512 len ceil32(stor8[arg1].field_257)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(stor8[arg1].field_257)]
                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                    mem[stor8[arg1].field_257 + (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257) + 512] = 0
        else:
            if stor8[arg1].field_256 == stor8[arg1].field_257 < 32:
                revert with 0, 34
            if not stor8[arg1].field_257:
                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor8[arg1].field_257) + 480] = 0
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257) + 480] = stor8[arg1].field_257
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257) + 512 len ceil32(stor8[arg1].field_257)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(stor8[arg1].field_257)]
                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                    mem[stor8[arg1].field_257 + (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257) + 512] = 0
            else:
                if 31 >= stor8[arg1].field_257:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor8[arg1].field_264
                else:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = stor8[arg1][1].field_0
                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor8[arg1].field_257 + 128 > idx:
                        mem[idx + 32] = stor8[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor8[arg1].field_257) + 480] = 0
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257) + 480] = stor8[arg1].field_257
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257) + 512 len ceil32(stor8[arg1].field_257)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(stor8[arg1].field_257)]
                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                    mem[stor8[arg1].field_257 + (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257) + 512] = 0
        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], stor8[arg1].field_256, mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(stor8[arg1].field_257)]), 
               ceil32(uint255(stor8[arg1].field_0) * 0.5) + 320,
               stor8[arg1].field_512,
               stor8[arg1].field_768,
               stor8[arg1].field_1024,
               stor8[arg1].field_1280,
               stor8[arg1].field_1536,
               stor8[arg1].field_1792,
               stor8[arg1].field_2048
    if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
        revert with 0, 34
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor8[arg1].field_0):
            if 31 >= uint255(stor8[arg1].field_0) * 0.5:
                mem[128] = 256 * stor8[arg1].field_8
            else:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor8[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 0, 34
        if stor8[arg1].field_1:
            if 31 >= stor8[arg1].field_1:
                mem[128] = 256 * stor8[arg1].field_8
            else:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor8[arg1].field_256:
        if stor8[arg1].field_256 == uint255(stor8[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if stor8[arg1].field_256:
            if stor8[arg1].field_256 == uint255(stor8[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor8[arg1].field_256):
                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = 0
                mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = uint255(stor8[arg1].field_256) * 0.5
                mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512 len ceil32(uint255(stor8[arg1].field_256) * 0.5)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]
                if ceil32(uint255(stor8[arg1].field_256) * 0.5) > uint255(stor8[arg1].field_256) * 0.5:
                    mem[(uint255(stor8[arg1].field_256) * 0.5) + (2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512] = 0
            else:
                if 31 >= uint255(stor8[arg1].field_256) * 0.5:
                    mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor8[arg1].field_264
                else:
                    mem[ceil32(stor8[arg1].field_1) + 160] = stor8[arg1][1].field_0
                    idx = ceil32(stor8[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor8[arg1].field_1) + (uint255(stor8[arg1].field_256) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor8[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = 0
                mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = uint255(stor8[arg1].field_256) * 0.5
                mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512 len ceil32(uint255(stor8[arg1].field_256) * 0.5)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]
                if ceil32(uint255(stor8[arg1].field_256) * 0.5) > uint255(stor8[arg1].field_256) * 0.5:
                    mem[(uint255(stor8[arg1].field_256) * 0.5) + (2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512] = 0
        else:
            if stor8[arg1].field_256 == stor8[arg1].field_257 < 32:
                revert with 0, 34
            if not stor8[arg1].field_257:
                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = 0
                mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = uint255(stor8[arg1].field_256) * 0.5
                mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512 len ceil32(uint255(stor8[arg1].field_256) * 0.5)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]
                if ceil32(uint255(stor8[arg1].field_256) * 0.5) > uint255(stor8[arg1].field_256) * 0.5:
                    mem[(uint255(stor8[arg1].field_256) * 0.5) + (2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512] = 0
            else:
                if 31 >= stor8[arg1].field_257:
                    mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor8[arg1].field_264
                else:
                    mem[ceil32(stor8[arg1].field_1) + 160] = stor8[arg1][1].field_0
                    idx = ceil32(stor8[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor8[arg1].field_1) + stor8[arg1].field_257 + 128 > idx:
                        mem[idx + 32] = stor8[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = 0
                mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 480] = uint255(stor8[arg1].field_256) * 0.5
                mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512 len ceil32(uint255(stor8[arg1].field_256) * 0.5)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]
                if ceil32(uint255(stor8[arg1].field_256) * 0.5) > uint255(stor8[arg1].field_256) * 0.5:
                    mem[(uint255(stor8[arg1].field_256) * 0.5) + (2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 512] = 0
        return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], 2 * Mask(256, -1, stor8[arg1].field_256), mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]), 
               ceil32(stor8[arg1].field_1) + 320,
               stor8[arg1].field_512,
               stor8[arg1].field_768,
               stor8[arg1].field_1024,
               stor8[arg1].field_1280,
               stor8[arg1].field_1536,
               stor8[arg1].field_1792,
               stor8[arg1].field_2048
    if stor8[arg1].field_256 == stor8[arg1].field_257 < 32:
        revert with 0, 34
    if stor8[arg1].field_256:
        if stor8[arg1].field_256 == uint255(stor8[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor8[arg1].field_256):
            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor8[arg1].field_257) + 480] = 0
            mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor8[arg1].field_257) + 480] = stor8[arg1].field_257
            mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor8[arg1].field_257) + 512 len ceil32(stor8[arg1].field_257)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(stor8[arg1].field_257)]
            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                mem[stor8[arg1].field_257 + (2 * ceil32(stor8[arg1].field_1)) + ceil32(stor8[arg1].field_257) + 512] = 0
        else:
            if 31 >= uint255(stor8[arg1].field_256) * 0.5:
                mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor8[arg1].field_264
            else:
                mem[ceil32(stor8[arg1].field_1) + 160] = stor8[arg1][1].field_0
                idx = ceil32(stor8[arg1].field_1) + 160
                s = 0
                while ceil32(stor8[arg1].field_1) + (uint255(stor8[arg1].field_256) * 0.5) + 128 > idx:
                    mem[idx + 32] = stor8[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor8[arg1].field_257) + 480] = 0
            mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor8[arg1].field_257) + 480] = stor8[arg1].field_257
            mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor8[arg1].field_257) + 512 len ceil32(stor8[arg1].field_257)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(stor8[arg1].field_257)]
            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                mem[stor8[arg1].field_257 + (2 * ceil32(stor8[arg1].field_1)) + ceil32(stor8[arg1].field_257) + 512] = 0
    else:
        if stor8[arg1].field_256 == stor8[arg1].field_257 < 32:
            revert with 0, 34
        if not stor8[arg1].field_257:
            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor8[arg1].field_257) + 480] = 0
            mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor8[arg1].field_257) + 480] = stor8[arg1].field_257
            mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor8[arg1].field_257) + 512 len ceil32(stor8[arg1].field_257)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(stor8[arg1].field_257)]
            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                mem[stor8[arg1].field_257 + (2 * ceil32(stor8[arg1].field_1)) + ceil32(stor8[arg1].field_257) + 512] = 0
        else:
            if 31 >= stor8[arg1].field_257:
                mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor8[arg1].field_264
            else:
                mem[ceil32(stor8[arg1].field_1) + 160] = stor8[arg1][1].field_0
                idx = ceil32(stor8[arg1].field_1) + 160
                s = 0
                while ceil32(stor8[arg1].field_1) + stor8[arg1].field_257 + 128 > idx:
                    mem[idx + 32] = stor8[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor8[arg1].field_257) + 480] = 0
            mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor8[arg1].field_257) + 480] = stor8[arg1].field_257
            mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor8[arg1].field_257) + 512 len ceil32(stor8[arg1].field_257)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(stor8[arg1].field_257)]
            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                mem[stor8[arg1].field_257 + (2 * ceil32(stor8[arg1].field_1)) + ceil32(stor8[arg1].field_257) + 512] = 0
    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], stor8[arg1].field_256, mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(stor8[arg1].field_257)]), 
           ceil32(stor8[arg1].field_1) + 320,
           stor8[arg1].field_512,
           stor8[arg1].field_768,
           stor8[arg1].field_1024,
           stor8[arg1].field_1280,
           stor8[arg1].field_1536,
           stor8[arg1].field_1792,
           stor8[arg1].field_2048
}



}
