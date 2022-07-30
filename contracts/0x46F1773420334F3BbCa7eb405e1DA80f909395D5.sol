contract main {




// =====================  Runtime code  =====================


#
#  - getSheet(uint256 arg1)
#  - getLyric(uint256 arg1)
#  - tokenURI(uint256 arg1)
#  - getGenre(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
uint256 stor10;
address owner;
uint256 stor12;
address beneficiaryAddress;
uint256 maxSupply;
uint256 price;
mapping of uint256 stor16;
array of struct stor17;
array of struct stor19;
array of struct stor23;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function beneficiary() {
    return beneficiaryAddress
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function price() {
    return price
}

function maxSupply() {
    return maxSupply
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function changePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_24cc7aa6(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 1
    while idx <= ('cd', 4).length:
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = msg.sender
        mem[32] = 16
        stor16[address(msg.sender)] = mem[(32 * idx - 1) + floor32(('cd', 4).length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_c3122076(?) payable {
    mem[64] = 96
    require not msg.value
    if stor16[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'No free $FLOOT holder freebies available to this address'
    mem[0] = msg.sender
    mem[32] = 16
    idx = 1
    while idx <= stor16[address(msg.sender)]:
        stor12++
        _96 = mem[64]
        mem[64] = mem[64] + 32
        mem[_96] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor12]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor12] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor12
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
            stor7[stor12] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor12
            mem[32] = 2
            ownerOf[stor12] = msg.sender
            emit Transfer(0, msg.sender, stor12);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_96 + s + 32]
                    mem[0] = msg.sender
                    mem[32] = 16
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor12, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _190 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_190] == Mask(32, 224, mem[_190])
                if Mask(32, 224, mem[_190]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor12] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor12]
            stor9[stor12] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor12
            mem[32] = 2
            ownerOf[stor12] = msg.sender
            emit Transfer(0, msg.sender, stor12);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_96 + s + 32]
                    mem[0] = msg.sender
                    mem[32] = 16
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor12, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_191] == Mask(32, 224, mem[_191])
                if Mask(32, 224, mem[_191]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 16
        idx = idx + 1
        continue 
    stor16[address(msg.sender)] = 0
}

function claim(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if stor12 >= maxSupply:
        revert with 0, 'Max Supply Met, Minting is Over'
    if price != msg.value:
        revert with 0, 'Incorrect payment amount'
    if arg1 and price > -1 / arg1:
        revert with 'NH{q', 17
    idx = 0
    while idx < arg1:
        stor12++
        _99 = mem[64]
        mem[64] = mem[64] + 32
        mem[_99] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor12]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor12] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor12
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
            stor7[stor12] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor12
            mem[32] = 2
            ownerOf[stor12] = msg.sender
            emit Transfer(0, msg.sender, stor12);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_99 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor12, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _193 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_193] == Mask(32, 224, mem[_193])
                if Mask(32, 224, mem[_193]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor12] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor12]
            stor9[stor12] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor12
            mem[32] = 2
            ownerOf[stor12] = msg.sender
            emit Transfer(0, msg.sender, stor12);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_99 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor12, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _194 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_194] == Mask(32, 224, mem[_194])
                if Mask(32, 224, mem[_194]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    call beneficiaryAddress with:
       value arg1 * price wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = 1
}

function getTempo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'tempo'
    if not arg1:
        if not stor23.length:
            revert with 'NH{q', 18
        if sha3('tempo', '0') % stor23.length >= stor23.length:
            revert with 'NH{q', 50
        if stor23[('map', "'tempo'", "'0'") % stor23.length].field_0:
            if stor23[('map', "'tempo'", "'0'") % stor23.length].field_0 == stor23[('map', "'tempo'", "'0'") % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor23[('map', "'tempo'", "'0'") % stor23.length].field_0:
                if stor23[('map', "'tempo'", "'0'") % stor23.length].field_0 == stor23[('map', "'tempo'", "'0'") % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[('map', "'tempo'", "'0'") % stor23.length].field_1:
                    if 31 < stor23[('map', "'tempo'", "'0'") % stor23.length].field_1:
                        mem[294] = stor23[('map', "'tempo'", "'0'") % stor23.length].field_0
                        idx = 294
                        s = 0
                        while stor23[('map', "'tempo'", "'0'") % stor23.length].field_1 + 262 > idx:
                            mem[idx + 32] = stor23[(('map', "'tempo'", "'0'") % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor23[('map', "'tempo'", "'0'") % stor23.length].field_1), data=mem[294 len ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)]), 
                    mem[294] = 256 * stor23[('map', "'tempo'", "'0'") % stor23.length].field_8
            else:
                if stor23[('map', "'tempo'", "'0'") % stor23.length].field_0 == stor23[('map', "'tempo'", "'0'") % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[('map', "'tempo'", "'0'") % stor23.length].field_1:
                    if 31 < stor23[('map', "'tempo'", "'0'") % stor23.length].field_1:
                        mem[294] = stor23[('map', "'tempo'", "'0'") % stor23.length].field_0
                        idx = 294
                        s = 0
                        while stor23[('map', "'tempo'", "'0'") % stor23.length].field_1 + 262 > idx:
                            mem[idx + 32] = stor23[(('map', "'tempo'", "'0'") % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor23[('map', "'tempo'", "'0'") % stor23.length].field_1), data=mem[294 len ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)]), 
                    mem[294] = 256 * stor23[('map', "'tempo'", "'0'") % stor23.length].field_8
            mem[ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1) + 358 len ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)] = mem[294 len ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)]
            if ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1) > stor23[('map', "'tempo'", "'0'") % stor23.length].field_1:
                mem[ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1) + stor23[('map', "'tempo'", "'0'") % stor23.length].field_1 + 358] = 0
            return Array(len=2 * Mask(256, -1, stor23[('map', "'tempo'", "'0'") % stor23.length].field_1), data=mem[294 len ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)], mem[(2 * ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)) + 358 len 2 * ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)]), 
        if stor23[('map', "'tempo'", "'0'") % stor23.length].field_0 == stor23[('map', "'tempo'", "'0'") % stor23.length].field_1 < 32:
            revert with 'NH{q', 34
        if stor23[('map', "'tempo'", "'0'") % stor23.length].field_0:
            if stor23[('map', "'tempo'", "'0'") % stor23.length].field_0 == stor23[('map', "'tempo'", "'0'") % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor23[('map', "'tempo'", "'0'") % stor23.length].field_1:
                if 31 < stor23[('map', "'tempo'", "'0'") % stor23.length].field_1:
                    mem[294] = stor23[('map', "'tempo'", "'0'") % stor23.length].field_0
                    idx = 294
                    s = 0
                    while stor23[('map', "'tempo'", "'0'") % stor23.length].field_1 + 262 > idx:
                        mem[idx + 32] = stor23[(('map', "'tempo'", "'0'") % stor23.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor23[('map', "'tempo'", "'0'") % stor23.length].field_0, data=mem[294 len ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)]), 
                mem[294] = 256 * stor23[('map', "'tempo'", "'0'") % stor23.length].field_8
        else:
            if stor23[('map', "'tempo'", "'0'") % stor23.length].field_0 == stor23[('map', "'tempo'", "'0'") % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor23[('map', "'tempo'", "'0'") % stor23.length].field_1:
                if 31 < stor23[('map', "'tempo'", "'0'") % stor23.length].field_1:
                    mem[294] = stor23[('map', "'tempo'", "'0'") % stor23.length].field_0
                    idx = 294
                    s = 0
                    while stor23[('map', "'tempo'", "'0'") % stor23.length].field_1 + 262 > idx:
                        mem[idx + 32] = stor23[(('map', "'tempo'", "'0'") % stor23.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor23[('map', "'tempo'", "'0'") % stor23.length].field_0, data=mem[294 len ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)]), 
                mem[294] = 256 * stor23[('map', "'tempo'", "'0'") % stor23.length].field_8
        mem[ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1) + 358 len ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)] = mem[294 len ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)]
        if ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1) > stor23[('map', "'tempo'", "'0'") % stor23.length].field_1:
            mem[ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1) + stor23[('map', "'tempo'", "'0'") % stor23.length].field_1 + 358] = 0
        return Array(len=stor23[('map', "'tempo'", "'0'") % stor23.length].field_0, data=mem[294 len ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)], mem[(2 * ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)) + 358 len 2 * ceil32(stor23[('map', "'tempo'", "'0'") % stor23.length].field_1)]), 
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
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[160]:
                revert with 'NH{q', 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1154 = mem[64]
        _1162 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _2060 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_2060) <= _2060:
                _2776 = mem[64]
                mem[mem[64]] = _1154 + _1162 + _2060 - mem[64]
                mem[64] = _1154 + _1162 + _2060 + 32
                _2778 = sha3(mem[_2776 + 32 len mem[_2776]])
                if not stor23.length:
                    revert with 'NH{q', 18
                if sha3(mem[_2776 + 32 len mem[_2776]]) % stor23.length >= stor23.length:
                    revert with 'NH{q', 50
                if stor23[sha3(mem[_2776 + 32 len mem[_2776]]) % stor23.length].field_0:
                    if stor23[sha3(mem[_2776 + 32 len mem[_2776]]) % stor23.length].field_0 == stor23[sha3(mem[_2776 + 32 len mem[_2776]]) % stor23.length].field_1 < 32:
                        revert with 'NH{q', 34
                    mem[64] = _1154 + _1162 + _2060 + ceil32(stor23[sha3(mem[_2776 + 32 len mem[_2776]]) % stor23.length].field_1) + 64
                    if stor23[_2778 % stor23.length].field_0:
                        if stor23[_2778 % stor23.length].field_0 == stor23[_2778 % stor23.length].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor23[_2778 % stor23.length].field_1:
                            if 31 < stor23[_2778 % stor23.length].field_1:
                                mem[_1154 + _1162 + _2060 + 64] = stor23[_2778 % stor23.length].field_0
                                idx = _1154 + _1162 + _2060 + 64
                                s = 0
                                while _1154 + _1162 + _2060 + stor23[_2778 % stor23.length].field_1 + 32 > idx:
                                    mem[idx + 32] = stor23[(_2778 % stor23.length) + s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor23[_2778 % stor23.length].field_1), data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2778 % stor23.length].field_1)]), 
                            mem[_1154 + _1162 + _2060 + 64] = 256 * stor23[_2778 % stor23.length].field_8
                    else:
                        if stor23[_2778 % stor23.length].field_0 == stor23[_2778 % stor23.length].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor23[_2778 % stor23.length].field_1:
                            if 31 < stor23[_2778 % stor23.length].field_1:
                                mem[_1154 + _1162 + _2060 + 64] = stor23[_2778 % stor23.length].field_0
                                idx = _1154 + _1162 + _2060 + 64
                                s = 0
                                while _1154 + _1162 + _2060 + stor23[_2778 % stor23.length].field_1 + 32 > idx:
                                    mem[idx + 32] = stor23[(_2778 % stor23.length) + s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor23[_2778 % stor23.length].field_1), data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2778 % stor23.length].field_1)]), 
                            mem[_1154 + _1162 + _2060 + 64] = 256 * stor23[_2778 % stor23.length].field_8
                    mem[_1154 + _1162 + _2060 + ceil32(stor23[_2778 % stor23.length].field_1) + 128 len ceil32(stor23[_2778 % stor23.length].field_1)] = mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2778 % stor23.length].field_1)]
                    if ceil32(stor23[_2778 % stor23.length].field_1) > stor23[_2778 % stor23.length].field_1:
                        mem[_1154 + _1162 + _2060 + ceil32(stor23[_2778 % stor23.length].field_1) + stor23[_2778 % stor23.length].field_1 + 128] = 0
                    return Array(len=2 * Mask(256, -1, stor23[_2778 % stor23.length].field_1), data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2778 % stor23.length].field_1)], mem[_1154 + _1162 + _2060 + (2 * ceil32(stor23[_2778 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2778 % stor23.length].field_1)]), 
                if stor23[sha3(mem[_2776 + 32 len mem[_2776]]) % stor23.length].field_0 == stor23[sha3(mem[_2776 + 32 len mem[_2776]]) % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                mem[64] = _1154 + _1162 + _2060 + ceil32(stor23[sha3(mem[_2776 + 32 len mem[_2776]]) % stor23.length].field_1) + 64
                if stor23[_2778 % stor23.length].field_0:
                    if stor23[_2778 % stor23.length].field_0 == stor23[_2778 % stor23.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor23[_2778 % stor23.length].field_1:
                        if 31 < stor23[_2778 % stor23.length].field_1:
                            mem[_1154 + _1162 + _2060 + 64] = stor23[_2778 % stor23.length].field_0
                            idx = _1154 + _1162 + _2060 + 64
                            s = 0
                            while _1154 + _1162 + _2060 + stor23[_2778 % stor23.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor23[(_2778 % stor23.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor23[_2778 % stor23.length].field_0, data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2778 % stor23.length].field_1)]), 
                        mem[_1154 + _1162 + _2060 + 64] = 256 * stor23[_2778 % stor23.length].field_8
                else:
                    if stor23[_2778 % stor23.length].field_0 == stor23[_2778 % stor23.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor23[_2778 % stor23.length].field_1:
                        if 31 < stor23[_2778 % stor23.length].field_1:
                            mem[_1154 + _1162 + _2060 + 64] = stor23[_2778 % stor23.length].field_0
                            idx = _1154 + _1162 + _2060 + 64
                            s = 0
                            while _1154 + _1162 + _2060 + stor23[_2778 % stor23.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor23[(_2778 % stor23.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor23[_2778 % stor23.length].field_0, data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2778 % stor23.length].field_1)]), 
                        mem[_1154 + _1162 + _2060 + 64] = 256 * stor23[_2778 % stor23.length].field_8
                mem[_1154 + _1162 + _2060 + ceil32(stor23[_2778 % stor23.length].field_1) + 128 len ceil32(stor23[_2778 % stor23.length].field_1)] = mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2778 % stor23.length].field_1)]
                if ceil32(stor23[_2778 % stor23.length].field_1) > stor23[_2778 % stor23.length].field_1:
                    mem[_1154 + _1162 + _2060 + ceil32(stor23[_2778 % stor23.length].field_1) + stor23[_2778 % stor23.length].field_1 + 128] = 0
                return Array(len=stor23[_2778 % stor23.length].field_0, data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2778 % stor23.length].field_1)], mem[_1154 + _1162 + _2060 + (2 * ceil32(stor23[_2778 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2778 % stor23.length].field_1)]), 
            mem[_1154 + _1162 + _2060 + 32] = 0
            _2788 = mem[64]
            mem[mem[64]] = _1154 + _1162 + _2060 - mem[64]
            mem[64] = _1154 + _1162 + _2060 + 32
            _2790 = sha3(mem[_2788 + 32 len mem[_2788]])
            if not stor23.length:
                revert with 'NH{q', 18
            if sha3(mem[_2788 + 32 len mem[_2788]]) % stor23.length >= stor23.length:
                revert with 'NH{q', 50
            if stor23[sha3(mem[_2788 + 32 len mem[_2788]]) % stor23.length].field_0:
                if stor23[sha3(mem[_2788 + 32 len mem[_2788]]) % stor23.length].field_0 == stor23[sha3(mem[_2788 + 32 len mem[_2788]]) % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                mem[64] = _1154 + _1162 + _2060 + ceil32(stor23[sha3(mem[_2788 + 32 len mem[_2788]]) % stor23.length].field_1) + 64
                if stor23[_2790 % stor23.length].field_0:
                    if stor23[_2790 % stor23.length].field_0 == stor23[_2790 % stor23.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor23[_2790 % stor23.length].field_1:
                        if 31 < stor23[_2790 % stor23.length].field_1:
                            mem[_1154 + _1162 + _2060 + 64] = stor23[_2790 % stor23.length].field_0
                            idx = _1154 + _1162 + _2060 + 64
                            s = 0
                            while _1154 + _1162 + _2060 + stor23[_2790 % stor23.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor23[(_2790 % stor23.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor23[_2790 % stor23.length].field_1), data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2790 % stor23.length].field_1)]), 
                        mem[_1154 + _1162 + _2060 + 64] = 256 * stor23[_2790 % stor23.length].field_8
                else:
                    if stor23[_2790 % stor23.length].field_0 == stor23[_2790 % stor23.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor23[_2790 % stor23.length].field_1:
                        if 31 < stor23[_2790 % stor23.length].field_1:
                            mem[_1154 + _1162 + _2060 + 64] = stor23[_2790 % stor23.length].field_0
                            idx = _1154 + _1162 + _2060 + 64
                            s = 0
                            while _1154 + _1162 + _2060 + stor23[_2790 % stor23.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor23[(_2790 % stor23.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor23[_2790 % stor23.length].field_1), data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2790 % stor23.length].field_1)]), 
                        mem[_1154 + _1162 + _2060 + 64] = 256 * stor23[_2790 % stor23.length].field_8
                mem[_1154 + _1162 + _2060 + ceil32(stor23[_2790 % stor23.length].field_1) + 128 len ceil32(stor23[_2790 % stor23.length].field_1)] = mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2790 % stor23.length].field_1)]
                if ceil32(stor23[_2790 % stor23.length].field_1) > stor23[_2790 % stor23.length].field_1:
                    mem[_1154 + _1162 + _2060 + ceil32(stor23[_2790 % stor23.length].field_1) + stor23[_2790 % stor23.length].field_1 + 128] = 0
                return Array(len=2 * Mask(256, -1, stor23[_2790 % stor23.length].field_1), data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2790 % stor23.length].field_1)], mem[_1154 + _1162 + _2060 + (2 * ceil32(stor23[_2790 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2790 % stor23.length].field_1)]), 
            if stor23[sha3(mem[_2788 + 32 len mem[_2788]]) % stor23.length].field_0 == stor23[sha3(mem[_2788 + 32 len mem[_2788]]) % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1154 + _1162 + _2060 + ceil32(stor23[sha3(mem[_2788 + 32 len mem[_2788]]) % stor23.length].field_1) + 64
            if stor23[_2790 % stor23.length].field_0:
                if stor23[_2790 % stor23.length].field_0 == stor23[_2790 % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[_2790 % stor23.length].field_1:
                    if 31 < stor23[_2790 % stor23.length].field_1:
                        mem[_1154 + _1162 + _2060 + 64] = stor23[_2790 % stor23.length].field_0
                        idx = _1154 + _1162 + _2060 + 64
                        s = 0
                        while _1154 + _1162 + _2060 + stor23[_2790 % stor23.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor23[(_2790 % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor23[_2790 % stor23.length].field_0, data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2790 % stor23.length].field_1)]), 
                    mem[_1154 + _1162 + _2060 + 64] = 256 * stor23[_2790 % stor23.length].field_8
            else:
                if stor23[_2790 % stor23.length].field_0 == stor23[_2790 % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[_2790 % stor23.length].field_1:
                    if 31 < stor23[_2790 % stor23.length].field_1:
                        mem[_1154 + _1162 + _2060 + 64] = stor23[_2790 % stor23.length].field_0
                        idx = _1154 + _1162 + _2060 + 64
                        s = 0
                        while _1154 + _1162 + _2060 + stor23[_2790 % stor23.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor23[(_2790 % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor23[_2790 % stor23.length].field_0, data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2790 % stor23.length].field_1)]), 
                    mem[_1154 + _1162 + _2060 + 64] = 256 * stor23[_2790 % stor23.length].field_8
            mem[_1154 + _1162 + _2060 + ceil32(stor23[_2790 % stor23.length].field_1) + 128 len ceil32(stor23[_2790 % stor23.length].field_1)] = mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2790 % stor23.length].field_1)]
            if ceil32(stor23[_2790 % stor23.length].field_1) > stor23[_2790 % stor23.length].field_1:
                mem[_1154 + _1162 + _2060 + ceil32(stor23[_2790 % stor23.length].field_1) + stor23[_2790 % stor23.length].field_1 + 128] = 0
            return Array(len=stor23[_2790 % stor23.length].field_0, data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor23[_2790 % stor23.length].field_1)], mem[_1154 + _1162 + _2060 + (2 * ceil32(stor23[_2790 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2790 % stor23.length].field_1)]), 
        mem[mem[64] + mem[96] + 32] = 0
        _2078 = mem[160]
        mem[_1154 + _1162 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_2078) <= _2078:
            _2779 = mem[64]
            mem[mem[64]] = _1154 + _1162 + _2078 - mem[64]
            mem[64] = _1154 + _1162 + _2078 + 32
            _2781 = sha3(mem[_2779 + 32 len mem[_2779]])
            if not stor23.length:
                revert with 'NH{q', 18
            if sha3(mem[_2779 + 32 len mem[_2779]]) % stor23.length >= stor23.length:
                revert with 'NH{q', 50
            if stor23[sha3(mem[_2779 + 32 len mem[_2779]]) % stor23.length].field_0:
                if stor23[sha3(mem[_2779 + 32 len mem[_2779]]) % stor23.length].field_0 == stor23[sha3(mem[_2779 + 32 len mem[_2779]]) % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                mem[64] = _1154 + _1162 + _2078 + ceil32(stor23[sha3(mem[_2779 + 32 len mem[_2779]]) % stor23.length].field_1) + 64
                if stor23[_2781 % stor23.length].field_0:
                    if stor23[_2781 % stor23.length].field_0 == stor23[_2781 % stor23.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor23[_2781 % stor23.length].field_1:
                        if 31 < stor23[_2781 % stor23.length].field_1:
                            mem[_1154 + _1162 + _2078 + 64] = stor23[_2781 % stor23.length].field_0
                            idx = _1154 + _1162 + _2078 + 64
                            s = 0
                            while _1154 + _1162 + _2078 + stor23[_2781 % stor23.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor23[(_2781 % stor23.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor23[_2781 % stor23.length].field_1), data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2781 % stor23.length].field_1)]), 
                        mem[_1154 + _1162 + _2078 + 64] = 256 * stor23[_2781 % stor23.length].field_8
                else:
                    if stor23[_2781 % stor23.length].field_0 == stor23[_2781 % stor23.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor23[_2781 % stor23.length].field_1:
                        if 31 < stor23[_2781 % stor23.length].field_1:
                            mem[_1154 + _1162 + _2078 + 64] = stor23[_2781 % stor23.length].field_0
                            idx = _1154 + _1162 + _2078 + 64
                            s = 0
                            while _1154 + _1162 + _2078 + stor23[_2781 % stor23.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor23[(_2781 % stor23.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor23[_2781 % stor23.length].field_1), data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2781 % stor23.length].field_1)]), 
                        mem[_1154 + _1162 + _2078 + 64] = 256 * stor23[_2781 % stor23.length].field_8
                mem[_1154 + _1162 + _2078 + ceil32(stor23[_2781 % stor23.length].field_1) + 128 len ceil32(stor23[_2781 % stor23.length].field_1)] = mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2781 % stor23.length].field_1)]
                if ceil32(stor23[_2781 % stor23.length].field_1) > stor23[_2781 % stor23.length].field_1:
                    mem[_1154 + _1162 + _2078 + ceil32(stor23[_2781 % stor23.length].field_1) + stor23[_2781 % stor23.length].field_1 + 128] = 0
                return Array(len=2 * Mask(256, -1, stor23[_2781 % stor23.length].field_1), data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2781 % stor23.length].field_1)], mem[_1154 + _1162 + _2078 + (2 * ceil32(stor23[_2781 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2781 % stor23.length].field_1)]), 
            if stor23[sha3(mem[_2779 + 32 len mem[_2779]]) % stor23.length].field_0 == stor23[sha3(mem[_2779 + 32 len mem[_2779]]) % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1154 + _1162 + _2078 + ceil32(stor23[sha3(mem[_2779 + 32 len mem[_2779]]) % stor23.length].field_1) + 64
            if stor23[_2781 % stor23.length].field_0:
                if stor23[_2781 % stor23.length].field_0 == stor23[_2781 % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[_2781 % stor23.length].field_1:
                    if 31 < stor23[_2781 % stor23.length].field_1:
                        mem[_1154 + _1162 + _2078 + 64] = stor23[_2781 % stor23.length].field_0
                        idx = _1154 + _1162 + _2078 + 64
                        s = 0
                        while _1154 + _1162 + _2078 + stor23[_2781 % stor23.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor23[(_2781 % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor23[_2781 % stor23.length].field_0, data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2781 % stor23.length].field_1)]), 
                    mem[_1154 + _1162 + _2078 + 64] = 256 * stor23[_2781 % stor23.length].field_8
            else:
                if stor23[_2781 % stor23.length].field_0 == stor23[_2781 % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[_2781 % stor23.length].field_1:
                    if 31 < stor23[_2781 % stor23.length].field_1:
                        mem[_1154 + _1162 + _2078 + 64] = stor23[_2781 % stor23.length].field_0
                        idx = _1154 + _1162 + _2078 + 64
                        s = 0
                        while _1154 + _1162 + _2078 + stor23[_2781 % stor23.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor23[(_2781 % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor23[_2781 % stor23.length].field_0, data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2781 % stor23.length].field_1)]), 
                    mem[_1154 + _1162 + _2078 + 64] = 256 * stor23[_2781 % stor23.length].field_8
            mem[_1154 + _1162 + _2078 + ceil32(stor23[_2781 % stor23.length].field_1) + 128 len ceil32(stor23[_2781 % stor23.length].field_1)] = mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2781 % stor23.length].field_1)]
            if ceil32(stor23[_2781 % stor23.length].field_1) > stor23[_2781 % stor23.length].field_1:
                mem[_1154 + _1162 + _2078 + ceil32(stor23[_2781 % stor23.length].field_1) + stor23[_2781 % stor23.length].field_1 + 128] = 0
            return Array(len=stor23[_2781 % stor23.length].field_0, data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2781 % stor23.length].field_1)], mem[_1154 + _1162 + _2078 + (2 * ceil32(stor23[_2781 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2781 % stor23.length].field_1)]), 
        mem[_1154 + _1162 + _2078 + 32] = 0
        _2791 = mem[64]
        mem[mem[64]] = _1154 + _1162 + _2078 - mem[64]
        mem[64] = _1154 + _1162 + _2078 + 32
        _2793 = sha3(mem[_2791 + 32 len mem[_2791]])
        if not stor23.length:
            revert with 'NH{q', 18
        if sha3(mem[_2791 + 32 len mem[_2791]]) % stor23.length >= stor23.length:
            revert with 'NH{q', 50
        if stor23[sha3(mem[_2791 + 32 len mem[_2791]]) % stor23.length].field_0:
            if stor23[sha3(mem[_2791 + 32 len mem[_2791]]) % stor23.length].field_0 == stor23[sha3(mem[_2791 + 32 len mem[_2791]]) % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1154 + _1162 + _2078 + ceil32(stor23[sha3(mem[_2791 + 32 len mem[_2791]]) % stor23.length].field_1) + 64
            if stor23[_2793 % stor23.length].field_0:
                if stor23[_2793 % stor23.length].field_0 == stor23[_2793 % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[_2793 % stor23.length].field_1:
                    if 31 < stor23[_2793 % stor23.length].field_1:
                        mem[_1154 + _1162 + _2078 + 64] = stor23[_2793 % stor23.length].field_0
                        idx = _1154 + _1162 + _2078 + 64
                        s = 0
                        while _1154 + _1162 + _2078 + stor23[_2793 % stor23.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor23[(_2793 % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor23[_2793 % stor23.length].field_1), data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2793 % stor23.length].field_1)]), 
                    mem[_1154 + _1162 + _2078 + 64] = 256 * stor23[_2793 % stor23.length].field_8
            else:
                if stor23[_2793 % stor23.length].field_0 == stor23[_2793 % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[_2793 % stor23.length].field_1:
                    if 31 < stor23[_2793 % stor23.length].field_1:
                        mem[_1154 + _1162 + _2078 + 64] = stor23[_2793 % stor23.length].field_0
                        idx = _1154 + _1162 + _2078 + 64
                        s = 0
                        while _1154 + _1162 + _2078 + stor23[_2793 % stor23.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor23[(_2793 % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor23[_2793 % stor23.length].field_1), data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2793 % stor23.length].field_1)]), 
                    mem[_1154 + _1162 + _2078 + 64] = 256 * stor23[_2793 % stor23.length].field_8
            mem[_1154 + _1162 + _2078 + ceil32(stor23[_2793 % stor23.length].field_1) + 128 len ceil32(stor23[_2793 % stor23.length].field_1)] = mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2793 % stor23.length].field_1)]
            if ceil32(stor23[_2793 % stor23.length].field_1) > stor23[_2793 % stor23.length].field_1:
                mem[_1154 + _1162 + _2078 + ceil32(stor23[_2793 % stor23.length].field_1) + stor23[_2793 % stor23.length].field_1 + 128] = 0
            return Array(len=2 * Mask(256, -1, stor23[_2793 % stor23.length].field_1), data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2793 % stor23.length].field_1)], mem[_1154 + _1162 + _2078 + (2 * ceil32(stor23[_2793 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2793 % stor23.length].field_1)]), 
        if stor23[sha3(mem[_2791 + 32 len mem[_2791]]) % stor23.length].field_0 == stor23[sha3(mem[_2791 + 32 len mem[_2791]]) % stor23.length].field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = _1154 + _1162 + _2078 + ceil32(stor23[sha3(mem[_2791 + 32 len mem[_2791]]) % stor23.length].field_1) + 64
        if stor23[_2793 % stor23.length].field_0:
            if stor23[_2793 % stor23.length].field_0 == stor23[_2793 % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor23[_2793 % stor23.length].field_1:
                if 31 < stor23[_2793 % stor23.length].field_1:
                    mem[_1154 + _1162 + _2078 + 64] = stor23[_2793 % stor23.length].field_0
                    idx = _1154 + _1162 + _2078 + 64
                    s = 0
                    while _1154 + _1162 + _2078 + stor23[_2793 % stor23.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor23[(_2793 % stor23.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor23[_2793 % stor23.length].field_0, data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2793 % stor23.length].field_1)]), 
                mem[_1154 + _1162 + _2078 + 64] = 256 * stor23[_2793 % stor23.length].field_8
        else:
            if stor23[_2793 % stor23.length].field_0 == stor23[_2793 % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor23[_2793 % stor23.length].field_1:
                if 31 < stor23[_2793 % stor23.length].field_1:
                    mem[_1154 + _1162 + _2078 + 64] = stor23[_2793 % stor23.length].field_0
                    idx = _1154 + _1162 + _2078 + 64
                    s = 0
                    while _1154 + _1162 + _2078 + stor23[_2793 % stor23.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor23[(_2793 % stor23.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor23[_2793 % stor23.length].field_0, data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2793 % stor23.length].field_1)]), 
                mem[_1154 + _1162 + _2078 + 64] = 256 * stor23[_2793 % stor23.length].field_8
        mem[_1154 + _1162 + _2078 + ceil32(stor23[_2793 % stor23.length].field_1) + 128 len ceil32(stor23[_2793 % stor23.length].field_1)] = mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2793 % stor23.length].field_1)]
        if ceil32(stor23[_2793 % stor23.length].field_1) > stor23[_2793 % stor23.length].field_1:
            mem[_1154 + _1162 + _2078 + ceil32(stor23[_2793 % stor23.length].field_1) + stor23[_2793 % stor23.length].field_1 + 128] = 0
        return Array(len=stor23[_2793 % stor23.length].field_0, data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor23[_2793 % stor23.length].field_1)], mem[_1154 + _1162 + _2078 + (2 * ceil32(stor23[_2793 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2793 % stor23.length].field_1)]), 
    mem[192 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[160]:
            revert with 'NH{q', 50
        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _1155 = mem[64]
    _1163 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _2061 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_2061) <= _2061:
            _2782 = mem[64]
            mem[mem[64]] = _1155 + _1163 + _2061 - mem[64]
            mem[64] = _1155 + _1163 + _2061 + 32
            _2784 = sha3(mem[_2782 + 32 len mem[_2782]])
            if not stor23.length:
                revert with 'NH{q', 18
            if sha3(mem[_2782 + 32 len mem[_2782]]) % stor23.length >= stor23.length:
                revert with 'NH{q', 50
            if stor23[sha3(mem[_2782 + 32 len mem[_2782]]) % stor23.length].field_0:
                if stor23[sha3(mem[_2782 + 32 len mem[_2782]]) % stor23.length].field_0 == stor23[sha3(mem[_2782 + 32 len mem[_2782]]) % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                mem[64] = _1155 + _1163 + _2061 + ceil32(stor23[sha3(mem[_2782 + 32 len mem[_2782]]) % stor23.length].field_1) + 64
                if stor23[_2784 % stor23.length].field_0:
                    if stor23[_2784 % stor23.length].field_0 == stor23[_2784 % stor23.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor23[_2784 % stor23.length].field_1:
                        if 31 < stor23[_2784 % stor23.length].field_1:
                            mem[_1155 + _1163 + _2061 + 64] = stor23[_2784 % stor23.length].field_0
                            idx = _1155 + _1163 + _2061 + 64
                            s = 0
                            while _1155 + _1163 + _2061 + stor23[_2784 % stor23.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor23[(_2784 % stor23.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor23[_2784 % stor23.length].field_1), data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2784 % stor23.length].field_1)]), 
                        mem[_1155 + _1163 + _2061 + 64] = 256 * stor23[_2784 % stor23.length].field_8
                else:
                    if stor23[_2784 % stor23.length].field_0 == stor23[_2784 % stor23.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor23[_2784 % stor23.length].field_1:
                        if 31 < stor23[_2784 % stor23.length].field_1:
                            mem[_1155 + _1163 + _2061 + 64] = stor23[_2784 % stor23.length].field_0
                            idx = _1155 + _1163 + _2061 + 64
                            s = 0
                            while _1155 + _1163 + _2061 + stor23[_2784 % stor23.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor23[(_2784 % stor23.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor23[_2784 % stor23.length].field_1), data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2784 % stor23.length].field_1)]), 
                        mem[_1155 + _1163 + _2061 + 64] = 256 * stor23[_2784 % stor23.length].field_8
                mem[_1155 + _1163 + _2061 + ceil32(stor23[_2784 % stor23.length].field_1) + 128 len ceil32(stor23[_2784 % stor23.length].field_1)] = mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2784 % stor23.length].field_1)]
                if ceil32(stor23[_2784 % stor23.length].field_1) > stor23[_2784 % stor23.length].field_1:
                    mem[_1155 + _1163 + _2061 + ceil32(stor23[_2784 % stor23.length].field_1) + stor23[_2784 % stor23.length].field_1 + 128] = 0
                return Array(len=2 * Mask(256, -1, stor23[_2784 % stor23.length].field_1), data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2784 % stor23.length].field_1)], mem[_1155 + _1163 + _2061 + (2 * ceil32(stor23[_2784 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2784 % stor23.length].field_1)]), 
            if stor23[sha3(mem[_2782 + 32 len mem[_2782]]) % stor23.length].field_0 == stor23[sha3(mem[_2782 + 32 len mem[_2782]]) % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1155 + _1163 + _2061 + ceil32(stor23[sha3(mem[_2782 + 32 len mem[_2782]]) % stor23.length].field_1) + 64
            if stor23[_2784 % stor23.length].field_0:
                if stor23[_2784 % stor23.length].field_0 == stor23[_2784 % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[_2784 % stor23.length].field_1:
                    if 31 < stor23[_2784 % stor23.length].field_1:
                        mem[_1155 + _1163 + _2061 + 64] = stor23[_2784 % stor23.length].field_0
                        idx = _1155 + _1163 + _2061 + 64
                        s = 0
                        while _1155 + _1163 + _2061 + stor23[_2784 % stor23.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor23[(_2784 % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor23[_2784 % stor23.length].field_0, data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2784 % stor23.length].field_1)]), 
                    mem[_1155 + _1163 + _2061 + 64] = 256 * stor23[_2784 % stor23.length].field_8
            else:
                if stor23[_2784 % stor23.length].field_0 == stor23[_2784 % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[_2784 % stor23.length].field_1:
                    if 31 < stor23[_2784 % stor23.length].field_1:
                        mem[_1155 + _1163 + _2061 + 64] = stor23[_2784 % stor23.length].field_0
                        idx = _1155 + _1163 + _2061 + 64
                        s = 0
                        while _1155 + _1163 + _2061 + stor23[_2784 % stor23.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor23[(_2784 % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor23[_2784 % stor23.length].field_0, data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2784 % stor23.length].field_1)]), 
                    mem[_1155 + _1163 + _2061 + 64] = 256 * stor23[_2784 % stor23.length].field_8
            mem[_1155 + _1163 + _2061 + ceil32(stor23[_2784 % stor23.length].field_1) + 128 len ceil32(stor23[_2784 % stor23.length].field_1)] = mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2784 % stor23.length].field_1)]
            if ceil32(stor23[_2784 % stor23.length].field_1) > stor23[_2784 % stor23.length].field_1:
                mem[_1155 + _1163 + _2061 + ceil32(stor23[_2784 % stor23.length].field_1) + stor23[_2784 % stor23.length].field_1 + 128] = 0
            return Array(len=stor23[_2784 % stor23.length].field_0, data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2784 % stor23.length].field_1)], mem[_1155 + _1163 + _2061 + (2 * ceil32(stor23[_2784 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2784 % stor23.length].field_1)]), 
        mem[_1155 + _1163 + _2061 + 32] = 0
        _2794 = mem[64]
        mem[mem[64]] = _1155 + _1163 + _2061 - mem[64]
        mem[64] = _1155 + _1163 + _2061 + 32
        _2796 = sha3(mem[_2794 + 32 len mem[_2794]])
        if not stor23.length:
            revert with 'NH{q', 18
        if sha3(mem[_2794 + 32 len mem[_2794]]) % stor23.length >= stor23.length:
            revert with 'NH{q', 50
        if stor23[sha3(mem[_2794 + 32 len mem[_2794]]) % stor23.length].field_0:
            if stor23[sha3(mem[_2794 + 32 len mem[_2794]]) % stor23.length].field_0 == stor23[sha3(mem[_2794 + 32 len mem[_2794]]) % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1155 + _1163 + _2061 + ceil32(stor23[sha3(mem[_2794 + 32 len mem[_2794]]) % stor23.length].field_1) + 64
            if stor23[_2796 % stor23.length].field_0:
                if stor23[_2796 % stor23.length].field_0 == stor23[_2796 % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[_2796 % stor23.length].field_1:
                    if 31 < stor23[_2796 % stor23.length].field_1:
                        mem[_1155 + _1163 + _2061 + 64] = stor23[_2796 % stor23.length].field_0
                        idx = _1155 + _1163 + _2061 + 64
                        s = 0
                        while _1155 + _1163 + _2061 + stor23[_2796 % stor23.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor23[(_2796 % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor23[_2796 % stor23.length].field_1), data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2796 % stor23.length].field_1)]), 
                    mem[_1155 + _1163 + _2061 + 64] = 256 * stor23[_2796 % stor23.length].field_8
            else:
                if stor23[_2796 % stor23.length].field_0 == stor23[_2796 % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[_2796 % stor23.length].field_1:
                    if 31 < stor23[_2796 % stor23.length].field_1:
                        mem[_1155 + _1163 + _2061 + 64] = stor23[_2796 % stor23.length].field_0
                        idx = _1155 + _1163 + _2061 + 64
                        s = 0
                        while _1155 + _1163 + _2061 + stor23[_2796 % stor23.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor23[(_2796 % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor23[_2796 % stor23.length].field_1), data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2796 % stor23.length].field_1)]), 
                    mem[_1155 + _1163 + _2061 + 64] = 256 * stor23[_2796 % stor23.length].field_8
            mem[_1155 + _1163 + _2061 + ceil32(stor23[_2796 % stor23.length].field_1) + 128 len ceil32(stor23[_2796 % stor23.length].field_1)] = mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2796 % stor23.length].field_1)]
            if ceil32(stor23[_2796 % stor23.length].field_1) > stor23[_2796 % stor23.length].field_1:
                mem[_1155 + _1163 + _2061 + ceil32(stor23[_2796 % stor23.length].field_1) + stor23[_2796 % stor23.length].field_1 + 128] = 0
            return Array(len=2 * Mask(256, -1, stor23[_2796 % stor23.length].field_1), data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2796 % stor23.length].field_1)], mem[_1155 + _1163 + _2061 + (2 * ceil32(stor23[_2796 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2796 % stor23.length].field_1)]), 
        if stor23[sha3(mem[_2794 + 32 len mem[_2794]]) % stor23.length].field_0 == stor23[sha3(mem[_2794 + 32 len mem[_2794]]) % stor23.length].field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = _1155 + _1163 + _2061 + ceil32(stor23[sha3(mem[_2794 + 32 len mem[_2794]]) % stor23.length].field_1) + 64
        if stor23[_2796 % stor23.length].field_0:
            if stor23[_2796 % stor23.length].field_0 == stor23[_2796 % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor23[_2796 % stor23.length].field_1:
                if 31 < stor23[_2796 % stor23.length].field_1:
                    mem[_1155 + _1163 + _2061 + 64] = stor23[_2796 % stor23.length].field_0
                    idx = _1155 + _1163 + _2061 + 64
                    s = 0
                    while _1155 + _1163 + _2061 + stor23[_2796 % stor23.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor23[(_2796 % stor23.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor23[_2796 % stor23.length].field_0, data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2796 % stor23.length].field_1)]), 
                mem[_1155 + _1163 + _2061 + 64] = 256 * stor23[_2796 % stor23.length].field_8
        else:
            if stor23[_2796 % stor23.length].field_0 == stor23[_2796 % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor23[_2796 % stor23.length].field_1:
                if 31 < stor23[_2796 % stor23.length].field_1:
                    mem[_1155 + _1163 + _2061 + 64] = stor23[_2796 % stor23.length].field_0
                    idx = _1155 + _1163 + _2061 + 64
                    s = 0
                    while _1155 + _1163 + _2061 + stor23[_2796 % stor23.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor23[(_2796 % stor23.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor23[_2796 % stor23.length].field_0, data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2796 % stor23.length].field_1)]), 
                mem[_1155 + _1163 + _2061 + 64] = 256 * stor23[_2796 % stor23.length].field_8
        mem[_1155 + _1163 + _2061 + ceil32(stor23[_2796 % stor23.length].field_1) + 128 len ceil32(stor23[_2796 % stor23.length].field_1)] = mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2796 % stor23.length].field_1)]
        if ceil32(stor23[_2796 % stor23.length].field_1) > stor23[_2796 % stor23.length].field_1:
            mem[_1155 + _1163 + _2061 + ceil32(stor23[_2796 % stor23.length].field_1) + stor23[_2796 % stor23.length].field_1 + 128] = 0
        return Array(len=stor23[_2796 % stor23.length].field_0, data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor23[_2796 % stor23.length].field_1)], mem[_1155 + _1163 + _2061 + (2 * ceil32(stor23[_2796 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2796 % stor23.length].field_1)]), 
    mem[mem[64] + mem[96] + 32] = 0
    _2079 = mem[160]
    mem[_1155 + _1163 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if ceil32(_2079) <= _2079:
        _2785 = mem[64]
        mem[mem[64]] = _1155 + _1163 + _2079 - mem[64]
        mem[64] = _1155 + _1163 + _2079 + 32
        _2787 = sha3(mem[_2785 + 32 len mem[_2785]])
        if not stor23.length:
            revert with 'NH{q', 18
        if sha3(mem[_2785 + 32 len mem[_2785]]) % stor23.length >= stor23.length:
            revert with 'NH{q', 50
        if stor23[sha3(mem[_2785 + 32 len mem[_2785]]) % stor23.length].field_0:
            if stor23[sha3(mem[_2785 + 32 len mem[_2785]]) % stor23.length].field_0 == stor23[sha3(mem[_2785 + 32 len mem[_2785]]) % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1155 + _1163 + _2079 + ceil32(stor23[sha3(mem[_2785 + 32 len mem[_2785]]) % stor23.length].field_1) + 64
            if stor23[_2787 % stor23.length].field_0:
                if stor23[_2787 % stor23.length].field_0 == stor23[_2787 % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[_2787 % stor23.length].field_1:
                    if 31 < stor23[_2787 % stor23.length].field_1:
                        mem[_1155 + _1163 + _2079 + 64] = stor23[_2787 % stor23.length].field_0
                        idx = _1155 + _1163 + _2079 + 64
                        s = 0
                        while _1155 + _1163 + _2079 + stor23[_2787 % stor23.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor23[(_2787 % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor23[_2787 % stor23.length].field_1), data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2787 % stor23.length].field_1)]), 
                    mem[_1155 + _1163 + _2079 + 64] = 256 * stor23[_2787 % stor23.length].field_8
            else:
                if stor23[_2787 % stor23.length].field_0 == stor23[_2787 % stor23.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor23[_2787 % stor23.length].field_1:
                    if 31 < stor23[_2787 % stor23.length].field_1:
                        mem[_1155 + _1163 + _2079 + 64] = stor23[_2787 % stor23.length].field_0
                        idx = _1155 + _1163 + _2079 + 64
                        s = 0
                        while _1155 + _1163 + _2079 + stor23[_2787 % stor23.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor23[(_2787 % stor23.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor23[_2787 % stor23.length].field_1), data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2787 % stor23.length].field_1)]), 
                    mem[_1155 + _1163 + _2079 + 64] = 256 * stor23[_2787 % stor23.length].field_8
            mem[_1155 + _1163 + _2079 + ceil32(stor23[_2787 % stor23.length].field_1) + 128 len ceil32(stor23[_2787 % stor23.length].field_1)] = mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2787 % stor23.length].field_1)]
            if ceil32(stor23[_2787 % stor23.length].field_1) > stor23[_2787 % stor23.length].field_1:
                mem[_1155 + _1163 + _2079 + ceil32(stor23[_2787 % stor23.length].field_1) + stor23[_2787 % stor23.length].field_1 + 128] = 0
            return Array(len=2 * Mask(256, -1, stor23[_2787 % stor23.length].field_1), data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2787 % stor23.length].field_1)], mem[_1155 + _1163 + _2079 + (2 * ceil32(stor23[_2787 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2787 % stor23.length].field_1)]), 
        if stor23[sha3(mem[_2785 + 32 len mem[_2785]]) % stor23.length].field_0 == stor23[sha3(mem[_2785 + 32 len mem[_2785]]) % stor23.length].field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = _1155 + _1163 + _2079 + ceil32(stor23[sha3(mem[_2785 + 32 len mem[_2785]]) % stor23.length].field_1) + 64
        if stor23[_2787 % stor23.length].field_0:
            if stor23[_2787 % stor23.length].field_0 == stor23[_2787 % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor23[_2787 % stor23.length].field_1:
                if 31 < stor23[_2787 % stor23.length].field_1:
                    mem[_1155 + _1163 + _2079 + 64] = stor23[_2787 % stor23.length].field_0
                    idx = _1155 + _1163 + _2079 + 64
                    s = 0
                    while _1155 + _1163 + _2079 + stor23[_2787 % stor23.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor23[(_2787 % stor23.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor23[_2787 % stor23.length].field_0, data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2787 % stor23.length].field_1)]), 
                mem[_1155 + _1163 + _2079 + 64] = 256 * stor23[_2787 % stor23.length].field_8
        else:
            if stor23[_2787 % stor23.length].field_0 == stor23[_2787 % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor23[_2787 % stor23.length].field_1:
                if 31 < stor23[_2787 % stor23.length].field_1:
                    mem[_1155 + _1163 + _2079 + 64] = stor23[_2787 % stor23.length].field_0
                    idx = _1155 + _1163 + _2079 + 64
                    s = 0
                    while _1155 + _1163 + _2079 + stor23[_2787 % stor23.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor23[(_2787 % stor23.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor23[_2787 % stor23.length].field_0, data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2787 % stor23.length].field_1)]), 
                mem[_1155 + _1163 + _2079 + 64] = 256 * stor23[_2787 % stor23.length].field_8
        mem[_1155 + _1163 + _2079 + ceil32(stor23[_2787 % stor23.length].field_1) + 128 len ceil32(stor23[_2787 % stor23.length].field_1)] = mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2787 % stor23.length].field_1)]
        if ceil32(stor23[_2787 % stor23.length].field_1) > stor23[_2787 % stor23.length].field_1:
            mem[_1155 + _1163 + _2079 + ceil32(stor23[_2787 % stor23.length].field_1) + stor23[_2787 % stor23.length].field_1 + 128] = 0
        return Array(len=stor23[_2787 % stor23.length].field_0, data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2787 % stor23.length].field_1)], mem[_1155 + _1163 + _2079 + (2 * ceil32(stor23[_2787 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2787 % stor23.length].field_1)]), 
    mem[_1155 + _1163 + _2079 + 32] = 0
    _2797 = mem[64]
    mem[mem[64]] = _1155 + _1163 + _2079 - mem[64]
    mem[64] = _1155 + _1163 + _2079 + 32
    _2799 = sha3(mem[_2797 + 32 len mem[_2797]])
    if not stor23.length:
        revert with 'NH{q', 18
    if sha3(mem[_2797 + 32 len mem[_2797]]) % stor23.length >= stor23.length:
        revert with 'NH{q', 50
    if stor23[sha3(mem[_2797 + 32 len mem[_2797]]) % stor23.length].field_0:
        if stor23[sha3(mem[_2797 + 32 len mem[_2797]]) % stor23.length].field_0 == stor23[sha3(mem[_2797 + 32 len mem[_2797]]) % stor23.length].field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = _1155 + _1163 + _2079 + ceil32(stor23[sha3(mem[_2797 + 32 len mem[_2797]]) % stor23.length].field_1) + 64
        if stor23[_2799 % stor23.length].field_0:
            if stor23[_2799 % stor23.length].field_0 == stor23[_2799 % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor23[_2799 % stor23.length].field_1:
                if 31 < stor23[_2799 % stor23.length].field_1:
                    mem[_1155 + _1163 + _2079 + 64] = stor23[_2799 % stor23.length].field_0
                    idx = _1155 + _1163 + _2079 + 64
                    s = 0
                    while _1155 + _1163 + _2079 + stor23[_2799 % stor23.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor23[(_2799 % stor23.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor23[_2799 % stor23.length].field_1), data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2799 % stor23.length].field_1)]), 
                mem[_1155 + _1163 + _2079 + 64] = 256 * stor23[_2799 % stor23.length].field_8
        else:
            if stor23[_2799 % stor23.length].field_0 == stor23[_2799 % stor23.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor23[_2799 % stor23.length].field_1:
                if 31 < stor23[_2799 % stor23.length].field_1:
                    mem[_1155 + _1163 + _2079 + 64] = stor23[_2799 % stor23.length].field_0
                    idx = _1155 + _1163 + _2079 + 64
                    s = 0
                    while _1155 + _1163 + _2079 + stor23[_2799 % stor23.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor23[(_2799 % stor23.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor23[_2799 % stor23.length].field_1), data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2799 % stor23.length].field_1)]), 
                mem[_1155 + _1163 + _2079 + 64] = 256 * stor23[_2799 % stor23.length].field_8
        mem[_1155 + _1163 + _2079 + ceil32(stor23[_2799 % stor23.length].field_1) + 128 len ceil32(stor23[_2799 % stor23.length].field_1)] = mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2799 % stor23.length].field_1)]
        if ceil32(stor23[_2799 % stor23.length].field_1) > stor23[_2799 % stor23.length].field_1:
            mem[_1155 + _1163 + _2079 + ceil32(stor23[_2799 % stor23.length].field_1) + stor23[_2799 % stor23.length].field_1 + 128] = 0
        return Array(len=2 * Mask(256, -1, stor23[_2799 % stor23.length].field_1), data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2799 % stor23.length].field_1)], mem[_1155 + _1163 + _2079 + (2 * ceil32(stor23[_2799 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2799 % stor23.length].field_1)]), 
    if stor23[sha3(mem[_2797 + 32 len mem[_2797]]) % stor23.length].field_0 == stor23[sha3(mem[_2797 + 32 len mem[_2797]]) % stor23.length].field_1 < 32:
        revert with 'NH{q', 34
    mem[64] = _1155 + _1163 + _2079 + ceil32(stor23[sha3(mem[_2797 + 32 len mem[_2797]]) % stor23.length].field_1) + 64
    if stor23[_2799 % stor23.length].field_0:
        if stor23[_2799 % stor23.length].field_0 == stor23[_2799 % stor23.length].field_1 < 32:
            revert with 'NH{q', 34
        if stor23[_2799 % stor23.length].field_1:
            if 31 < stor23[_2799 % stor23.length].field_1:
                mem[_1155 + _1163 + _2079 + 64] = stor23[_2799 % stor23.length].field_0
                idx = _1155 + _1163 + _2079 + 64
                s = 0
                while _1155 + _1163 + _2079 + stor23[_2799 % stor23.length].field_1 + 32 > idx:
                    mem[idx + 32] = stor23[(_2799 % stor23.length) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor23[_2799 % stor23.length].field_0, data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2799 % stor23.length].field_1)]), 
            mem[_1155 + _1163 + _2079 + 64] = 256 * stor23[_2799 % stor23.length].field_8
    else:
        if stor23[_2799 % stor23.length].field_0 == stor23[_2799 % stor23.length].field_1 < 32:
            revert with 'NH{q', 34
        if stor23[_2799 % stor23.length].field_1:
            if 31 < stor23[_2799 % stor23.length].field_1:
                mem[_1155 + _1163 + _2079 + 64] = stor23[_2799 % stor23.length].field_0
                idx = _1155 + _1163 + _2079 + 64
                s = 0
                while _1155 + _1163 + _2079 + stor23[_2799 % stor23.length].field_1 + 32 > idx:
                    mem[idx + 32] = stor23[(_2799 % stor23.length) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor23[_2799 % stor23.length].field_0, data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2799 % stor23.length].field_1)]), 
            mem[_1155 + _1163 + _2079 + 64] = 256 * stor23[_2799 % stor23.length].field_8
    mem[_1155 + _1163 + _2079 + ceil32(stor23[_2799 % stor23.length].field_1) + 128 len ceil32(stor23[_2799 % stor23.length].field_1)] = mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2799 % stor23.length].field_1)]
    if ceil32(stor23[_2799 % stor23.length].field_1) > stor23[_2799 % stor23.length].field_1:
        mem[_1155 + _1163 + _2079 + ceil32(stor23[_2799 % stor23.length].field_1) + stor23[_2799 % stor23.length].field_1 + 128] = 0
    return Array(len=stor23[_2799 % stor23.length].field_0, data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor23[_2799 % stor23.length].field_1)], mem[_1155 + _1163 + _2079 + (2 * ceil32(stor23[_2799 % stor23.length].field_1)) + 128 len 2 * ceil32(stor23[_2799 % stor23.length].field_1)]), 
}

function getInstrument(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 10
    mem[128] = 'instrument'
    if not arg1:
        if not stor19.length:
            revert with 'NH{q', 18
        if sha3('instrument', '0') % stor19.length >= stor19.length:
            revert with 'NH{q', 50
        if stor19[('map', "'instrument'", "'0'") % stor19.length].field_0:
            if stor19[('map', "'instrument'", "'0'") % stor19.length].field_0 == stor19[('map', "'instrument'", "'0'") % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor19[('map', "'instrument'", "'0'") % stor19.length].field_0:
                if stor19[('map', "'instrument'", "'0'") % stor19.length].field_0 == stor19[('map', "'instrument'", "'0'") % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[('map', "'instrument'", "'0'") % stor19.length].field_1:
                    if 31 < stor19[('map', "'instrument'", "'0'") % stor19.length].field_1:
                        mem[299] = stor19[('map', "'instrument'", "'0'") % stor19.length].field_0
                        idx = 299
                        s = 0
                        while stor19[('map', "'instrument'", "'0'") % stor19.length].field_1 + 267 > idx:
                            mem[idx + 32] = stor19[(('map', "'instrument'", "'0'") % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor19[('map', "'instrument'", "'0'") % stor19.length].field_1), data=mem[299 len ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)]), 
                    mem[299] = 256 * stor19[('map', "'instrument'", "'0'") % stor19.length].field_8
            else:
                if stor19[('map', "'instrument'", "'0'") % stor19.length].field_0 == stor19[('map', "'instrument'", "'0'") % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[('map', "'instrument'", "'0'") % stor19.length].field_1:
                    if 31 < stor19[('map', "'instrument'", "'0'") % stor19.length].field_1:
                        mem[299] = stor19[('map', "'instrument'", "'0'") % stor19.length].field_0
                        idx = 299
                        s = 0
                        while stor19[('map', "'instrument'", "'0'") % stor19.length].field_1 + 267 > idx:
                            mem[idx + 32] = stor19[(('map', "'instrument'", "'0'") % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor19[('map', "'instrument'", "'0'") % stor19.length].field_1), data=mem[299 len ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)]), 
                    mem[299] = 256 * stor19[('map', "'instrument'", "'0'") % stor19.length].field_8
            mem[ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1) + 363 len ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)] = mem[299 len ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)]
            if ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1) > stor19[('map', "'instrument'", "'0'") % stor19.length].field_1:
                mem[ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1) + stor19[('map', "'instrument'", "'0'") % stor19.length].field_1 + 363] = 0
            return Array(len=2 * Mask(256, -1, stor19[('map', "'instrument'", "'0'") % stor19.length].field_1), data=mem[299 len ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)], mem[(2 * ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)) + 363 len 2 * ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)]), 
        if stor19[('map', "'instrument'", "'0'") % stor19.length].field_0 == stor19[('map', "'instrument'", "'0'") % stor19.length].field_1 < 32:
            revert with 'NH{q', 34
        if stor19[('map', "'instrument'", "'0'") % stor19.length].field_0:
            if stor19[('map', "'instrument'", "'0'") % stor19.length].field_0 == stor19[('map', "'instrument'", "'0'") % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor19[('map', "'instrument'", "'0'") % stor19.length].field_1:
                if 31 < stor19[('map', "'instrument'", "'0'") % stor19.length].field_1:
                    mem[299] = stor19[('map', "'instrument'", "'0'") % stor19.length].field_0
                    idx = 299
                    s = 0
                    while stor19[('map', "'instrument'", "'0'") % stor19.length].field_1 + 267 > idx:
                        mem[idx + 32] = stor19[(('map', "'instrument'", "'0'") % stor19.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor19[('map', "'instrument'", "'0'") % stor19.length].field_0, data=mem[299 len ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)]), 
                mem[299] = 256 * stor19[('map', "'instrument'", "'0'") % stor19.length].field_8
        else:
            if stor19[('map', "'instrument'", "'0'") % stor19.length].field_0 == stor19[('map', "'instrument'", "'0'") % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor19[('map', "'instrument'", "'0'") % stor19.length].field_1:
                if 31 < stor19[('map', "'instrument'", "'0'") % stor19.length].field_1:
                    mem[299] = stor19[('map', "'instrument'", "'0'") % stor19.length].field_0
                    idx = 299
                    s = 0
                    while stor19[('map', "'instrument'", "'0'") % stor19.length].field_1 + 267 > idx:
                        mem[idx + 32] = stor19[(('map', "'instrument'", "'0'") % stor19.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor19[('map', "'instrument'", "'0'") % stor19.length].field_0, data=mem[299 len ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)]), 
                mem[299] = 256 * stor19[('map', "'instrument'", "'0'") % stor19.length].field_8
        mem[ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1) + 363 len ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)] = mem[299 len ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)]
        if ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1) > stor19[('map', "'instrument'", "'0'") % stor19.length].field_1:
            mem[ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1) + stor19[('map', "'instrument'", "'0'") % stor19.length].field_1 + 363] = 0
        return Array(len=stor19[('map', "'instrument'", "'0'") % stor19.length].field_0, data=mem[299 len ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)], mem[(2 * ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)) + 363 len 2 * ceil32(stor19[('map', "'instrument'", "'0'") % stor19.length].field_1)]), 
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
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[160]:
                revert with 'NH{q', 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1154 = mem[64]
        _1162 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _2060 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_2060) <= _2060:
                _2776 = mem[64]
                mem[mem[64]] = _1154 + _1162 + _2060 - mem[64]
                mem[64] = _1154 + _1162 + _2060 + 32
                _2778 = sha3(mem[_2776 + 32 len mem[_2776]])
                if not stor19.length:
                    revert with 'NH{q', 18
                if sha3(mem[_2776 + 32 len mem[_2776]]) % stor19.length >= stor19.length:
                    revert with 'NH{q', 50
                if stor19[sha3(mem[_2776 + 32 len mem[_2776]]) % stor19.length].field_0:
                    if stor19[sha3(mem[_2776 + 32 len mem[_2776]]) % stor19.length].field_0 == stor19[sha3(mem[_2776 + 32 len mem[_2776]]) % stor19.length].field_1 < 32:
                        revert with 'NH{q', 34
                    mem[64] = _1154 + _1162 + _2060 + ceil32(stor19[sha3(mem[_2776 + 32 len mem[_2776]]) % stor19.length].field_1) + 64
                    if stor19[_2778 % stor19.length].field_0:
                        if stor19[_2778 % stor19.length].field_0 == stor19[_2778 % stor19.length].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor19[_2778 % stor19.length].field_1:
                            if 31 < stor19[_2778 % stor19.length].field_1:
                                mem[_1154 + _1162 + _2060 + 64] = stor19[_2778 % stor19.length].field_0
                                idx = _1154 + _1162 + _2060 + 64
                                s = 0
                                while _1154 + _1162 + _2060 + stor19[_2778 % stor19.length].field_1 + 32 > idx:
                                    mem[idx + 32] = stor19[(_2778 % stor19.length) + s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor19[_2778 % stor19.length].field_1), data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2778 % stor19.length].field_1)]), 
                            mem[_1154 + _1162 + _2060 + 64] = 256 * stor19[_2778 % stor19.length].field_8
                    else:
                        if stor19[_2778 % stor19.length].field_0 == stor19[_2778 % stor19.length].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor19[_2778 % stor19.length].field_1:
                            if 31 < stor19[_2778 % stor19.length].field_1:
                                mem[_1154 + _1162 + _2060 + 64] = stor19[_2778 % stor19.length].field_0
                                idx = _1154 + _1162 + _2060 + 64
                                s = 0
                                while _1154 + _1162 + _2060 + stor19[_2778 % stor19.length].field_1 + 32 > idx:
                                    mem[idx + 32] = stor19[(_2778 % stor19.length) + s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor19[_2778 % stor19.length].field_1), data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2778 % stor19.length].field_1)]), 
                            mem[_1154 + _1162 + _2060 + 64] = 256 * stor19[_2778 % stor19.length].field_8
                    mem[_1154 + _1162 + _2060 + ceil32(stor19[_2778 % stor19.length].field_1) + 128 len ceil32(stor19[_2778 % stor19.length].field_1)] = mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2778 % stor19.length].field_1)]
                    if ceil32(stor19[_2778 % stor19.length].field_1) > stor19[_2778 % stor19.length].field_1:
                        mem[_1154 + _1162 + _2060 + ceil32(stor19[_2778 % stor19.length].field_1) + stor19[_2778 % stor19.length].field_1 + 128] = 0
                    return Array(len=2 * Mask(256, -1, stor19[_2778 % stor19.length].field_1), data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2778 % stor19.length].field_1)], mem[_1154 + _1162 + _2060 + (2 * ceil32(stor19[_2778 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2778 % stor19.length].field_1)]), 
                if stor19[sha3(mem[_2776 + 32 len mem[_2776]]) % stor19.length].field_0 == stor19[sha3(mem[_2776 + 32 len mem[_2776]]) % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                mem[64] = _1154 + _1162 + _2060 + ceil32(stor19[sha3(mem[_2776 + 32 len mem[_2776]]) % stor19.length].field_1) + 64
                if stor19[_2778 % stor19.length].field_0:
                    if stor19[_2778 % stor19.length].field_0 == stor19[_2778 % stor19.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor19[_2778 % stor19.length].field_1:
                        if 31 < stor19[_2778 % stor19.length].field_1:
                            mem[_1154 + _1162 + _2060 + 64] = stor19[_2778 % stor19.length].field_0
                            idx = _1154 + _1162 + _2060 + 64
                            s = 0
                            while _1154 + _1162 + _2060 + stor19[_2778 % stor19.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor19[(_2778 % stor19.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor19[_2778 % stor19.length].field_0, data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2778 % stor19.length].field_1)]), 
                        mem[_1154 + _1162 + _2060 + 64] = 256 * stor19[_2778 % stor19.length].field_8
                else:
                    if stor19[_2778 % stor19.length].field_0 == stor19[_2778 % stor19.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor19[_2778 % stor19.length].field_1:
                        if 31 < stor19[_2778 % stor19.length].field_1:
                            mem[_1154 + _1162 + _2060 + 64] = stor19[_2778 % stor19.length].field_0
                            idx = _1154 + _1162 + _2060 + 64
                            s = 0
                            while _1154 + _1162 + _2060 + stor19[_2778 % stor19.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor19[(_2778 % stor19.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor19[_2778 % stor19.length].field_0, data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2778 % stor19.length].field_1)]), 
                        mem[_1154 + _1162 + _2060 + 64] = 256 * stor19[_2778 % stor19.length].field_8
                mem[_1154 + _1162 + _2060 + ceil32(stor19[_2778 % stor19.length].field_1) + 128 len ceil32(stor19[_2778 % stor19.length].field_1)] = mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2778 % stor19.length].field_1)]
                if ceil32(stor19[_2778 % stor19.length].field_1) > stor19[_2778 % stor19.length].field_1:
                    mem[_1154 + _1162 + _2060 + ceil32(stor19[_2778 % stor19.length].field_1) + stor19[_2778 % stor19.length].field_1 + 128] = 0
                return Array(len=stor19[_2778 % stor19.length].field_0, data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2778 % stor19.length].field_1)], mem[_1154 + _1162 + _2060 + (2 * ceil32(stor19[_2778 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2778 % stor19.length].field_1)]), 
            mem[_1154 + _1162 + _2060 + 32] = 0
            _2788 = mem[64]
            mem[mem[64]] = _1154 + _1162 + _2060 - mem[64]
            mem[64] = _1154 + _1162 + _2060 + 32
            _2790 = sha3(mem[_2788 + 32 len mem[_2788]])
            if not stor19.length:
                revert with 'NH{q', 18
            if sha3(mem[_2788 + 32 len mem[_2788]]) % stor19.length >= stor19.length:
                revert with 'NH{q', 50
            if stor19[sha3(mem[_2788 + 32 len mem[_2788]]) % stor19.length].field_0:
                if stor19[sha3(mem[_2788 + 32 len mem[_2788]]) % stor19.length].field_0 == stor19[sha3(mem[_2788 + 32 len mem[_2788]]) % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                mem[64] = _1154 + _1162 + _2060 + ceil32(stor19[sha3(mem[_2788 + 32 len mem[_2788]]) % stor19.length].field_1) + 64
                if stor19[_2790 % stor19.length].field_0:
                    if stor19[_2790 % stor19.length].field_0 == stor19[_2790 % stor19.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor19[_2790 % stor19.length].field_1:
                        if 31 < stor19[_2790 % stor19.length].field_1:
                            mem[_1154 + _1162 + _2060 + 64] = stor19[_2790 % stor19.length].field_0
                            idx = _1154 + _1162 + _2060 + 64
                            s = 0
                            while _1154 + _1162 + _2060 + stor19[_2790 % stor19.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor19[(_2790 % stor19.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor19[_2790 % stor19.length].field_1), data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2790 % stor19.length].field_1)]), 
                        mem[_1154 + _1162 + _2060 + 64] = 256 * stor19[_2790 % stor19.length].field_8
                else:
                    if stor19[_2790 % stor19.length].field_0 == stor19[_2790 % stor19.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor19[_2790 % stor19.length].field_1:
                        if 31 < stor19[_2790 % stor19.length].field_1:
                            mem[_1154 + _1162 + _2060 + 64] = stor19[_2790 % stor19.length].field_0
                            idx = _1154 + _1162 + _2060 + 64
                            s = 0
                            while _1154 + _1162 + _2060 + stor19[_2790 % stor19.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor19[(_2790 % stor19.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor19[_2790 % stor19.length].field_1), data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2790 % stor19.length].field_1)]), 
                        mem[_1154 + _1162 + _2060 + 64] = 256 * stor19[_2790 % stor19.length].field_8
                mem[_1154 + _1162 + _2060 + ceil32(stor19[_2790 % stor19.length].field_1) + 128 len ceil32(stor19[_2790 % stor19.length].field_1)] = mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2790 % stor19.length].field_1)]
                if ceil32(stor19[_2790 % stor19.length].field_1) > stor19[_2790 % stor19.length].field_1:
                    mem[_1154 + _1162 + _2060 + ceil32(stor19[_2790 % stor19.length].field_1) + stor19[_2790 % stor19.length].field_1 + 128] = 0
                return Array(len=2 * Mask(256, -1, stor19[_2790 % stor19.length].field_1), data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2790 % stor19.length].field_1)], mem[_1154 + _1162 + _2060 + (2 * ceil32(stor19[_2790 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2790 % stor19.length].field_1)]), 
            if stor19[sha3(mem[_2788 + 32 len mem[_2788]]) % stor19.length].field_0 == stor19[sha3(mem[_2788 + 32 len mem[_2788]]) % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1154 + _1162 + _2060 + ceil32(stor19[sha3(mem[_2788 + 32 len mem[_2788]]) % stor19.length].field_1) + 64
            if stor19[_2790 % stor19.length].field_0:
                if stor19[_2790 % stor19.length].field_0 == stor19[_2790 % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[_2790 % stor19.length].field_1:
                    if 31 < stor19[_2790 % stor19.length].field_1:
                        mem[_1154 + _1162 + _2060 + 64] = stor19[_2790 % stor19.length].field_0
                        idx = _1154 + _1162 + _2060 + 64
                        s = 0
                        while _1154 + _1162 + _2060 + stor19[_2790 % stor19.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor19[(_2790 % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor19[_2790 % stor19.length].field_0, data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2790 % stor19.length].field_1)]), 
                    mem[_1154 + _1162 + _2060 + 64] = 256 * stor19[_2790 % stor19.length].field_8
            else:
                if stor19[_2790 % stor19.length].field_0 == stor19[_2790 % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[_2790 % stor19.length].field_1:
                    if 31 < stor19[_2790 % stor19.length].field_1:
                        mem[_1154 + _1162 + _2060 + 64] = stor19[_2790 % stor19.length].field_0
                        idx = _1154 + _1162 + _2060 + 64
                        s = 0
                        while _1154 + _1162 + _2060 + stor19[_2790 % stor19.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor19[(_2790 % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor19[_2790 % stor19.length].field_0, data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2790 % stor19.length].field_1)]), 
                    mem[_1154 + _1162 + _2060 + 64] = 256 * stor19[_2790 % stor19.length].field_8
            mem[_1154 + _1162 + _2060 + ceil32(stor19[_2790 % stor19.length].field_1) + 128 len ceil32(stor19[_2790 % stor19.length].field_1)] = mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2790 % stor19.length].field_1)]
            if ceil32(stor19[_2790 % stor19.length].field_1) > stor19[_2790 % stor19.length].field_1:
                mem[_1154 + _1162 + _2060 + ceil32(stor19[_2790 % stor19.length].field_1) + stor19[_2790 % stor19.length].field_1 + 128] = 0
            return Array(len=stor19[_2790 % stor19.length].field_0, data=mem[_1154 + _1162 + _2060 + 64 len ceil32(stor19[_2790 % stor19.length].field_1)], mem[_1154 + _1162 + _2060 + (2 * ceil32(stor19[_2790 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2790 % stor19.length].field_1)]), 
        mem[mem[64] + mem[96] + 32] = 0
        _2078 = mem[160]
        mem[_1154 + _1162 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_2078) <= _2078:
            _2779 = mem[64]
            mem[mem[64]] = _1154 + _1162 + _2078 - mem[64]
            mem[64] = _1154 + _1162 + _2078 + 32
            _2781 = sha3(mem[_2779 + 32 len mem[_2779]])
            if not stor19.length:
                revert with 'NH{q', 18
            if sha3(mem[_2779 + 32 len mem[_2779]]) % stor19.length >= stor19.length:
                revert with 'NH{q', 50
            if stor19[sha3(mem[_2779 + 32 len mem[_2779]]) % stor19.length].field_0:
                if stor19[sha3(mem[_2779 + 32 len mem[_2779]]) % stor19.length].field_0 == stor19[sha3(mem[_2779 + 32 len mem[_2779]]) % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                mem[64] = _1154 + _1162 + _2078 + ceil32(stor19[sha3(mem[_2779 + 32 len mem[_2779]]) % stor19.length].field_1) + 64
                if stor19[_2781 % stor19.length].field_0:
                    if stor19[_2781 % stor19.length].field_0 == stor19[_2781 % stor19.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor19[_2781 % stor19.length].field_1:
                        if 31 < stor19[_2781 % stor19.length].field_1:
                            mem[_1154 + _1162 + _2078 + 64] = stor19[_2781 % stor19.length].field_0
                            idx = _1154 + _1162 + _2078 + 64
                            s = 0
                            while _1154 + _1162 + _2078 + stor19[_2781 % stor19.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor19[(_2781 % stor19.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor19[_2781 % stor19.length].field_1), data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2781 % stor19.length].field_1)]), 
                        mem[_1154 + _1162 + _2078 + 64] = 256 * stor19[_2781 % stor19.length].field_8
                else:
                    if stor19[_2781 % stor19.length].field_0 == stor19[_2781 % stor19.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor19[_2781 % stor19.length].field_1:
                        if 31 < stor19[_2781 % stor19.length].field_1:
                            mem[_1154 + _1162 + _2078 + 64] = stor19[_2781 % stor19.length].field_0
                            idx = _1154 + _1162 + _2078 + 64
                            s = 0
                            while _1154 + _1162 + _2078 + stor19[_2781 % stor19.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor19[(_2781 % stor19.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor19[_2781 % stor19.length].field_1), data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2781 % stor19.length].field_1)]), 
                        mem[_1154 + _1162 + _2078 + 64] = 256 * stor19[_2781 % stor19.length].field_8
                mem[_1154 + _1162 + _2078 + ceil32(stor19[_2781 % stor19.length].field_1) + 128 len ceil32(stor19[_2781 % stor19.length].field_1)] = mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2781 % stor19.length].field_1)]
                if ceil32(stor19[_2781 % stor19.length].field_1) > stor19[_2781 % stor19.length].field_1:
                    mem[_1154 + _1162 + _2078 + ceil32(stor19[_2781 % stor19.length].field_1) + stor19[_2781 % stor19.length].field_1 + 128] = 0
                return Array(len=2 * Mask(256, -1, stor19[_2781 % stor19.length].field_1), data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2781 % stor19.length].field_1)], mem[_1154 + _1162 + _2078 + (2 * ceil32(stor19[_2781 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2781 % stor19.length].field_1)]), 
            if stor19[sha3(mem[_2779 + 32 len mem[_2779]]) % stor19.length].field_0 == stor19[sha3(mem[_2779 + 32 len mem[_2779]]) % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1154 + _1162 + _2078 + ceil32(stor19[sha3(mem[_2779 + 32 len mem[_2779]]) % stor19.length].field_1) + 64
            if stor19[_2781 % stor19.length].field_0:
                if stor19[_2781 % stor19.length].field_0 == stor19[_2781 % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[_2781 % stor19.length].field_1:
                    if 31 < stor19[_2781 % stor19.length].field_1:
                        mem[_1154 + _1162 + _2078 + 64] = stor19[_2781 % stor19.length].field_0
                        idx = _1154 + _1162 + _2078 + 64
                        s = 0
                        while _1154 + _1162 + _2078 + stor19[_2781 % stor19.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor19[(_2781 % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor19[_2781 % stor19.length].field_0, data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2781 % stor19.length].field_1)]), 
                    mem[_1154 + _1162 + _2078 + 64] = 256 * stor19[_2781 % stor19.length].field_8
            else:
                if stor19[_2781 % stor19.length].field_0 == stor19[_2781 % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[_2781 % stor19.length].field_1:
                    if 31 < stor19[_2781 % stor19.length].field_1:
                        mem[_1154 + _1162 + _2078 + 64] = stor19[_2781 % stor19.length].field_0
                        idx = _1154 + _1162 + _2078 + 64
                        s = 0
                        while _1154 + _1162 + _2078 + stor19[_2781 % stor19.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor19[(_2781 % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor19[_2781 % stor19.length].field_0, data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2781 % stor19.length].field_1)]), 
                    mem[_1154 + _1162 + _2078 + 64] = 256 * stor19[_2781 % stor19.length].field_8
            mem[_1154 + _1162 + _2078 + ceil32(stor19[_2781 % stor19.length].field_1) + 128 len ceil32(stor19[_2781 % stor19.length].field_1)] = mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2781 % stor19.length].field_1)]
            if ceil32(stor19[_2781 % stor19.length].field_1) > stor19[_2781 % stor19.length].field_1:
                mem[_1154 + _1162 + _2078 + ceil32(stor19[_2781 % stor19.length].field_1) + stor19[_2781 % stor19.length].field_1 + 128] = 0
            return Array(len=stor19[_2781 % stor19.length].field_0, data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2781 % stor19.length].field_1)], mem[_1154 + _1162 + _2078 + (2 * ceil32(stor19[_2781 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2781 % stor19.length].field_1)]), 
        mem[_1154 + _1162 + _2078 + 32] = 0
        _2791 = mem[64]
        mem[mem[64]] = _1154 + _1162 + _2078 - mem[64]
        mem[64] = _1154 + _1162 + _2078 + 32
        _2793 = sha3(mem[_2791 + 32 len mem[_2791]])
        if not stor19.length:
            revert with 'NH{q', 18
        if sha3(mem[_2791 + 32 len mem[_2791]]) % stor19.length >= stor19.length:
            revert with 'NH{q', 50
        if stor19[sha3(mem[_2791 + 32 len mem[_2791]]) % stor19.length].field_0:
            if stor19[sha3(mem[_2791 + 32 len mem[_2791]]) % stor19.length].field_0 == stor19[sha3(mem[_2791 + 32 len mem[_2791]]) % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1154 + _1162 + _2078 + ceil32(stor19[sha3(mem[_2791 + 32 len mem[_2791]]) % stor19.length].field_1) + 64
            if stor19[_2793 % stor19.length].field_0:
                if stor19[_2793 % stor19.length].field_0 == stor19[_2793 % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[_2793 % stor19.length].field_1:
                    if 31 < stor19[_2793 % stor19.length].field_1:
                        mem[_1154 + _1162 + _2078 + 64] = stor19[_2793 % stor19.length].field_0
                        idx = _1154 + _1162 + _2078 + 64
                        s = 0
                        while _1154 + _1162 + _2078 + stor19[_2793 % stor19.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor19[(_2793 % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor19[_2793 % stor19.length].field_1), data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2793 % stor19.length].field_1)]), 
                    mem[_1154 + _1162 + _2078 + 64] = 256 * stor19[_2793 % stor19.length].field_8
            else:
                if stor19[_2793 % stor19.length].field_0 == stor19[_2793 % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[_2793 % stor19.length].field_1:
                    if 31 < stor19[_2793 % stor19.length].field_1:
                        mem[_1154 + _1162 + _2078 + 64] = stor19[_2793 % stor19.length].field_0
                        idx = _1154 + _1162 + _2078 + 64
                        s = 0
                        while _1154 + _1162 + _2078 + stor19[_2793 % stor19.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor19[(_2793 % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor19[_2793 % stor19.length].field_1), data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2793 % stor19.length].field_1)]), 
                    mem[_1154 + _1162 + _2078 + 64] = 256 * stor19[_2793 % stor19.length].field_8
            mem[_1154 + _1162 + _2078 + ceil32(stor19[_2793 % stor19.length].field_1) + 128 len ceil32(stor19[_2793 % stor19.length].field_1)] = mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2793 % stor19.length].field_1)]
            if ceil32(stor19[_2793 % stor19.length].field_1) > stor19[_2793 % stor19.length].field_1:
                mem[_1154 + _1162 + _2078 + ceil32(stor19[_2793 % stor19.length].field_1) + stor19[_2793 % stor19.length].field_1 + 128] = 0
            return Array(len=2 * Mask(256, -1, stor19[_2793 % stor19.length].field_1), data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2793 % stor19.length].field_1)], mem[_1154 + _1162 + _2078 + (2 * ceil32(stor19[_2793 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2793 % stor19.length].field_1)]), 
        if stor19[sha3(mem[_2791 + 32 len mem[_2791]]) % stor19.length].field_0 == stor19[sha3(mem[_2791 + 32 len mem[_2791]]) % stor19.length].field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = _1154 + _1162 + _2078 + ceil32(stor19[sha3(mem[_2791 + 32 len mem[_2791]]) % stor19.length].field_1) + 64
        if stor19[_2793 % stor19.length].field_0:
            if stor19[_2793 % stor19.length].field_0 == stor19[_2793 % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor19[_2793 % stor19.length].field_1:
                if 31 < stor19[_2793 % stor19.length].field_1:
                    mem[_1154 + _1162 + _2078 + 64] = stor19[_2793 % stor19.length].field_0
                    idx = _1154 + _1162 + _2078 + 64
                    s = 0
                    while _1154 + _1162 + _2078 + stor19[_2793 % stor19.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor19[(_2793 % stor19.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor19[_2793 % stor19.length].field_0, data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2793 % stor19.length].field_1)]), 
                mem[_1154 + _1162 + _2078 + 64] = 256 * stor19[_2793 % stor19.length].field_8
        else:
            if stor19[_2793 % stor19.length].field_0 == stor19[_2793 % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor19[_2793 % stor19.length].field_1:
                if 31 < stor19[_2793 % stor19.length].field_1:
                    mem[_1154 + _1162 + _2078 + 64] = stor19[_2793 % stor19.length].field_0
                    idx = _1154 + _1162 + _2078 + 64
                    s = 0
                    while _1154 + _1162 + _2078 + stor19[_2793 % stor19.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor19[(_2793 % stor19.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor19[_2793 % stor19.length].field_0, data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2793 % stor19.length].field_1)]), 
                mem[_1154 + _1162 + _2078 + 64] = 256 * stor19[_2793 % stor19.length].field_8
        mem[_1154 + _1162 + _2078 + ceil32(stor19[_2793 % stor19.length].field_1) + 128 len ceil32(stor19[_2793 % stor19.length].field_1)] = mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2793 % stor19.length].field_1)]
        if ceil32(stor19[_2793 % stor19.length].field_1) > stor19[_2793 % stor19.length].field_1:
            mem[_1154 + _1162 + _2078 + ceil32(stor19[_2793 % stor19.length].field_1) + stor19[_2793 % stor19.length].field_1 + 128] = 0
        return Array(len=stor19[_2793 % stor19.length].field_0, data=mem[_1154 + _1162 + _2078 + 64 len ceil32(stor19[_2793 % stor19.length].field_1)], mem[_1154 + _1162 + _2078 + (2 * ceil32(stor19[_2793 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2793 % stor19.length].field_1)]), 
    mem[192 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[160]:
            revert with 'NH{q', 50
        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _1155 = mem[64]
    _1163 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _2061 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_2061) <= _2061:
            _2782 = mem[64]
            mem[mem[64]] = _1155 + _1163 + _2061 - mem[64]
            mem[64] = _1155 + _1163 + _2061 + 32
            _2784 = sha3(mem[_2782 + 32 len mem[_2782]])
            if not stor19.length:
                revert with 'NH{q', 18
            if sha3(mem[_2782 + 32 len mem[_2782]]) % stor19.length >= stor19.length:
                revert with 'NH{q', 50
            if stor19[sha3(mem[_2782 + 32 len mem[_2782]]) % stor19.length].field_0:
                if stor19[sha3(mem[_2782 + 32 len mem[_2782]]) % stor19.length].field_0 == stor19[sha3(mem[_2782 + 32 len mem[_2782]]) % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                mem[64] = _1155 + _1163 + _2061 + ceil32(stor19[sha3(mem[_2782 + 32 len mem[_2782]]) % stor19.length].field_1) + 64
                if stor19[_2784 % stor19.length].field_0:
                    if stor19[_2784 % stor19.length].field_0 == stor19[_2784 % stor19.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor19[_2784 % stor19.length].field_1:
                        if 31 < stor19[_2784 % stor19.length].field_1:
                            mem[_1155 + _1163 + _2061 + 64] = stor19[_2784 % stor19.length].field_0
                            idx = _1155 + _1163 + _2061 + 64
                            s = 0
                            while _1155 + _1163 + _2061 + stor19[_2784 % stor19.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor19[(_2784 % stor19.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor19[_2784 % stor19.length].field_1), data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2784 % stor19.length].field_1)]), 
                        mem[_1155 + _1163 + _2061 + 64] = 256 * stor19[_2784 % stor19.length].field_8
                else:
                    if stor19[_2784 % stor19.length].field_0 == stor19[_2784 % stor19.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor19[_2784 % stor19.length].field_1:
                        if 31 < stor19[_2784 % stor19.length].field_1:
                            mem[_1155 + _1163 + _2061 + 64] = stor19[_2784 % stor19.length].field_0
                            idx = _1155 + _1163 + _2061 + 64
                            s = 0
                            while _1155 + _1163 + _2061 + stor19[_2784 % stor19.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor19[(_2784 % stor19.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor19[_2784 % stor19.length].field_1), data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2784 % stor19.length].field_1)]), 
                        mem[_1155 + _1163 + _2061 + 64] = 256 * stor19[_2784 % stor19.length].field_8
                mem[_1155 + _1163 + _2061 + ceil32(stor19[_2784 % stor19.length].field_1) + 128 len ceil32(stor19[_2784 % stor19.length].field_1)] = mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2784 % stor19.length].field_1)]
                if ceil32(stor19[_2784 % stor19.length].field_1) > stor19[_2784 % stor19.length].field_1:
                    mem[_1155 + _1163 + _2061 + ceil32(stor19[_2784 % stor19.length].field_1) + stor19[_2784 % stor19.length].field_1 + 128] = 0
                return Array(len=2 * Mask(256, -1, stor19[_2784 % stor19.length].field_1), data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2784 % stor19.length].field_1)], mem[_1155 + _1163 + _2061 + (2 * ceil32(stor19[_2784 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2784 % stor19.length].field_1)]), 
            if stor19[sha3(mem[_2782 + 32 len mem[_2782]]) % stor19.length].field_0 == stor19[sha3(mem[_2782 + 32 len mem[_2782]]) % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1155 + _1163 + _2061 + ceil32(stor19[sha3(mem[_2782 + 32 len mem[_2782]]) % stor19.length].field_1) + 64
            if stor19[_2784 % stor19.length].field_0:
                if stor19[_2784 % stor19.length].field_0 == stor19[_2784 % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[_2784 % stor19.length].field_1:
                    if 31 < stor19[_2784 % stor19.length].field_1:
                        mem[_1155 + _1163 + _2061 + 64] = stor19[_2784 % stor19.length].field_0
                        idx = _1155 + _1163 + _2061 + 64
                        s = 0
                        while _1155 + _1163 + _2061 + stor19[_2784 % stor19.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor19[(_2784 % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor19[_2784 % stor19.length].field_0, data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2784 % stor19.length].field_1)]), 
                    mem[_1155 + _1163 + _2061 + 64] = 256 * stor19[_2784 % stor19.length].field_8
            else:
                if stor19[_2784 % stor19.length].field_0 == stor19[_2784 % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[_2784 % stor19.length].field_1:
                    if 31 < stor19[_2784 % stor19.length].field_1:
                        mem[_1155 + _1163 + _2061 + 64] = stor19[_2784 % stor19.length].field_0
                        idx = _1155 + _1163 + _2061 + 64
                        s = 0
                        while _1155 + _1163 + _2061 + stor19[_2784 % stor19.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor19[(_2784 % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor19[_2784 % stor19.length].field_0, data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2784 % stor19.length].field_1)]), 
                    mem[_1155 + _1163 + _2061 + 64] = 256 * stor19[_2784 % stor19.length].field_8
            mem[_1155 + _1163 + _2061 + ceil32(stor19[_2784 % stor19.length].field_1) + 128 len ceil32(stor19[_2784 % stor19.length].field_1)] = mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2784 % stor19.length].field_1)]
            if ceil32(stor19[_2784 % stor19.length].field_1) > stor19[_2784 % stor19.length].field_1:
                mem[_1155 + _1163 + _2061 + ceil32(stor19[_2784 % stor19.length].field_1) + stor19[_2784 % stor19.length].field_1 + 128] = 0
            return Array(len=stor19[_2784 % stor19.length].field_0, data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2784 % stor19.length].field_1)], mem[_1155 + _1163 + _2061 + (2 * ceil32(stor19[_2784 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2784 % stor19.length].field_1)]), 
        mem[_1155 + _1163 + _2061 + 32] = 0
        _2794 = mem[64]
        mem[mem[64]] = _1155 + _1163 + _2061 - mem[64]
        mem[64] = _1155 + _1163 + _2061 + 32
        _2796 = sha3(mem[_2794 + 32 len mem[_2794]])
        if not stor19.length:
            revert with 'NH{q', 18
        if sha3(mem[_2794 + 32 len mem[_2794]]) % stor19.length >= stor19.length:
            revert with 'NH{q', 50
        if stor19[sha3(mem[_2794 + 32 len mem[_2794]]) % stor19.length].field_0:
            if stor19[sha3(mem[_2794 + 32 len mem[_2794]]) % stor19.length].field_0 == stor19[sha3(mem[_2794 + 32 len mem[_2794]]) % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1155 + _1163 + _2061 + ceil32(stor19[sha3(mem[_2794 + 32 len mem[_2794]]) % stor19.length].field_1) + 64
            if stor19[_2796 % stor19.length].field_0:
                if stor19[_2796 % stor19.length].field_0 == stor19[_2796 % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[_2796 % stor19.length].field_1:
                    if 31 < stor19[_2796 % stor19.length].field_1:
                        mem[_1155 + _1163 + _2061 + 64] = stor19[_2796 % stor19.length].field_0
                        idx = _1155 + _1163 + _2061 + 64
                        s = 0
                        while _1155 + _1163 + _2061 + stor19[_2796 % stor19.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor19[(_2796 % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor19[_2796 % stor19.length].field_1), data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2796 % stor19.length].field_1)]), 
                    mem[_1155 + _1163 + _2061 + 64] = 256 * stor19[_2796 % stor19.length].field_8
            else:
                if stor19[_2796 % stor19.length].field_0 == stor19[_2796 % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[_2796 % stor19.length].field_1:
                    if 31 < stor19[_2796 % stor19.length].field_1:
                        mem[_1155 + _1163 + _2061 + 64] = stor19[_2796 % stor19.length].field_0
                        idx = _1155 + _1163 + _2061 + 64
                        s = 0
                        while _1155 + _1163 + _2061 + stor19[_2796 % stor19.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor19[(_2796 % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor19[_2796 % stor19.length].field_1), data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2796 % stor19.length].field_1)]), 
                    mem[_1155 + _1163 + _2061 + 64] = 256 * stor19[_2796 % stor19.length].field_8
            mem[_1155 + _1163 + _2061 + ceil32(stor19[_2796 % stor19.length].field_1) + 128 len ceil32(stor19[_2796 % stor19.length].field_1)] = mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2796 % stor19.length].field_1)]
            if ceil32(stor19[_2796 % stor19.length].field_1) > stor19[_2796 % stor19.length].field_1:
                mem[_1155 + _1163 + _2061 + ceil32(stor19[_2796 % stor19.length].field_1) + stor19[_2796 % stor19.length].field_1 + 128] = 0
            return Array(len=2 * Mask(256, -1, stor19[_2796 % stor19.length].field_1), data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2796 % stor19.length].field_1)], mem[_1155 + _1163 + _2061 + (2 * ceil32(stor19[_2796 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2796 % stor19.length].field_1)]), 
        if stor19[sha3(mem[_2794 + 32 len mem[_2794]]) % stor19.length].field_0 == stor19[sha3(mem[_2794 + 32 len mem[_2794]]) % stor19.length].field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = _1155 + _1163 + _2061 + ceil32(stor19[sha3(mem[_2794 + 32 len mem[_2794]]) % stor19.length].field_1) + 64
        if stor19[_2796 % stor19.length].field_0:
            if stor19[_2796 % stor19.length].field_0 == stor19[_2796 % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor19[_2796 % stor19.length].field_1:
                if 31 < stor19[_2796 % stor19.length].field_1:
                    mem[_1155 + _1163 + _2061 + 64] = stor19[_2796 % stor19.length].field_0
                    idx = _1155 + _1163 + _2061 + 64
                    s = 0
                    while _1155 + _1163 + _2061 + stor19[_2796 % stor19.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor19[(_2796 % stor19.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor19[_2796 % stor19.length].field_0, data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2796 % stor19.length].field_1)]), 
                mem[_1155 + _1163 + _2061 + 64] = 256 * stor19[_2796 % stor19.length].field_8
        else:
            if stor19[_2796 % stor19.length].field_0 == stor19[_2796 % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor19[_2796 % stor19.length].field_1:
                if 31 < stor19[_2796 % stor19.length].field_1:
                    mem[_1155 + _1163 + _2061 + 64] = stor19[_2796 % stor19.length].field_0
                    idx = _1155 + _1163 + _2061 + 64
                    s = 0
                    while _1155 + _1163 + _2061 + stor19[_2796 % stor19.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor19[(_2796 % stor19.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor19[_2796 % stor19.length].field_0, data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2796 % stor19.length].field_1)]), 
                mem[_1155 + _1163 + _2061 + 64] = 256 * stor19[_2796 % stor19.length].field_8
        mem[_1155 + _1163 + _2061 + ceil32(stor19[_2796 % stor19.length].field_1) + 128 len ceil32(stor19[_2796 % stor19.length].field_1)] = mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2796 % stor19.length].field_1)]
        if ceil32(stor19[_2796 % stor19.length].field_1) > stor19[_2796 % stor19.length].field_1:
            mem[_1155 + _1163 + _2061 + ceil32(stor19[_2796 % stor19.length].field_1) + stor19[_2796 % stor19.length].field_1 + 128] = 0
        return Array(len=stor19[_2796 % stor19.length].field_0, data=mem[_1155 + _1163 + _2061 + 64 len ceil32(stor19[_2796 % stor19.length].field_1)], mem[_1155 + _1163 + _2061 + (2 * ceil32(stor19[_2796 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2796 % stor19.length].field_1)]), 
    mem[mem[64] + mem[96] + 32] = 0
    _2079 = mem[160]
    mem[_1155 + _1163 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if ceil32(_2079) <= _2079:
        _2785 = mem[64]
        mem[mem[64]] = _1155 + _1163 + _2079 - mem[64]
        mem[64] = _1155 + _1163 + _2079 + 32
        _2787 = sha3(mem[_2785 + 32 len mem[_2785]])
        if not stor19.length:
            revert with 'NH{q', 18
        if sha3(mem[_2785 + 32 len mem[_2785]]) % stor19.length >= stor19.length:
            revert with 'NH{q', 50
        if stor19[sha3(mem[_2785 + 32 len mem[_2785]]) % stor19.length].field_0:
            if stor19[sha3(mem[_2785 + 32 len mem[_2785]]) % stor19.length].field_0 == stor19[sha3(mem[_2785 + 32 len mem[_2785]]) % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1155 + _1163 + _2079 + ceil32(stor19[sha3(mem[_2785 + 32 len mem[_2785]]) % stor19.length].field_1) + 64
            if stor19[_2787 % stor19.length].field_0:
                if stor19[_2787 % stor19.length].field_0 == stor19[_2787 % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[_2787 % stor19.length].field_1:
                    if 31 < stor19[_2787 % stor19.length].field_1:
                        mem[_1155 + _1163 + _2079 + 64] = stor19[_2787 % stor19.length].field_0
                        idx = _1155 + _1163 + _2079 + 64
                        s = 0
                        while _1155 + _1163 + _2079 + stor19[_2787 % stor19.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor19[(_2787 % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor19[_2787 % stor19.length].field_1), data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2787 % stor19.length].field_1)]), 
                    mem[_1155 + _1163 + _2079 + 64] = 256 * stor19[_2787 % stor19.length].field_8
            else:
                if stor19[_2787 % stor19.length].field_0 == stor19[_2787 % stor19.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[_2787 % stor19.length].field_1:
                    if 31 < stor19[_2787 % stor19.length].field_1:
                        mem[_1155 + _1163 + _2079 + 64] = stor19[_2787 % stor19.length].field_0
                        idx = _1155 + _1163 + _2079 + 64
                        s = 0
                        while _1155 + _1163 + _2079 + stor19[_2787 % stor19.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor19[(_2787 % stor19.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor19[_2787 % stor19.length].field_1), data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2787 % stor19.length].field_1)]), 
                    mem[_1155 + _1163 + _2079 + 64] = 256 * stor19[_2787 % stor19.length].field_8
            mem[_1155 + _1163 + _2079 + ceil32(stor19[_2787 % stor19.length].field_1) + 128 len ceil32(stor19[_2787 % stor19.length].field_1)] = mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2787 % stor19.length].field_1)]
            if ceil32(stor19[_2787 % stor19.length].field_1) > stor19[_2787 % stor19.length].field_1:
                mem[_1155 + _1163 + _2079 + ceil32(stor19[_2787 % stor19.length].field_1) + stor19[_2787 % stor19.length].field_1 + 128] = 0
            return Array(len=2 * Mask(256, -1, stor19[_2787 % stor19.length].field_1), data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2787 % stor19.length].field_1)], mem[_1155 + _1163 + _2079 + (2 * ceil32(stor19[_2787 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2787 % stor19.length].field_1)]), 
        if stor19[sha3(mem[_2785 + 32 len mem[_2785]]) % stor19.length].field_0 == stor19[sha3(mem[_2785 + 32 len mem[_2785]]) % stor19.length].field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = _1155 + _1163 + _2079 + ceil32(stor19[sha3(mem[_2785 + 32 len mem[_2785]]) % stor19.length].field_1) + 64
        if stor19[_2787 % stor19.length].field_0:
            if stor19[_2787 % stor19.length].field_0 == stor19[_2787 % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor19[_2787 % stor19.length].field_1:
                if 31 < stor19[_2787 % stor19.length].field_1:
                    mem[_1155 + _1163 + _2079 + 64] = stor19[_2787 % stor19.length].field_0
                    idx = _1155 + _1163 + _2079 + 64
                    s = 0
                    while _1155 + _1163 + _2079 + stor19[_2787 % stor19.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor19[(_2787 % stor19.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor19[_2787 % stor19.length].field_0, data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2787 % stor19.length].field_1)]), 
                mem[_1155 + _1163 + _2079 + 64] = 256 * stor19[_2787 % stor19.length].field_8
        else:
            if stor19[_2787 % stor19.length].field_0 == stor19[_2787 % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor19[_2787 % stor19.length].field_1:
                if 31 < stor19[_2787 % stor19.length].field_1:
                    mem[_1155 + _1163 + _2079 + 64] = stor19[_2787 % stor19.length].field_0
                    idx = _1155 + _1163 + _2079 + 64
                    s = 0
                    while _1155 + _1163 + _2079 + stor19[_2787 % stor19.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor19[(_2787 % stor19.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor19[_2787 % stor19.length].field_0, data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2787 % stor19.length].field_1)]), 
                mem[_1155 + _1163 + _2079 + 64] = 256 * stor19[_2787 % stor19.length].field_8
        mem[_1155 + _1163 + _2079 + ceil32(stor19[_2787 % stor19.length].field_1) + 128 len ceil32(stor19[_2787 % stor19.length].field_1)] = mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2787 % stor19.length].field_1)]
        if ceil32(stor19[_2787 % stor19.length].field_1) > stor19[_2787 % stor19.length].field_1:
            mem[_1155 + _1163 + _2079 + ceil32(stor19[_2787 % stor19.length].field_1) + stor19[_2787 % stor19.length].field_1 + 128] = 0
        return Array(len=stor19[_2787 % stor19.length].field_0, data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2787 % stor19.length].field_1)], mem[_1155 + _1163 + _2079 + (2 * ceil32(stor19[_2787 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2787 % stor19.length].field_1)]), 
    mem[_1155 + _1163 + _2079 + 32] = 0
    _2797 = mem[64]
    mem[mem[64]] = _1155 + _1163 + _2079 - mem[64]
    mem[64] = _1155 + _1163 + _2079 + 32
    _2799 = sha3(mem[_2797 + 32 len mem[_2797]])
    if not stor19.length:
        revert with 'NH{q', 18
    if sha3(mem[_2797 + 32 len mem[_2797]]) % stor19.length >= stor19.length:
        revert with 'NH{q', 50
    if stor19[sha3(mem[_2797 + 32 len mem[_2797]]) % stor19.length].field_0:
        if stor19[sha3(mem[_2797 + 32 len mem[_2797]]) % stor19.length].field_0 == stor19[sha3(mem[_2797 + 32 len mem[_2797]]) % stor19.length].field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = _1155 + _1163 + _2079 + ceil32(stor19[sha3(mem[_2797 + 32 len mem[_2797]]) % stor19.length].field_1) + 64
        if stor19[_2799 % stor19.length].field_0:
            if stor19[_2799 % stor19.length].field_0 == stor19[_2799 % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor19[_2799 % stor19.length].field_1:
                if 31 < stor19[_2799 % stor19.length].field_1:
                    mem[_1155 + _1163 + _2079 + 64] = stor19[_2799 % stor19.length].field_0
                    idx = _1155 + _1163 + _2079 + 64
                    s = 0
                    while _1155 + _1163 + _2079 + stor19[_2799 % stor19.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor19[(_2799 % stor19.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19[_2799 % stor19.length].field_1), data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2799 % stor19.length].field_1)]), 
                mem[_1155 + _1163 + _2079 + 64] = 256 * stor19[_2799 % stor19.length].field_8
        else:
            if stor19[_2799 % stor19.length].field_0 == stor19[_2799 % stor19.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor19[_2799 % stor19.length].field_1:
                if 31 < stor19[_2799 % stor19.length].field_1:
                    mem[_1155 + _1163 + _2079 + 64] = stor19[_2799 % stor19.length].field_0
                    idx = _1155 + _1163 + _2079 + 64
                    s = 0
                    while _1155 + _1163 + _2079 + stor19[_2799 % stor19.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor19[(_2799 % stor19.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19[_2799 % stor19.length].field_1), data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2799 % stor19.length].field_1)]), 
                mem[_1155 + _1163 + _2079 + 64] = 256 * stor19[_2799 % stor19.length].field_8
        mem[_1155 + _1163 + _2079 + ceil32(stor19[_2799 % stor19.length].field_1) + 128 len ceil32(stor19[_2799 % stor19.length].field_1)] = mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2799 % stor19.length].field_1)]
        if ceil32(stor19[_2799 % stor19.length].field_1) > stor19[_2799 % stor19.length].field_1:
            mem[_1155 + _1163 + _2079 + ceil32(stor19[_2799 % stor19.length].field_1) + stor19[_2799 % stor19.length].field_1 + 128] = 0
        return Array(len=2 * Mask(256, -1, stor19[_2799 % stor19.length].field_1), data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2799 % stor19.length].field_1)], mem[_1155 + _1163 + _2079 + (2 * ceil32(stor19[_2799 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2799 % stor19.length].field_1)]), 
    if stor19[sha3(mem[_2797 + 32 len mem[_2797]]) % stor19.length].field_0 == stor19[sha3(mem[_2797 + 32 len mem[_2797]]) % stor19.length].field_1 < 32:
        revert with 'NH{q', 34
    mem[64] = _1155 + _1163 + _2079 + ceil32(stor19[sha3(mem[_2797 + 32 len mem[_2797]]) % stor19.length].field_1) + 64
    if stor19[_2799 % stor19.length].field_0:
        if stor19[_2799 % stor19.length].field_0 == stor19[_2799 % stor19.length].field_1 < 32:
            revert with 'NH{q', 34
        if stor19[_2799 % stor19.length].field_1:
            if 31 < stor19[_2799 % stor19.length].field_1:
                mem[_1155 + _1163 + _2079 + 64] = stor19[_2799 % stor19.length].field_0
                idx = _1155 + _1163 + _2079 + 64
                s = 0
                while _1155 + _1163 + _2079 + stor19[_2799 % stor19.length].field_1 + 32 > idx:
                    mem[idx + 32] = stor19[(_2799 % stor19.length) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19[_2799 % stor19.length].field_0, data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2799 % stor19.length].field_1)]), 
            mem[_1155 + _1163 + _2079 + 64] = 256 * stor19[_2799 % stor19.length].field_8
    else:
        if stor19[_2799 % stor19.length].field_0 == stor19[_2799 % stor19.length].field_1 < 32:
            revert with 'NH{q', 34
        if stor19[_2799 % stor19.length].field_1:
            if 31 < stor19[_2799 % stor19.length].field_1:
                mem[_1155 + _1163 + _2079 + 64] = stor19[_2799 % stor19.length].field_0
                idx = _1155 + _1163 + _2079 + 64
                s = 0
                while _1155 + _1163 + _2079 + stor19[_2799 % stor19.length].field_1 + 32 > idx:
                    mem[idx + 32] = stor19[(_2799 % stor19.length) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19[_2799 % stor19.length].field_0, data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2799 % stor19.length].field_1)]), 
            mem[_1155 + _1163 + _2079 + 64] = 256 * stor19[_2799 % stor19.length].field_8
    mem[_1155 + _1163 + _2079 + ceil32(stor19[_2799 % stor19.length].field_1) + 128 len ceil32(stor19[_2799 % stor19.length].field_1)] = mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2799 % stor19.length].field_1)]
    if ceil32(stor19[_2799 % stor19.length].field_1) > stor19[_2799 % stor19.length].field_1:
        mem[_1155 + _1163 + _2079 + ceil32(stor19[_2799 % stor19.length].field_1) + stor19[_2799 % stor19.length].field_1 + 128] = 0
    return Array(len=stor19[_2799 % stor19.length].field_0, data=mem[_1155 + _1163 + _2079 + 64 len ceil32(stor19[_2799 % stor19.length].field_1)], mem[_1155 + _1163 + _2079 + (2 * ceil32(stor19[_2799 % stor19.length].field_1)) + 128 len 2 * ceil32(stor19[_2799 % stor19.length].field_1)]), 
}

function getBackground(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 10
    mem[128] = 'background'
    if not arg1:
        if sha3('background', '0') % 40 == 1:
            return '#C1A520', 0
        if not stor17.length:
            revert with 'NH{q', 18
        if sha3('background', '0') % stor17.length >= stor17.length:
            revert with 'NH{q', 50
        if stor17[('map', "'background'", "'0'") % stor17.length].field_0:
            if stor17[('map', "'background'", "'0'") % stor17.length].field_0 == stor17[('map', "'background'", "'0'") % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[('map', "'background'", "'0'") % stor17.length].field_0:
                if stor17[('map', "'background'", "'0'") % stor17.length].field_0 == stor17[('map', "'background'", "'0'") % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[('map', "'background'", "'0'") % stor17.length].field_1:
                    if 31 < stor17[('map', "'background'", "'0'") % stor17.length].field_1:
                        mem[299] = stor17[('map', "'background'", "'0'") % stor17.length].field_0
                        idx = 299
                        s = 0
                        while stor17[('map', "'background'", "'0'") % stor17.length].field_1 + 267 > idx:
                            mem[idx + 32] = stor17[(('map', "'background'", "'0'") % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor17[('map', "'background'", "'0'") % stor17.length].field_1), data=mem[299 len ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)]), 
                    mem[299] = 256 * stor17[('map', "'background'", "'0'") % stor17.length].field_8
            else:
                if stor17[('map', "'background'", "'0'") % stor17.length].field_0 == stor17[('map', "'background'", "'0'") % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[('map', "'background'", "'0'") % stor17.length].field_1:
                    if 31 < stor17[('map', "'background'", "'0'") % stor17.length].field_1:
                        mem[299] = stor17[('map', "'background'", "'0'") % stor17.length].field_0
                        idx = 299
                        s = 0
                        while stor17[('map', "'background'", "'0'") % stor17.length].field_1 + 267 > idx:
                            mem[idx + 32] = stor17[(('map', "'background'", "'0'") % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor17[('map', "'background'", "'0'") % stor17.length].field_1), data=mem[299 len ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)]), 
                    mem[299] = 256 * stor17[('map', "'background'", "'0'") % stor17.length].field_8
            mem[ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1) + 363 len ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)] = mem[299 len ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)]
            if ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1) > stor17[('map', "'background'", "'0'") % stor17.length].field_1:
                mem[ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1) + stor17[('map', "'background'", "'0'") % stor17.length].field_1 + 363] = 0
            return Array(len=2 * Mask(256, -1, stor17[('map', "'background'", "'0'") % stor17.length].field_1), data=mem[299 len ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)], mem[(2 * ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)) + 363 len 2 * ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)]), 
        if stor17[('map', "'background'", "'0'") % stor17.length].field_0 == stor17[('map', "'background'", "'0'") % stor17.length].field_1 < 32:
            revert with 'NH{q', 34
        if stor17[('map', "'background'", "'0'") % stor17.length].field_0:
            if stor17[('map', "'background'", "'0'") % stor17.length].field_0 == stor17[('map', "'background'", "'0'") % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[('map', "'background'", "'0'") % stor17.length].field_1:
                if 31 < stor17[('map', "'background'", "'0'") % stor17.length].field_1:
                    mem[299] = stor17[('map', "'background'", "'0'") % stor17.length].field_0
                    idx = 299
                    s = 0
                    while stor17[('map', "'background'", "'0'") % stor17.length].field_1 + 267 > idx:
                        mem[idx + 32] = stor17[(('map', "'background'", "'0'") % stor17.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor17[('map', "'background'", "'0'") % stor17.length].field_0, data=mem[299 len ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)]), 
                mem[299] = 256 * stor17[('map', "'background'", "'0'") % stor17.length].field_8
        else:
            if stor17[('map', "'background'", "'0'") % stor17.length].field_0 == stor17[('map', "'background'", "'0'") % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[('map', "'background'", "'0'") % stor17.length].field_1:
                if 31 < stor17[('map', "'background'", "'0'") % stor17.length].field_1:
                    mem[299] = stor17[('map', "'background'", "'0'") % stor17.length].field_0
                    idx = 299
                    s = 0
                    while stor17[('map', "'background'", "'0'") % stor17.length].field_1 + 267 > idx:
                        mem[idx + 32] = stor17[(('map', "'background'", "'0'") % stor17.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor17[('map', "'background'", "'0'") % stor17.length].field_0, data=mem[299 len ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)]), 
                mem[299] = 256 * stor17[('map', "'background'", "'0'") % stor17.length].field_8
        mem[ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1) + 363 len ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)] = mem[299 len ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)]
        if ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1) > stor17[('map', "'background'", "'0'") % stor17.length].field_1:
            mem[ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1) + stor17[('map', "'background'", "'0'") % stor17.length].field_1 + 363] = 0
        return Array(len=stor17[('map', "'background'", "'0'") % stor17.length].field_0, data=mem[299 len ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)], mem[(2 * ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)) + 363 len 2 * ceil32(stor17[('map', "'background'", "'0'") % stor17.length].field_1)]), 
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
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[160]:
                revert with 'NH{q', 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1250 = mem[64]
        _1258 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _2232 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_2232) <= _2232:
                _3004 = mem[64]
                mem[mem[64]] = _1250 + _1258 + _2232 - mem[64]
                mem[64] = _1250 + _1258 + _2232 + 32
                _3006 = sha3(mem[_3004 + 32 len mem[_3004]])
                if sha3(mem[_3004 + 32 len mem[_3004]]) % 40 == 1:
                    return '#C1A520', 0
                if not stor17.length:
                    revert with 'NH{q', 18
                if sha3(mem[_3004 + 32 len mem[_3004]]) % stor17.length >= stor17.length:
                    revert with 'NH{q', 50
                if stor17[sha3(mem[_3004 + 32 len mem[_3004]]) % stor17.length].field_0:
                    if stor17[sha3(mem[_3004 + 32 len mem[_3004]]) % stor17.length].field_0 == stor17[sha3(mem[_3004 + 32 len mem[_3004]]) % stor17.length].field_1 < 32:
                        revert with 'NH{q', 34
                    mem[64] = _1250 + _1258 + _2232 + ceil32(stor17[sha3(mem[_3004 + 32 len mem[_3004]]) % stor17.length].field_1) + 64
                    if stor17[_3006 % stor17.length].field_0:
                        if stor17[_3006 % stor17.length].field_0 == stor17[_3006 % stor17.length].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor17[_3006 % stor17.length].field_1:
                            if 31 < stor17[_3006 % stor17.length].field_1:
                                mem[_1250 + _1258 + _2232 + 64] = stor17[_3006 % stor17.length].field_0
                                idx = _1250 + _1258 + _2232 + 64
                                s = 0
                                while _1250 + _1258 + _2232 + stor17[_3006 % stor17.length].field_1 + 32 > idx:
                                    mem[idx + 32] = stor17[(_3006 % stor17.length) + s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor17[_3006 % stor17.length].field_1), data=mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3006 % stor17.length].field_1)]), 
                            mem[_1250 + _1258 + _2232 + 64] = 256 * stor17[_3006 % stor17.length].field_8
                    else:
                        if stor17[_3006 % stor17.length].field_0 == stor17[_3006 % stor17.length].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor17[_3006 % stor17.length].field_1:
                            if 31 < stor17[_3006 % stor17.length].field_1:
                                mem[_1250 + _1258 + _2232 + 64] = stor17[_3006 % stor17.length].field_0
                                idx = _1250 + _1258 + _2232 + 64
                                s = 0
                                while _1250 + _1258 + _2232 + stor17[_3006 % stor17.length].field_1 + 32 > idx:
                                    mem[idx + 32] = stor17[(_3006 % stor17.length) + s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor17[_3006 % stor17.length].field_1), data=mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3006 % stor17.length].field_1)]), 
                            mem[_1250 + _1258 + _2232 + 64] = 256 * stor17[_3006 % stor17.length].field_8
                    mem[_1250 + _1258 + _2232 + ceil32(stor17[_3006 % stor17.length].field_1) + 128 len ceil32(stor17[_3006 % stor17.length].field_1)] = mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3006 % stor17.length].field_1)]
                    if ceil32(stor17[_3006 % stor17.length].field_1) > stor17[_3006 % stor17.length].field_1:
                        mem[_1250 + _1258 + _2232 + ceil32(stor17[_3006 % stor17.length].field_1) + stor17[_3006 % stor17.length].field_1 + 128] = 0
                    return Array(len=2 * Mask(256, -1, stor17[_3006 % stor17.length].field_1), data=mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3006 % stor17.length].field_1)], mem[_1250 + _1258 + _2232 + (2 * ceil32(stor17[_3006 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3006 % stor17.length].field_1)]), 
                if stor17[sha3(mem[_3004 + 32 len mem[_3004]]) % stor17.length].field_0 == stor17[sha3(mem[_3004 + 32 len mem[_3004]]) % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                mem[64] = _1250 + _1258 + _2232 + ceil32(stor17[sha3(mem[_3004 + 32 len mem[_3004]]) % stor17.length].field_1) + 64
                if stor17[_3006 % stor17.length].field_0:
                    if stor17[_3006 % stor17.length].field_0 == stor17[_3006 % stor17.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor17[_3006 % stor17.length].field_1:
                        if 31 < stor17[_3006 % stor17.length].field_1:
                            mem[_1250 + _1258 + _2232 + 64] = stor17[_3006 % stor17.length].field_0
                            idx = _1250 + _1258 + _2232 + 64
                            s = 0
                            while _1250 + _1258 + _2232 + stor17[_3006 % stor17.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor17[(_3006 % stor17.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor17[_3006 % stor17.length].field_0, data=mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3006 % stor17.length].field_1)]), 
                        mem[_1250 + _1258 + _2232 + 64] = 256 * stor17[_3006 % stor17.length].field_8
                else:
                    if stor17[_3006 % stor17.length].field_0 == stor17[_3006 % stor17.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor17[_3006 % stor17.length].field_1:
                        if 31 < stor17[_3006 % stor17.length].field_1:
                            mem[_1250 + _1258 + _2232 + 64] = stor17[_3006 % stor17.length].field_0
                            idx = _1250 + _1258 + _2232 + 64
                            s = 0
                            while _1250 + _1258 + _2232 + stor17[_3006 % stor17.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor17[(_3006 % stor17.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor17[_3006 % stor17.length].field_0, data=mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3006 % stor17.length].field_1)]), 
                        mem[_1250 + _1258 + _2232 + 64] = 256 * stor17[_3006 % stor17.length].field_8
                mem[_1250 + _1258 + _2232 + ceil32(stor17[_3006 % stor17.length].field_1) + 128 len ceil32(stor17[_3006 % stor17.length].field_1)] = mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3006 % stor17.length].field_1)]
                if ceil32(stor17[_3006 % stor17.length].field_1) > stor17[_3006 % stor17.length].field_1:
                    mem[_1250 + _1258 + _2232 + ceil32(stor17[_3006 % stor17.length].field_1) + stor17[_3006 % stor17.length].field_1 + 128] = 0
                return Array(len=stor17[_3006 % stor17.length].field_0, data=mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3006 % stor17.length].field_1)], mem[_1250 + _1258 + _2232 + (2 * ceil32(stor17[_3006 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3006 % stor17.length].field_1)]), 
            mem[_1250 + _1258 + _2232 + 32] = 0
            _3016 = mem[64]
            mem[mem[64]] = _1250 + _1258 + _2232 - mem[64]
            mem[64] = _1250 + _1258 + _2232 + 32
            _3018 = sha3(mem[_3016 + 32 len mem[_3016]])
            if sha3(mem[_3016 + 32 len mem[_3016]]) % 40 == 1:
                return '#C1A520', 0
            if not stor17.length:
                revert with 'NH{q', 18
            if sha3(mem[_3016 + 32 len mem[_3016]]) % stor17.length >= stor17.length:
                revert with 'NH{q', 50
            if stor17[sha3(mem[_3016 + 32 len mem[_3016]]) % stor17.length].field_0:
                if stor17[sha3(mem[_3016 + 32 len mem[_3016]]) % stor17.length].field_0 == stor17[sha3(mem[_3016 + 32 len mem[_3016]]) % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                mem[64] = _1250 + _1258 + _2232 + ceil32(stor17[sha3(mem[_3016 + 32 len mem[_3016]]) % stor17.length].field_1) + 64
                if stor17[_3018 % stor17.length].field_0:
                    if stor17[_3018 % stor17.length].field_0 == stor17[_3018 % stor17.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor17[_3018 % stor17.length].field_1:
                        if 31 < stor17[_3018 % stor17.length].field_1:
                            mem[_1250 + _1258 + _2232 + 64] = stor17[_3018 % stor17.length].field_0
                            idx = _1250 + _1258 + _2232 + 64
                            s = 0
                            while _1250 + _1258 + _2232 + stor17[_3018 % stor17.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor17[(_3018 % stor17.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor17[_3018 % stor17.length].field_1), data=mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3018 % stor17.length].field_1)]), 
                        mem[_1250 + _1258 + _2232 + 64] = 256 * stor17[_3018 % stor17.length].field_8
                else:
                    if stor17[_3018 % stor17.length].field_0 == stor17[_3018 % stor17.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor17[_3018 % stor17.length].field_1:
                        if 31 < stor17[_3018 % stor17.length].field_1:
                            mem[_1250 + _1258 + _2232 + 64] = stor17[_3018 % stor17.length].field_0
                            idx = _1250 + _1258 + _2232 + 64
                            s = 0
                            while _1250 + _1258 + _2232 + stor17[_3018 % stor17.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor17[(_3018 % stor17.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor17[_3018 % stor17.length].field_1), data=mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3018 % stor17.length].field_1)]), 
                        mem[_1250 + _1258 + _2232 + 64] = 256 * stor17[_3018 % stor17.length].field_8
                mem[_1250 + _1258 + _2232 + ceil32(stor17[_3018 % stor17.length].field_1) + 128 len ceil32(stor17[_3018 % stor17.length].field_1)] = mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3018 % stor17.length].field_1)]
                if ceil32(stor17[_3018 % stor17.length].field_1) > stor17[_3018 % stor17.length].field_1:
                    mem[_1250 + _1258 + _2232 + ceil32(stor17[_3018 % stor17.length].field_1) + stor17[_3018 % stor17.length].field_1 + 128] = 0
                return Array(len=2 * Mask(256, -1, stor17[_3018 % stor17.length].field_1), data=mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3018 % stor17.length].field_1)], mem[_1250 + _1258 + _2232 + (2 * ceil32(stor17[_3018 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3018 % stor17.length].field_1)]), 
            if stor17[sha3(mem[_3016 + 32 len mem[_3016]]) % stor17.length].field_0 == stor17[sha3(mem[_3016 + 32 len mem[_3016]]) % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1250 + _1258 + _2232 + ceil32(stor17[sha3(mem[_3016 + 32 len mem[_3016]]) % stor17.length].field_1) + 64
            if stor17[_3018 % stor17.length].field_0:
                if stor17[_3018 % stor17.length].field_0 == stor17[_3018 % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[_3018 % stor17.length].field_1:
                    if 31 < stor17[_3018 % stor17.length].field_1:
                        mem[_1250 + _1258 + _2232 + 64] = stor17[_3018 % stor17.length].field_0
                        idx = _1250 + _1258 + _2232 + 64
                        s = 0
                        while _1250 + _1258 + _2232 + stor17[_3018 % stor17.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor17[(_3018 % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor17[_3018 % stor17.length].field_0, data=mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3018 % stor17.length].field_1)]), 
                    mem[_1250 + _1258 + _2232 + 64] = 256 * stor17[_3018 % stor17.length].field_8
            else:
                if stor17[_3018 % stor17.length].field_0 == stor17[_3018 % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[_3018 % stor17.length].field_1:
                    if 31 < stor17[_3018 % stor17.length].field_1:
                        mem[_1250 + _1258 + _2232 + 64] = stor17[_3018 % stor17.length].field_0
                        idx = _1250 + _1258 + _2232 + 64
                        s = 0
                        while _1250 + _1258 + _2232 + stor17[_3018 % stor17.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor17[(_3018 % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor17[_3018 % stor17.length].field_0, data=mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3018 % stor17.length].field_1)]), 
                    mem[_1250 + _1258 + _2232 + 64] = 256 * stor17[_3018 % stor17.length].field_8
            mem[_1250 + _1258 + _2232 + ceil32(stor17[_3018 % stor17.length].field_1) + 128 len ceil32(stor17[_3018 % stor17.length].field_1)] = mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3018 % stor17.length].field_1)]
            if ceil32(stor17[_3018 % stor17.length].field_1) > stor17[_3018 % stor17.length].field_1:
                mem[_1250 + _1258 + _2232 + ceil32(stor17[_3018 % stor17.length].field_1) + stor17[_3018 % stor17.length].field_1 + 128] = 0
            return Array(len=stor17[_3018 % stor17.length].field_0, data=mem[_1250 + _1258 + _2232 + 64 len ceil32(stor17[_3018 % stor17.length].field_1)], mem[_1250 + _1258 + _2232 + (2 * ceil32(stor17[_3018 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3018 % stor17.length].field_1)]), 
        mem[mem[64] + mem[96] + 32] = 0
        _2234 = mem[160]
        mem[_1250 + _1258 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_2234) <= _2234:
            _3007 = mem[64]
            mem[mem[64]] = _1250 + _1258 + _2234 - mem[64]
            mem[64] = _1250 + _1258 + _2234 + 32
            _3009 = sha3(mem[_3007 + 32 len mem[_3007]])
            if sha3(mem[_3007 + 32 len mem[_3007]]) % 40 == 1:
                return '#C1A520', 0
            if not stor17.length:
                revert with 'NH{q', 18
            if sha3(mem[_3007 + 32 len mem[_3007]]) % stor17.length >= stor17.length:
                revert with 'NH{q', 50
            if stor17[sha3(mem[_3007 + 32 len mem[_3007]]) % stor17.length].field_0:
                if stor17[sha3(mem[_3007 + 32 len mem[_3007]]) % stor17.length].field_0 == stor17[sha3(mem[_3007 + 32 len mem[_3007]]) % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                mem[64] = _1250 + _1258 + _2234 + ceil32(stor17[sha3(mem[_3007 + 32 len mem[_3007]]) % stor17.length].field_1) + 64
                if stor17[_3009 % stor17.length].field_0:
                    if stor17[_3009 % stor17.length].field_0 == stor17[_3009 % stor17.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor17[_3009 % stor17.length].field_1:
                        if 31 < stor17[_3009 % stor17.length].field_1:
                            mem[_1250 + _1258 + _2234 + 64] = stor17[_3009 % stor17.length].field_0
                            idx = _1250 + _1258 + _2234 + 64
                            s = 0
                            while _1250 + _1258 + _2234 + stor17[_3009 % stor17.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor17[(_3009 % stor17.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor17[_3009 % stor17.length].field_1), data=mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3009 % stor17.length].field_1)]), 
                        mem[_1250 + _1258 + _2234 + 64] = 256 * stor17[_3009 % stor17.length].field_8
                else:
                    if stor17[_3009 % stor17.length].field_0 == stor17[_3009 % stor17.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor17[_3009 % stor17.length].field_1:
                        if 31 < stor17[_3009 % stor17.length].field_1:
                            mem[_1250 + _1258 + _2234 + 64] = stor17[_3009 % stor17.length].field_0
                            idx = _1250 + _1258 + _2234 + 64
                            s = 0
                            while _1250 + _1258 + _2234 + stor17[_3009 % stor17.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor17[(_3009 % stor17.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor17[_3009 % stor17.length].field_1), data=mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3009 % stor17.length].field_1)]), 
                        mem[_1250 + _1258 + _2234 + 64] = 256 * stor17[_3009 % stor17.length].field_8
                mem[_1250 + _1258 + _2234 + ceil32(stor17[_3009 % stor17.length].field_1) + 128 len ceil32(stor17[_3009 % stor17.length].field_1)] = mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3009 % stor17.length].field_1)]
                if ceil32(stor17[_3009 % stor17.length].field_1) > stor17[_3009 % stor17.length].field_1:
                    mem[_1250 + _1258 + _2234 + ceil32(stor17[_3009 % stor17.length].field_1) + stor17[_3009 % stor17.length].field_1 + 128] = 0
                return Array(len=2 * Mask(256, -1, stor17[_3009 % stor17.length].field_1), data=mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3009 % stor17.length].field_1)], mem[_1250 + _1258 + _2234 + (2 * ceil32(stor17[_3009 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3009 % stor17.length].field_1)]), 
            if stor17[sha3(mem[_3007 + 32 len mem[_3007]]) % stor17.length].field_0 == stor17[sha3(mem[_3007 + 32 len mem[_3007]]) % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1250 + _1258 + _2234 + ceil32(stor17[sha3(mem[_3007 + 32 len mem[_3007]]) % stor17.length].field_1) + 64
            if stor17[_3009 % stor17.length].field_0:
                if stor17[_3009 % stor17.length].field_0 == stor17[_3009 % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[_3009 % stor17.length].field_1:
                    if 31 < stor17[_3009 % stor17.length].field_1:
                        mem[_1250 + _1258 + _2234 + 64] = stor17[_3009 % stor17.length].field_0
                        idx = _1250 + _1258 + _2234 + 64
                        s = 0
                        while _1250 + _1258 + _2234 + stor17[_3009 % stor17.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor17[(_3009 % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor17[_3009 % stor17.length].field_0, data=mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3009 % stor17.length].field_1)]), 
                    mem[_1250 + _1258 + _2234 + 64] = 256 * stor17[_3009 % stor17.length].field_8
            else:
                if stor17[_3009 % stor17.length].field_0 == stor17[_3009 % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[_3009 % stor17.length].field_1:
                    if 31 < stor17[_3009 % stor17.length].field_1:
                        mem[_1250 + _1258 + _2234 + 64] = stor17[_3009 % stor17.length].field_0
                        idx = _1250 + _1258 + _2234 + 64
                        s = 0
                        while _1250 + _1258 + _2234 + stor17[_3009 % stor17.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor17[(_3009 % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor17[_3009 % stor17.length].field_0, data=mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3009 % stor17.length].field_1)]), 
                    mem[_1250 + _1258 + _2234 + 64] = 256 * stor17[_3009 % stor17.length].field_8
            mem[_1250 + _1258 + _2234 + ceil32(stor17[_3009 % stor17.length].field_1) + 128 len ceil32(stor17[_3009 % stor17.length].field_1)] = mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3009 % stor17.length].field_1)]
            if ceil32(stor17[_3009 % stor17.length].field_1) > stor17[_3009 % stor17.length].field_1:
                mem[_1250 + _1258 + _2234 + ceil32(stor17[_3009 % stor17.length].field_1) + stor17[_3009 % stor17.length].field_1 + 128] = 0
            return Array(len=stor17[_3009 % stor17.length].field_0, data=mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3009 % stor17.length].field_1)], mem[_1250 + _1258 + _2234 + (2 * ceil32(stor17[_3009 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3009 % stor17.length].field_1)]), 
        mem[_1250 + _1258 + _2234 + 32] = 0
        _3019 = mem[64]
        mem[mem[64]] = _1250 + _1258 + _2234 - mem[64]
        mem[64] = _1250 + _1258 + _2234 + 32
        _3021 = sha3(mem[_3019 + 32 len mem[_3019]])
        if sha3(mem[_3019 + 32 len mem[_3019]]) % 40 == 1:
            return '#C1A520', 0
        if not stor17.length:
            revert with 'NH{q', 18
        if sha3(mem[_3019 + 32 len mem[_3019]]) % stor17.length >= stor17.length:
            revert with 'NH{q', 50
        if stor17[sha3(mem[_3019 + 32 len mem[_3019]]) % stor17.length].field_0:
            if stor17[sha3(mem[_3019 + 32 len mem[_3019]]) % stor17.length].field_0 == stor17[sha3(mem[_3019 + 32 len mem[_3019]]) % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1250 + _1258 + _2234 + ceil32(stor17[sha3(mem[_3019 + 32 len mem[_3019]]) % stor17.length].field_1) + 64
            if stor17[_3021 % stor17.length].field_0:
                if stor17[_3021 % stor17.length].field_0 == stor17[_3021 % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[_3021 % stor17.length].field_1:
                    if 31 < stor17[_3021 % stor17.length].field_1:
                        mem[_1250 + _1258 + _2234 + 64] = stor17[_3021 % stor17.length].field_0
                        idx = _1250 + _1258 + _2234 + 64
                        s = 0
                        while _1250 + _1258 + _2234 + stor17[_3021 % stor17.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor17[(_3021 % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor17[_3021 % stor17.length].field_1), data=mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3021 % stor17.length].field_1)]), 
                    mem[_1250 + _1258 + _2234 + 64] = 256 * stor17[_3021 % stor17.length].field_8
            else:
                if stor17[_3021 % stor17.length].field_0 == stor17[_3021 % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[_3021 % stor17.length].field_1:
                    if 31 < stor17[_3021 % stor17.length].field_1:
                        mem[_1250 + _1258 + _2234 + 64] = stor17[_3021 % stor17.length].field_0
                        idx = _1250 + _1258 + _2234 + 64
                        s = 0
                        while _1250 + _1258 + _2234 + stor17[_3021 % stor17.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor17[(_3021 % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor17[_3021 % stor17.length].field_1), data=mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3021 % stor17.length].field_1)]), 
                    mem[_1250 + _1258 + _2234 + 64] = 256 * stor17[_3021 % stor17.length].field_8
            mem[_1250 + _1258 + _2234 + ceil32(stor17[_3021 % stor17.length].field_1) + 128 len ceil32(stor17[_3021 % stor17.length].field_1)] = mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3021 % stor17.length].field_1)]
            if ceil32(stor17[_3021 % stor17.length].field_1) > stor17[_3021 % stor17.length].field_1:
                mem[_1250 + _1258 + _2234 + ceil32(stor17[_3021 % stor17.length].field_1) + stor17[_3021 % stor17.length].field_1 + 128] = 0
            return Array(len=2 * Mask(256, -1, stor17[_3021 % stor17.length].field_1), data=mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3021 % stor17.length].field_1)], mem[_1250 + _1258 + _2234 + (2 * ceil32(stor17[_3021 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3021 % stor17.length].field_1)]), 
        if stor17[sha3(mem[_3019 + 32 len mem[_3019]]) % stor17.length].field_0 == stor17[sha3(mem[_3019 + 32 len mem[_3019]]) % stor17.length].field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = _1250 + _1258 + _2234 + ceil32(stor17[sha3(mem[_3019 + 32 len mem[_3019]]) % stor17.length].field_1) + 64
        if stor17[_3021 % stor17.length].field_0:
            if stor17[_3021 % stor17.length].field_0 == stor17[_3021 % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[_3021 % stor17.length].field_1:
                if 31 < stor17[_3021 % stor17.length].field_1:
                    mem[_1250 + _1258 + _2234 + 64] = stor17[_3021 % stor17.length].field_0
                    idx = _1250 + _1258 + _2234 + 64
                    s = 0
                    while _1250 + _1258 + _2234 + stor17[_3021 % stor17.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor17[(_3021 % stor17.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor17[_3021 % stor17.length].field_0, data=mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3021 % stor17.length].field_1)]), 
                mem[_1250 + _1258 + _2234 + 64] = 256 * stor17[_3021 % stor17.length].field_8
        else:
            if stor17[_3021 % stor17.length].field_0 == stor17[_3021 % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[_3021 % stor17.length].field_1:
                if 31 < stor17[_3021 % stor17.length].field_1:
                    mem[_1250 + _1258 + _2234 + 64] = stor17[_3021 % stor17.length].field_0
                    idx = _1250 + _1258 + _2234 + 64
                    s = 0
                    while _1250 + _1258 + _2234 + stor17[_3021 % stor17.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor17[(_3021 % stor17.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor17[_3021 % stor17.length].field_0, data=mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3021 % stor17.length].field_1)]), 
                mem[_1250 + _1258 + _2234 + 64] = 256 * stor17[_3021 % stor17.length].field_8
        mem[_1250 + _1258 + _2234 + ceil32(stor17[_3021 % stor17.length].field_1) + 128 len ceil32(stor17[_3021 % stor17.length].field_1)] = mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3021 % stor17.length].field_1)]
        if ceil32(stor17[_3021 % stor17.length].field_1) > stor17[_3021 % stor17.length].field_1:
            mem[_1250 + _1258 + _2234 + ceil32(stor17[_3021 % stor17.length].field_1) + stor17[_3021 % stor17.length].field_1 + 128] = 0
        return Array(len=stor17[_3021 % stor17.length].field_0, data=mem[_1250 + _1258 + _2234 + 64 len ceil32(stor17[_3021 % stor17.length].field_1)], mem[_1250 + _1258 + _2234 + (2 * ceil32(stor17[_3021 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3021 % stor17.length].field_1)]), 
    mem[192 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[160]:
            revert with 'NH{q', 50
        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _1251 = mem[64]
    _1259 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _2233 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_2233) <= _2233:
            _3010 = mem[64]
            mem[mem[64]] = _1251 + _1259 + _2233 - mem[64]
            mem[64] = _1251 + _1259 + _2233 + 32
            _3012 = sha3(mem[_3010 + 32 len mem[_3010]])
            if sha3(mem[_3010 + 32 len mem[_3010]]) % 40 == 1:
                return '#C1A520', 0
            if not stor17.length:
                revert with 'NH{q', 18
            if sha3(mem[_3010 + 32 len mem[_3010]]) % stor17.length >= stor17.length:
                revert with 'NH{q', 50
            if stor17[sha3(mem[_3010 + 32 len mem[_3010]]) % stor17.length].field_0:
                if stor17[sha3(mem[_3010 + 32 len mem[_3010]]) % stor17.length].field_0 == stor17[sha3(mem[_3010 + 32 len mem[_3010]]) % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                mem[64] = _1251 + _1259 + _2233 + ceil32(stor17[sha3(mem[_3010 + 32 len mem[_3010]]) % stor17.length].field_1) + 64
                if stor17[_3012 % stor17.length].field_0:
                    if stor17[_3012 % stor17.length].field_0 == stor17[_3012 % stor17.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor17[_3012 % stor17.length].field_1:
                        if 31 < stor17[_3012 % stor17.length].field_1:
                            mem[_1251 + _1259 + _2233 + 64] = stor17[_3012 % stor17.length].field_0
                            idx = _1251 + _1259 + _2233 + 64
                            s = 0
                            while _1251 + _1259 + _2233 + stor17[_3012 % stor17.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor17[(_3012 % stor17.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor17[_3012 % stor17.length].field_1), data=mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3012 % stor17.length].field_1)]), 
                        mem[_1251 + _1259 + _2233 + 64] = 256 * stor17[_3012 % stor17.length].field_8
                else:
                    if stor17[_3012 % stor17.length].field_0 == stor17[_3012 % stor17.length].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor17[_3012 % stor17.length].field_1:
                        if 31 < stor17[_3012 % stor17.length].field_1:
                            mem[_1251 + _1259 + _2233 + 64] = stor17[_3012 % stor17.length].field_0
                            idx = _1251 + _1259 + _2233 + 64
                            s = 0
                            while _1251 + _1259 + _2233 + stor17[_3012 % stor17.length].field_1 + 32 > idx:
                                mem[idx + 32] = stor17[(_3012 % stor17.length) + s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor17[_3012 % stor17.length].field_1), data=mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3012 % stor17.length].field_1)]), 
                        mem[_1251 + _1259 + _2233 + 64] = 256 * stor17[_3012 % stor17.length].field_8
                mem[_1251 + _1259 + _2233 + ceil32(stor17[_3012 % stor17.length].field_1) + 128 len ceil32(stor17[_3012 % stor17.length].field_1)] = mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3012 % stor17.length].field_1)]
                if ceil32(stor17[_3012 % stor17.length].field_1) > stor17[_3012 % stor17.length].field_1:
                    mem[_1251 + _1259 + _2233 + ceil32(stor17[_3012 % stor17.length].field_1) + stor17[_3012 % stor17.length].field_1 + 128] = 0
                return Array(len=2 * Mask(256, -1, stor17[_3012 % stor17.length].field_1), data=mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3012 % stor17.length].field_1)], mem[_1251 + _1259 + _2233 + (2 * ceil32(stor17[_3012 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3012 % stor17.length].field_1)]), 
            if stor17[sha3(mem[_3010 + 32 len mem[_3010]]) % stor17.length].field_0 == stor17[sha3(mem[_3010 + 32 len mem[_3010]]) % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1251 + _1259 + _2233 + ceil32(stor17[sha3(mem[_3010 + 32 len mem[_3010]]) % stor17.length].field_1) + 64
            if stor17[_3012 % stor17.length].field_0:
                if stor17[_3012 % stor17.length].field_0 == stor17[_3012 % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[_3012 % stor17.length].field_1:
                    if 31 < stor17[_3012 % stor17.length].field_1:
                        mem[_1251 + _1259 + _2233 + 64] = stor17[_3012 % stor17.length].field_0
                        idx = _1251 + _1259 + _2233 + 64
                        s = 0
                        while _1251 + _1259 + _2233 + stor17[_3012 % stor17.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor17[(_3012 % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor17[_3012 % stor17.length].field_0, data=mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3012 % stor17.length].field_1)]), 
                    mem[_1251 + _1259 + _2233 + 64] = 256 * stor17[_3012 % stor17.length].field_8
            else:
                if stor17[_3012 % stor17.length].field_0 == stor17[_3012 % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[_3012 % stor17.length].field_1:
                    if 31 < stor17[_3012 % stor17.length].field_1:
                        mem[_1251 + _1259 + _2233 + 64] = stor17[_3012 % stor17.length].field_0
                        idx = _1251 + _1259 + _2233 + 64
                        s = 0
                        while _1251 + _1259 + _2233 + stor17[_3012 % stor17.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor17[(_3012 % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor17[_3012 % stor17.length].field_0, data=mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3012 % stor17.length].field_1)]), 
                    mem[_1251 + _1259 + _2233 + 64] = 256 * stor17[_3012 % stor17.length].field_8
            mem[_1251 + _1259 + _2233 + ceil32(stor17[_3012 % stor17.length].field_1) + 128 len ceil32(stor17[_3012 % stor17.length].field_1)] = mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3012 % stor17.length].field_1)]
            if ceil32(stor17[_3012 % stor17.length].field_1) > stor17[_3012 % stor17.length].field_1:
                mem[_1251 + _1259 + _2233 + ceil32(stor17[_3012 % stor17.length].field_1) + stor17[_3012 % stor17.length].field_1 + 128] = 0
            return Array(len=stor17[_3012 % stor17.length].field_0, data=mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3012 % stor17.length].field_1)], mem[_1251 + _1259 + _2233 + (2 * ceil32(stor17[_3012 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3012 % stor17.length].field_1)]), 
        mem[_1251 + _1259 + _2233 + 32] = 0
        _3022 = mem[64]
        mem[mem[64]] = _1251 + _1259 + _2233 - mem[64]
        mem[64] = _1251 + _1259 + _2233 + 32
        _3024 = sha3(mem[_3022 + 32 len mem[_3022]])
        if sha3(mem[_3022 + 32 len mem[_3022]]) % 40 == 1:
            return '#C1A520', 0
        if not stor17.length:
            revert with 'NH{q', 18
        if sha3(mem[_3022 + 32 len mem[_3022]]) % stor17.length >= stor17.length:
            revert with 'NH{q', 50
        if stor17[sha3(mem[_3022 + 32 len mem[_3022]]) % stor17.length].field_0:
            if stor17[sha3(mem[_3022 + 32 len mem[_3022]]) % stor17.length].field_0 == stor17[sha3(mem[_3022 + 32 len mem[_3022]]) % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1251 + _1259 + _2233 + ceil32(stor17[sha3(mem[_3022 + 32 len mem[_3022]]) % stor17.length].field_1) + 64
            if stor17[_3024 % stor17.length].field_0:
                if stor17[_3024 % stor17.length].field_0 == stor17[_3024 % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[_3024 % stor17.length].field_1:
                    if 31 < stor17[_3024 % stor17.length].field_1:
                        mem[_1251 + _1259 + _2233 + 64] = stor17[_3024 % stor17.length].field_0
                        idx = _1251 + _1259 + _2233 + 64
                        s = 0
                        while _1251 + _1259 + _2233 + stor17[_3024 % stor17.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor17[(_3024 % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor17[_3024 % stor17.length].field_1), data=mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3024 % stor17.length].field_1)]), 
                    mem[_1251 + _1259 + _2233 + 64] = 256 * stor17[_3024 % stor17.length].field_8
            else:
                if stor17[_3024 % stor17.length].field_0 == stor17[_3024 % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[_3024 % stor17.length].field_1:
                    if 31 < stor17[_3024 % stor17.length].field_1:
                        mem[_1251 + _1259 + _2233 + 64] = stor17[_3024 % stor17.length].field_0
                        idx = _1251 + _1259 + _2233 + 64
                        s = 0
                        while _1251 + _1259 + _2233 + stor17[_3024 % stor17.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor17[(_3024 % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor17[_3024 % stor17.length].field_1), data=mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3024 % stor17.length].field_1)]), 
                    mem[_1251 + _1259 + _2233 + 64] = 256 * stor17[_3024 % stor17.length].field_8
            mem[_1251 + _1259 + _2233 + ceil32(stor17[_3024 % stor17.length].field_1) + 128 len ceil32(stor17[_3024 % stor17.length].field_1)] = mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3024 % stor17.length].field_1)]
            if ceil32(stor17[_3024 % stor17.length].field_1) > stor17[_3024 % stor17.length].field_1:
                mem[_1251 + _1259 + _2233 + ceil32(stor17[_3024 % stor17.length].field_1) + stor17[_3024 % stor17.length].field_1 + 128] = 0
            return Array(len=2 * Mask(256, -1, stor17[_3024 % stor17.length].field_1), data=mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3024 % stor17.length].field_1)], mem[_1251 + _1259 + _2233 + (2 * ceil32(stor17[_3024 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3024 % stor17.length].field_1)]), 
        if stor17[sha3(mem[_3022 + 32 len mem[_3022]]) % stor17.length].field_0 == stor17[sha3(mem[_3022 + 32 len mem[_3022]]) % stor17.length].field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = _1251 + _1259 + _2233 + ceil32(stor17[sha3(mem[_3022 + 32 len mem[_3022]]) % stor17.length].field_1) + 64
        if stor17[_3024 % stor17.length].field_0:
            if stor17[_3024 % stor17.length].field_0 == stor17[_3024 % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[_3024 % stor17.length].field_1:
                if 31 < stor17[_3024 % stor17.length].field_1:
                    mem[_1251 + _1259 + _2233 + 64] = stor17[_3024 % stor17.length].field_0
                    idx = _1251 + _1259 + _2233 + 64
                    s = 0
                    while _1251 + _1259 + _2233 + stor17[_3024 % stor17.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor17[(_3024 % stor17.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor17[_3024 % stor17.length].field_0, data=mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3024 % stor17.length].field_1)]), 
                mem[_1251 + _1259 + _2233 + 64] = 256 * stor17[_3024 % stor17.length].field_8
        else:
            if stor17[_3024 % stor17.length].field_0 == stor17[_3024 % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[_3024 % stor17.length].field_1:
                if 31 < stor17[_3024 % stor17.length].field_1:
                    mem[_1251 + _1259 + _2233 + 64] = stor17[_3024 % stor17.length].field_0
                    idx = _1251 + _1259 + _2233 + 64
                    s = 0
                    while _1251 + _1259 + _2233 + stor17[_3024 % stor17.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor17[(_3024 % stor17.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor17[_3024 % stor17.length].field_0, data=mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3024 % stor17.length].field_1)]), 
                mem[_1251 + _1259 + _2233 + 64] = 256 * stor17[_3024 % stor17.length].field_8
        mem[_1251 + _1259 + _2233 + ceil32(stor17[_3024 % stor17.length].field_1) + 128 len ceil32(stor17[_3024 % stor17.length].field_1)] = mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3024 % stor17.length].field_1)]
        if ceil32(stor17[_3024 % stor17.length].field_1) > stor17[_3024 % stor17.length].field_1:
            mem[_1251 + _1259 + _2233 + ceil32(stor17[_3024 % stor17.length].field_1) + stor17[_3024 % stor17.length].field_1 + 128] = 0
        return Array(len=stor17[_3024 % stor17.length].field_0, data=mem[_1251 + _1259 + _2233 + 64 len ceil32(stor17[_3024 % stor17.length].field_1)], mem[_1251 + _1259 + _2233 + (2 * ceil32(stor17[_3024 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3024 % stor17.length].field_1)]), 
    mem[mem[64] + mem[96] + 32] = 0
    _2235 = mem[160]
    mem[_1251 + _1259 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if ceil32(_2235) <= _2235:
        _3013 = mem[64]
        mem[mem[64]] = _1251 + _1259 + _2235 - mem[64]
        mem[64] = _1251 + _1259 + _2235 + 32
        _3015 = sha3(mem[_3013 + 32 len mem[_3013]])
        if sha3(mem[_3013 + 32 len mem[_3013]]) % 40 == 1:
            return '#C1A520', 0
        if not stor17.length:
            revert with 'NH{q', 18
        if sha3(mem[_3013 + 32 len mem[_3013]]) % stor17.length >= stor17.length:
            revert with 'NH{q', 50
        if stor17[sha3(mem[_3013 + 32 len mem[_3013]]) % stor17.length].field_0:
            if stor17[sha3(mem[_3013 + 32 len mem[_3013]]) % stor17.length].field_0 == stor17[sha3(mem[_3013 + 32 len mem[_3013]]) % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = _1251 + _1259 + _2235 + ceil32(stor17[sha3(mem[_3013 + 32 len mem[_3013]]) % stor17.length].field_1) + 64
            if stor17[_3015 % stor17.length].field_0:
                if stor17[_3015 % stor17.length].field_0 == stor17[_3015 % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[_3015 % stor17.length].field_1:
                    if 31 < stor17[_3015 % stor17.length].field_1:
                        mem[_1251 + _1259 + _2235 + 64] = stor17[_3015 % stor17.length].field_0
                        idx = _1251 + _1259 + _2235 + 64
                        s = 0
                        while _1251 + _1259 + _2235 + stor17[_3015 % stor17.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor17[(_3015 % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor17[_3015 % stor17.length].field_1), data=mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3015 % stor17.length].field_1)]), 
                    mem[_1251 + _1259 + _2235 + 64] = 256 * stor17[_3015 % stor17.length].field_8
            else:
                if stor17[_3015 % stor17.length].field_0 == stor17[_3015 % stor17.length].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[_3015 % stor17.length].field_1:
                    if 31 < stor17[_3015 % stor17.length].field_1:
                        mem[_1251 + _1259 + _2235 + 64] = stor17[_3015 % stor17.length].field_0
                        idx = _1251 + _1259 + _2235 + 64
                        s = 0
                        while _1251 + _1259 + _2235 + stor17[_3015 % stor17.length].field_1 + 32 > idx:
                            mem[idx + 32] = stor17[(_3015 % stor17.length) + s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor17[_3015 % stor17.length].field_1), data=mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3015 % stor17.length].field_1)]), 
                    mem[_1251 + _1259 + _2235 + 64] = 256 * stor17[_3015 % stor17.length].field_8
            mem[_1251 + _1259 + _2235 + ceil32(stor17[_3015 % stor17.length].field_1) + 128 len ceil32(stor17[_3015 % stor17.length].field_1)] = mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3015 % stor17.length].field_1)]
            if ceil32(stor17[_3015 % stor17.length].field_1) > stor17[_3015 % stor17.length].field_1:
                mem[_1251 + _1259 + _2235 + ceil32(stor17[_3015 % stor17.length].field_1) + stor17[_3015 % stor17.length].field_1 + 128] = 0
            return Array(len=2 * Mask(256, -1, stor17[_3015 % stor17.length].field_1), data=mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3015 % stor17.length].field_1)], mem[_1251 + _1259 + _2235 + (2 * ceil32(stor17[_3015 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3015 % stor17.length].field_1)]), 
        if stor17[sha3(mem[_3013 + 32 len mem[_3013]]) % stor17.length].field_0 == stor17[sha3(mem[_3013 + 32 len mem[_3013]]) % stor17.length].field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = _1251 + _1259 + _2235 + ceil32(stor17[sha3(mem[_3013 + 32 len mem[_3013]]) % stor17.length].field_1) + 64
        if stor17[_3015 % stor17.length].field_0:
            if stor17[_3015 % stor17.length].field_0 == stor17[_3015 % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[_3015 % stor17.length].field_1:
                if 31 < stor17[_3015 % stor17.length].field_1:
                    mem[_1251 + _1259 + _2235 + 64] = stor17[_3015 % stor17.length].field_0
                    idx = _1251 + _1259 + _2235 + 64
                    s = 0
                    while _1251 + _1259 + _2235 + stor17[_3015 % stor17.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor17[(_3015 % stor17.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor17[_3015 % stor17.length].field_0, data=mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3015 % stor17.length].field_1)]), 
                mem[_1251 + _1259 + _2235 + 64] = 256 * stor17[_3015 % stor17.length].field_8
        else:
            if stor17[_3015 % stor17.length].field_0 == stor17[_3015 % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[_3015 % stor17.length].field_1:
                if 31 < stor17[_3015 % stor17.length].field_1:
                    mem[_1251 + _1259 + _2235 + 64] = stor17[_3015 % stor17.length].field_0
                    idx = _1251 + _1259 + _2235 + 64
                    s = 0
                    while _1251 + _1259 + _2235 + stor17[_3015 % stor17.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor17[(_3015 % stor17.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor17[_3015 % stor17.length].field_0, data=mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3015 % stor17.length].field_1)]), 
                mem[_1251 + _1259 + _2235 + 64] = 256 * stor17[_3015 % stor17.length].field_8
        mem[_1251 + _1259 + _2235 + ceil32(stor17[_3015 % stor17.length].field_1) + 128 len ceil32(stor17[_3015 % stor17.length].field_1)] = mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3015 % stor17.length].field_1)]
        if ceil32(stor17[_3015 % stor17.length].field_1) > stor17[_3015 % stor17.length].field_1:
            mem[_1251 + _1259 + _2235 + ceil32(stor17[_3015 % stor17.length].field_1) + stor17[_3015 % stor17.length].field_1 + 128] = 0
        return Array(len=stor17[_3015 % stor17.length].field_0, data=mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3015 % stor17.length].field_1)], mem[_1251 + _1259 + _2235 + (2 * ceil32(stor17[_3015 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3015 % stor17.length].field_1)]), 
    mem[_1251 + _1259 + _2235 + 32] = 0
    _3025 = mem[64]
    mem[mem[64]] = _1251 + _1259 + _2235 - mem[64]
    mem[64] = _1251 + _1259 + _2235 + 32
    _3027 = sha3(mem[_3025 + 32 len mem[_3025]])
    if sha3(mem[_3025 + 32 len mem[_3025]]) % 40 == 1:
        return '#C1A520', 0
    if not stor17.length:
        revert with 'NH{q', 18
    if sha3(mem[_3025 + 32 len mem[_3025]]) % stor17.length >= stor17.length:
        revert with 'NH{q', 50
    if stor17[sha3(mem[_3025 + 32 len mem[_3025]]) % stor17.length].field_0:
        if stor17[sha3(mem[_3025 + 32 len mem[_3025]]) % stor17.length].field_0 == stor17[sha3(mem[_3025 + 32 len mem[_3025]]) % stor17.length].field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = _1251 + _1259 + _2235 + ceil32(stor17[sha3(mem[_3025 + 32 len mem[_3025]]) % stor17.length].field_1) + 64
        if stor17[_3027 % stor17.length].field_0:
            if stor17[_3027 % stor17.length].field_0 == stor17[_3027 % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[_3027 % stor17.length].field_1:
                if 31 < stor17[_3027 % stor17.length].field_1:
                    mem[_1251 + _1259 + _2235 + 64] = stor17[_3027 % stor17.length].field_0
                    idx = _1251 + _1259 + _2235 + 64
                    s = 0
                    while _1251 + _1259 + _2235 + stor17[_3027 % stor17.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor17[(_3027 % stor17.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17[_3027 % stor17.length].field_1), data=mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3027 % stor17.length].field_1)]), 
                mem[_1251 + _1259 + _2235 + 64] = 256 * stor17[_3027 % stor17.length].field_8
        else:
            if stor17[_3027 % stor17.length].field_0 == stor17[_3027 % stor17.length].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[_3027 % stor17.length].field_1:
                if 31 < stor17[_3027 % stor17.length].field_1:
                    mem[_1251 + _1259 + _2235 + 64] = stor17[_3027 % stor17.length].field_0
                    idx = _1251 + _1259 + _2235 + 64
                    s = 0
                    while _1251 + _1259 + _2235 + stor17[_3027 % stor17.length].field_1 + 32 > idx:
                        mem[idx + 32] = stor17[(_3027 % stor17.length) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17[_3027 % stor17.length].field_1), data=mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3027 % stor17.length].field_1)]), 
                mem[_1251 + _1259 + _2235 + 64] = 256 * stor17[_3027 % stor17.length].field_8
        mem[_1251 + _1259 + _2235 + ceil32(stor17[_3027 % stor17.length].field_1) + 128 len ceil32(stor17[_3027 % stor17.length].field_1)] = mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3027 % stor17.length].field_1)]
        if ceil32(stor17[_3027 % stor17.length].field_1) > stor17[_3027 % stor17.length].field_1:
            mem[_1251 + _1259 + _2235 + ceil32(stor17[_3027 % stor17.length].field_1) + stor17[_3027 % stor17.length].field_1 + 128] = 0
        return Array(len=2 * Mask(256, -1, stor17[_3027 % stor17.length].field_1), data=mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3027 % stor17.length].field_1)], mem[_1251 + _1259 + _2235 + (2 * ceil32(stor17[_3027 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3027 % stor17.length].field_1)]), 
    if stor17[sha3(mem[_3025 + 32 len mem[_3025]]) % stor17.length].field_0 == stor17[sha3(mem[_3025 + 32 len mem[_3025]]) % stor17.length].field_1 < 32:
        revert with 'NH{q', 34
    mem[64] = _1251 + _1259 + _2235 + ceil32(stor17[sha3(mem[_3025 + 32 len mem[_3025]]) % stor17.length].field_1) + 64
    if stor17[_3027 % stor17.length].field_0:
        if stor17[_3027 % stor17.length].field_0 == stor17[_3027 % stor17.length].field_1 < 32:
            revert with 'NH{q', 34
        if stor17[_3027 % stor17.length].field_1:
            if 31 < stor17[_3027 % stor17.length].field_1:
                mem[_1251 + _1259 + _2235 + 64] = stor17[_3027 % stor17.length].field_0
                idx = _1251 + _1259 + _2235 + 64
                s = 0
                while _1251 + _1259 + _2235 + stor17[_3027 % stor17.length].field_1 + 32 > idx:
                    mem[idx + 32] = stor17[(_3027 % stor17.length) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17[_3027 % stor17.length].field_0, data=mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3027 % stor17.length].field_1)]), 
            mem[_1251 + _1259 + _2235 + 64] = 256 * stor17[_3027 % stor17.length].field_8
    else:
        if stor17[_3027 % stor17.length].field_0 == stor17[_3027 % stor17.length].field_1 < 32:
            revert with 'NH{q', 34
        if stor17[_3027 % stor17.length].field_1:
            if 31 < stor17[_3027 % stor17.length].field_1:
                mem[_1251 + _1259 + _2235 + 64] = stor17[_3027 % stor17.length].field_0
                idx = _1251 + _1259 + _2235 + 64
                s = 0
                while _1251 + _1259 + _2235 + stor17[_3027 % stor17.length].field_1 + 32 > idx:
                    mem[idx + 32] = stor17[(_3027 % stor17.length) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17[_3027 % stor17.length].field_0, data=mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3027 % stor17.length].field_1)]), 
            mem[_1251 + _1259 + _2235 + 64] = 256 * stor17[_3027 % stor17.length].field_8
    mem[_1251 + _1259 + _2235 + ceil32(stor17[_3027 % stor17.length].field_1) + 128 len ceil32(stor17[_3027 % stor17.length].field_1)] = mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3027 % stor17.length].field_1)]
    if ceil32(stor17[_3027 % stor17.length].field_1) > stor17[_3027 % stor17.length].field_1:
        mem[_1251 + _1259 + _2235 + ceil32(stor17[_3027 % stor17.length].field_1) + stor17[_3027 % stor17.length].field_1 + 128] = 0
    return Array(len=stor17[_3027 % stor17.length].field_0, data=mem[_1251 + _1259 + _2235 + 64 len ceil32(stor17[_3027 % stor17.length].field_1)], mem[_1251 + _1259 + _2235 + (2 * ceil32(stor17[_3027 % stor17.length].field_1)) + 128 len 2 * ceil32(stor17[_3027 % stor17.length].field_1)]), 
}



}
