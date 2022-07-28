contract main {




// =====================  Runtime code  =====================


const base = 10^18

const sub_6e1549d0(?) = 50


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
address owner;
mapping of struct sub_ba530a15;
array of uint256 stor12;
uint8 sub_dc5fe6e4;
uint256 sub_ee8c8ee5;

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

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return uint256(tokenByIndex[arg1])
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

function sub_ba530a15(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_ba530a15[arg1].field_0, sub_ba530a15[arg1].field_256
}

function sub_dc5fe6e4(?) {
    return bool(sub_dc5fe6e4)
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_ee8c8ee5(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_ee8c8ee5
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

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
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

function sub_d10df049(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1) < 0:
        revert with 0, 'Error: should put bearId >= 0'
    sub_ba530a15[arg1 << 248].field_256 = sub_ee8c8ee5
    sub_ba530a15[arg1 << 248].field_0 = uint8(arg1)
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

function setDefaultRarity(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == sub_ee8c8ee5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Error: New rarity needs to be a different value than current'
    sub_ee8c8ee5 = arg1
}

function sub_b9f8bf68(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_dc5fe6e4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Error: This contract has been locked for rarity values'
    sub_ba530a15[arg2 << 248].field_256 = arg1
}

function sub_cac05ba4(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_dc5fe6e4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Error: This contract has been locked for rarity values'
    if uint8(arg1) != 3:
        revert with 0, 'Error: Incorrect lockKey value'
    sub_dc5fe6e4 = 1
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

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 6)
        if idx >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not arg1.length:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor12.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor12[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not arg1.length:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor12.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor12[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
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
        uint256(tokenByIndex[tokenByIndex.length]) = arg3
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
        uint256(tokenByIndex[stor9[arg3]]) = uint256(tokenByIndex[tokenByIndex.length])
        stor9[uint256(stor8[stor8.length])] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        uint256(tokenByIndex[tokenByIndex.length]) = 0
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
        uint256(tokenByIndex[tokenByIndex.length]) = arg3
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
        uint256(tokenByIndex[stor9[arg3]]) = uint256(tokenByIndex[tokenByIndex.length])
        stor9[uint256(stor8[stor8.length])] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        uint256(tokenByIndex[tokenByIndex.length]) = 0
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
        uint256(tokenByIndex[tokenByIndex.length]) = arg3
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
        uint256(tokenByIndex[stor9[arg3]]) = uint256(tokenByIndex[tokenByIndex.length])
        stor9[uint256(stor8[stor8.length])] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        uint256(tokenByIndex[tokenByIndex.length]) = 0
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

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Error: Minting amount would exceed maximum allowed supply'
    idx = 0
    while idx < arg1:
        _129 = mem[64]
        mem[64] = mem[64] + 32
        mem[_129] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8.length]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor8.length] = tokenByIndex.length
        tokenByIndex.length++
        uint256(tokenByIndex[tokenByIndex.length]) = tokenByIndex.length
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length
            stor7[stor8.length] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = tokenByIndex.length
            mem[32] = 2
            ownerOf[stor8.length] = msg.sender
            emit Transfer(0, msg.sender, tokenByIndex.length);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_129 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                _259 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_259] == Mask(32, 224, mem[_259])
                if Mask(32, 224, mem[_259]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor8.length] >= tokenByIndex.length:
                revert with 'NH{q', 50
            uint256(tokenByIndex[stor9[tokenByIndex.length]]) = uint256(tokenByIndex[tokenByIndex.length])
            stor9[uint256(stor8[stor8.length])] = stor9[stor8.length]
            stor9[stor8.length] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            uint256(tokenByIndex[tokenByIndex.length]) = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = tokenByIndex.length
            mem[32] = 2
            ownerOf[stor8.length] = msg.sender
            emit Transfer(0, msg.sender, tokenByIndex.length);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_129 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                _260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_260] == Mask(32, 224, mem[_260])
                if Mask(32, 224, mem[_260]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if uint8(tokenByIndex.length) < 0:
            revert with 0, 'Error: should put bearId >= 0'
        sub_ba530a15[uint8(stor8.length)].field_256 = sub_ee8c8ee5
        mem[0] = uint8(tokenByIndex.length)
        mem[32] = 11
        sub_ba530a15[uint8(stor8.length)].field_0 = uint8(tokenByIndex.length)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: This token id has not been minted yet'
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1 <= 0:
            return 32, 80, 
                   0xfe68747470733a2f2f697066732e696f2f697066732f6261666b72656968657a347869736e346462656a7461696a667464323678343579697579716d656278636d6f706579373532357a797578716a6a, mem[208 len 16] >> 384,
                   0
        if not arg1:
            mem[96] = 1
            mem[128] = '0'
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[192] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 6
                        _261 = mem[160]
                        mem[38] = mem[160]
                        mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_261) > _261:
                            mem[_261 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_261) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[idx + 192] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[stor12.length.field_1 + 192] = '0'
                mem[stor12.length.field_1 + 193] = '.json'
                mem[stor12.length.field_1 + 198] = 32
                mem[stor12.length.field_1 + 230] = mem[160]
                mem[stor12.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[stor12.length.field_1 + mem[160] + 262] = 0
                return Array(len=mem[160], data=mem[stor12.length.field_1 + 262 len ceil32(mem[160])])
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[192] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 6
                    _263 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_263) > _263:
                        mem[_263 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_263) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[idx + 192] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor12.length.field_1 + 192] = '0'
            mem[stor12.length.field_1 + 193] = '.json'
            mem[stor12.length.field_1 + 198] = 32
            mem[stor12.length.field_1 + 230] = mem[160]
            mem[stor12.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor12.length.field_1 + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[stor12.length.field_1 + 262 len ceil32(mem[160])])
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
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if not t:
                    revert with 'NH{q', 17
                if t - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _732 = mem[64]
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor12.length)
                    _792 = mem[96]
                    mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_732 + stor12.length.field_1 + _792 + 32] = '.json'
                    if ceil32(_792) <= _792:
                        _1212 = mem[64]
                        mem[64] = _732 + stor12.length.field_1 + _792 + 37
                        mem[_732 + stor12.length.field_1 + _792 + 37] = 32
                        _1284 = mem[_1212]
                        mem[_732 + stor12.length.field_1 + _792 + 69] = mem[_1212]
                        mem[_732 + stor12.length.field_1 + _792 + 101 len ceil32(_1284)] = mem[_1212 + 32 len ceil32(_1284)]
                        if ceil32(_1284) > _1284:
                            mem[_732 + stor12.length.field_1 + _792 + _1284 + 101] = 0
                        return 32, mem[_732 + stor12.length.field_1 + _792 + 69 len ceil32(_1284) + 32]
                    _1236 = mem[64]
                    mem[64] = _732 + stor12.length.field_1 + _792 + 37
                    mem[_732 + stor12.length.field_1 + _792 + 37] = 32
                    _1300 = mem[_1236]
                    mem[_732 + stor12.length.field_1 + _792 + 69] = mem[_1236]
                    mem[_732 + stor12.length.field_1 + _792 + 101 len ceil32(_1300)] = mem[_1236 + 32 len ceil32(_1300)]
                    if ceil32(_1300) > _1300:
                        mem[_732 + stor12.length.field_1 + _792 + _1300 + 101] = 0
                    return 32, mem[_732 + stor12.length.field_1 + _792 + 69 len ceil32(_1300) + 32]
                if bool(stor12.length) != 1:
                    _800 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_800] = '.json'
                    if ceil32(_800) <= _800:
                        _1214 = mem[64]
                        mem[64] = _800 + 5
                        mem[_800 + 5] = 32
                        _1285 = mem[_1214]
                        mem[_800 + 37] = mem[_1214]
                        mem[_800 + 69 len ceil32(_1285)] = mem[_1214 + 32 len ceil32(_1285)]
                        if ceil32(_1285) > _1285:
                            mem[_800 + _1285 + 69] = 0
                        return 32, mem[_800 + 37 len ceil32(_1285) + 32]
                    _1237 = mem[64]
                    mem[64] = _800 + 5
                    mem[_800 + 5] = 32
                    _1301 = mem[_1237]
                    mem[_800 + 37] = mem[_1237]
                    mem[_800 + 69 len ceil32(_1301)] = mem[_1237 + 32 len ceil32(_1301)]
                    if ceil32(_1301) > _1301:
                        mem[_800 + _1301 + 69] = 0
                    return 32, mem[_800 + 37 len ceil32(_1301) + 32]
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[_732 + idx + 32] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1188 = mem[96]
                mem[_732 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_732 + stor12.length.field_1 + _1188 + 32] = '.json'
                if ceil32(_1188) <= _1188:
                    _1612 = mem[64]
                    mem[64] = _732 + stor12.length.field_1 + _1188 + 37
                    mem[_732 + stor12.length.field_1 + _1188 + 37] = 32
                    _1644 = mem[_1612]
                    mem[_732 + stor12.length.field_1 + _1188 + 69] = mem[_1612]
                    mem[_732 + stor12.length.field_1 + _1188 + 101 len ceil32(_1644)] = mem[_1612 + 32 len ceil32(_1644)]
                    if ceil32(_1644) > _1644:
                        mem[_732 + stor12.length.field_1 + _1188 + _1644 + 101] = 0
                    return 32, mem[_732 + stor12.length.field_1 + _1188 + 69 len ceil32(_1644) + 32]
                _1620 = mem[64]
                mem[64] = _732 + stor12.length.field_1 + _1188 + 37
                mem[_732 + stor12.length.field_1 + _1188 + 37] = 32
                _1652 = mem[_1620]
                mem[_732 + stor12.length.field_1 + _1188 + 69] = mem[_1620]
                mem[_732 + stor12.length.field_1 + _1188 + 101 len ceil32(_1652)] = mem[_1620 + 32 len ceil32(_1652)]
                if ceil32(_1652) > _1652:
                    mem[_732 + stor12.length.field_1 + _1188 + _1652 + 101] = 0
                return 32, mem[_732 + stor12.length.field_1 + _1188 + 69 len ceil32(_1652) + 32]
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[mem[64] + 32] = Mask(248, 8, stor12.length)
                _801 = mem[96]
                mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_732 + stor12.length.field_1 + _801 + 32] = '.json'
                if ceil32(_801) <= _801:
                    _1215 = mem[64]
                    mem[64] = _732 + stor12.length.field_1 + _801 + 37
                    mem[_732 + stor12.length.field_1 + _801 + 37] = 32
                    _1286 = mem[_1215]
                    mem[_732 + stor12.length.field_1 + _801 + 69] = mem[_1215]
                    mem[_732 + stor12.length.field_1 + _801 + 101 len ceil32(_1286)] = mem[_1215 + 32 len ceil32(_1286)]
                    if ceil32(_1286) > _1286:
                        mem[_732 + stor12.length.field_1 + _801 + _1286 + 101] = 0
                    return 32, mem[_732 + stor12.length.field_1 + _801 + 69 len ceil32(_1286) + 32]
                _1238 = mem[64]
                mem[64] = _732 + stor12.length.field_1 + _801 + 37
                mem[_732 + stor12.length.field_1 + _801 + 37] = 32
                _1302 = mem[_1238]
                mem[_732 + stor12.length.field_1 + _801 + 69] = mem[_1238]
                mem[_732 + stor12.length.field_1 + _801 + 101 len ceil32(_1302)] = mem[_1238 + 32 len ceil32(_1302)]
                if ceil32(_1302) > _1302:
                    mem[_732 + stor12.length.field_1 + _801 + _1302 + 101] = 0
                return 32, mem[_732 + stor12.length.field_1 + _801 + 69 len ceil32(_1302) + 32]
            if bool(stor12.length) != 1:
                _812 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_812] = '.json'
                if ceil32(_812) <= _812:
                    _1217 = mem[64]
                    mem[64] = _812 + 5
                    mem[_812 + 5] = 32
                    _1287 = mem[_1217]
                    mem[_812 + 37] = mem[_1217]
                    mem[_812 + 69 len ceil32(_1287)] = mem[_1217 + 32 len ceil32(_1287)]
                    if ceil32(_1287) > _1287:
                        mem[_812 + _1287 + 69] = 0
                    return 32, mem[_812 + 37 len ceil32(_1287) + 32]
                _1239 = mem[64]
                mem[64] = _812 + 5
                mem[_812 + 5] = 32
                _1303 = mem[_1239]
                mem[_812 + 37] = mem[_1239]
                mem[_812 + 69 len ceil32(_1303)] = mem[_1239 + 32 len ceil32(_1303)]
                if ceil32(_1303) > _1303:
                    mem[_812 + _1303 + 69] = 0
                return 32, mem[_812 + 37 len ceil32(_1303) + 32]
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[_732 + idx + 32] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1189 = mem[96]
            mem[_732 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_732 + stor12.length.field_1 + _1189 + 32] = '.json'
            if ceil32(_1189) <= _1189:
                _1613 = mem[64]
                mem[64] = _732 + stor12.length.field_1 + _1189 + 37
                mem[_732 + stor12.length.field_1 + _1189 + 37] = 32
                _1645 = mem[_1613]
                mem[_732 + stor12.length.field_1 + _1189 + 69] = mem[_1613]
                mem[_732 + stor12.length.field_1 + _1189 + 101 len ceil32(_1645)] = mem[_1613 + 32 len ceil32(_1645)]
                if ceil32(_1645) > _1645:
                    mem[_732 + stor12.length.field_1 + _1189 + _1645 + 101] = 0
                return 32, mem[_732 + stor12.length.field_1 + _1189 + 69 len ceil32(_1645) + 32]
            _1621 = mem[64]
            mem[64] = _732 + stor12.length.field_1 + _1189 + 37
            mem[_732 + stor12.length.field_1 + _1189 + 37] = 32
            _1653 = mem[_1621]
            mem[_732 + stor12.length.field_1 + _1189 + 69] = mem[_1621]
            mem[_732 + stor12.length.field_1 + _1189 + 101 len ceil32(_1653)] = mem[_1621 + 32 len ceil32(_1653)]
            if ceil32(_1653) > _1653:
                mem[_732 + stor12.length.field_1 + _1189 + _1653 + 101] = 0
            return 32, mem[_732 + stor12.length.field_1 + _1189 + 69 len ceil32(_1653) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if not t:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _733 = mem[64]
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[mem[64] + 32] = Mask(248, 8, stor12.length)
                _793 = mem[96]
                mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_733 + stor12.length.field_1 + _793 + 32] = '.json'
                if ceil32(_793) <= _793:
                    _1218 = mem[64]
                    mem[64] = _733 + stor12.length.field_1 + _793 + 37
                    mem[_733 + stor12.length.field_1 + _793 + 37] = 32
                    _1288 = mem[_1218]
                    mem[_733 + stor12.length.field_1 + _793 + 69] = mem[_1218]
                    mem[_733 + stor12.length.field_1 + _793 + 101 len ceil32(_1288)] = mem[_1218 + 32 len ceil32(_1288)]
                    if ceil32(_1288) > _1288:
                        mem[_733 + stor12.length.field_1 + _793 + _1288 + 101] = 0
                    return 32, mem[_733 + stor12.length.field_1 + _793 + 69 len ceil32(_1288) + 32]
                _1240 = mem[64]
                mem[64] = _733 + stor12.length.field_1 + _793 + 37
                mem[_733 + stor12.length.field_1 + _793 + 37] = 32
                _1304 = mem[_1240]
                mem[_733 + stor12.length.field_1 + _793 + 69] = mem[_1240]
                mem[_733 + stor12.length.field_1 + _793 + 101 len ceil32(_1304)] = mem[_1240 + 32 len ceil32(_1304)]
                if ceil32(_1304) > _1304:
                    mem[_733 + stor12.length.field_1 + _793 + _1304 + 101] = 0
                return 32, mem[_733 + stor12.length.field_1 + _793 + 69 len ceil32(_1304) + 32]
            if bool(stor12.length) != 1:
                _802 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_802] = '.json'
                if ceil32(_802) <= _802:
                    _1220 = mem[64]
                    mem[64] = _802 + 5
                    mem[_802 + 5] = 32
                    _1289 = mem[_1220]
                    mem[_802 + 37] = mem[_1220]
                    mem[_802 + 69 len ceil32(_1289)] = mem[_1220 + 32 len ceil32(_1289)]
                    if ceil32(_1289) > _1289:
                        mem[_802 + _1289 + 69] = 0
                    return 32, mem[_802 + 37 len ceil32(_1289) + 32]
                _1241 = mem[64]
                mem[64] = _802 + 5
                mem[_802 + 5] = 32
                _1305 = mem[_1241]
                mem[_802 + 37] = mem[_1241]
                mem[_802 + 69 len ceil32(_1305)] = mem[_1241 + 32 len ceil32(_1305)]
                if ceil32(_1305) > _1305:
                    mem[_802 + _1305 + 69] = 0
                return 32, mem[_802 + 37 len ceil32(_1305) + 32]
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[_733 + idx + 32] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1190 = mem[96]
            mem[_733 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_733 + stor12.length.field_1 + _1190 + 32] = '.json'
            if ceil32(_1190) <= _1190:
                _1614 = mem[64]
                mem[64] = _733 + stor12.length.field_1 + _1190 + 37
                mem[_733 + stor12.length.field_1 + _1190 + 37] = 32
                _1646 = mem[_1614]
                mem[_733 + stor12.length.field_1 + _1190 + 69] = mem[_1614]
                mem[_733 + stor12.length.field_1 + _1190 + 101 len ceil32(_1646)] = mem[_1614 + 32 len ceil32(_1646)]
                if ceil32(_1646) > _1646:
                    mem[_733 + stor12.length.field_1 + _1190 + _1646 + 101] = 0
                return 32, mem[_733 + stor12.length.field_1 + _1190 + 69 len ceil32(_1646) + 32]
            _1622 = mem[64]
            mem[64] = _733 + stor12.length.field_1 + _1190 + 37
            mem[_733 + stor12.length.field_1 + _1190 + 37] = 32
            _1654 = mem[_1622]
            mem[_733 + stor12.length.field_1 + _1190 + 69] = mem[_1622]
            mem[_733 + stor12.length.field_1 + _1190 + 101 len ceil32(_1654)] = mem[_1622 + 32 len ceil32(_1654)]
            if ceil32(_1654) > _1654:
                mem[_733 + stor12.length.field_1 + _1190 + _1654 + 101] = 0
            return 32, mem[_733 + stor12.length.field_1 + _1190 + 69 len ceil32(_1654) + 32]
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[mem[64] + 32] = Mask(248, 8, stor12.length)
            _803 = mem[96]
            mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_733 + stor12.length.field_1 + _803 + 32] = '.json'
            if ceil32(_803) <= _803:
                _1221 = mem[64]
                mem[64] = _733 + stor12.length.field_1 + _803 + 37
                mem[_733 + stor12.length.field_1 + _803 + 37] = 32
                _1290 = mem[_1221]
                mem[_733 + stor12.length.field_1 + _803 + 69] = mem[_1221]
                mem[_733 + stor12.length.field_1 + _803 + 101 len ceil32(_1290)] = mem[_1221 + 32 len ceil32(_1290)]
                if ceil32(_1290) > _1290:
                    mem[_733 + stor12.length.field_1 + _803 + _1290 + 101] = 0
                return 32, mem[_733 + stor12.length.field_1 + _803 + 69 len ceil32(_1290) + 32]
            _1242 = mem[64]
            mem[64] = _733 + stor12.length.field_1 + _803 + 37
            mem[_733 + stor12.length.field_1 + _803 + 37] = 32
            _1306 = mem[_1242]
            mem[_733 + stor12.length.field_1 + _803 + 69] = mem[_1242]
            mem[_733 + stor12.length.field_1 + _803 + 101 len ceil32(_1306)] = mem[_1242 + 32 len ceil32(_1306)]
            if ceil32(_1306) > _1306:
                mem[_733 + stor12.length.field_1 + _803 + _1306 + 101] = 0
            return 32, mem[_733 + stor12.length.field_1 + _803 + 69 len ceil32(_1306) + 32]
        if bool(stor12.length) != 1:
            _813 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_813] = '.json'
            if ceil32(_813) <= _813:
                _1223 = mem[64]
                mem[64] = _813 + 5
                mem[_813 + 5] = 32
                _1291 = mem[_1223]
                mem[_813 + 37] = mem[_1223]
                mem[_813 + 69 len ceil32(_1291)] = mem[_1223 + 32 len ceil32(_1291)]
                if ceil32(_1291) > _1291:
                    mem[_813 + _1291 + 69] = 0
                return 32, mem[_813 + 37 len ceil32(_1291) + 32]
            _1243 = mem[64]
            mem[64] = _813 + 5
            mem[_813 + 5] = 32
            _1307 = mem[_1243]
            mem[_813 + 37] = mem[_1243]
            mem[_813 + 69 len ceil32(_1307)] = mem[_1243 + 32 len ceil32(_1307)]
            if ceil32(_1307) > _1307:
                mem[_813 + _1307 + 69] = 0
            return 32, mem[_813 + 37 len ceil32(_1307) + 32]
        mem[0] = 12
        idx = 0
        s = 0
        while idx < stor12.length.field_1:
            mem[_733 + idx + 32] = stor12[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1191 = mem[96]
        mem[_733 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_733 + stor12.length.field_1 + _1191 + 32] = '.json'
        if ceil32(_1191) <= _1191:
            _1615 = mem[64]
            mem[64] = _733 + stor12.length.field_1 + _1191 + 37
            mem[_733 + stor12.length.field_1 + _1191 + 37] = 32
            _1647 = mem[_1615]
            mem[_733 + stor12.length.field_1 + _1191 + 69] = mem[_1615]
            mem[_733 + stor12.length.field_1 + _1191 + 101 len ceil32(_1647)] = mem[_1615 + 32 len ceil32(_1647)]
            if ceil32(_1647) > _1647:
                mem[_733 + stor12.length.field_1 + _1191 + _1647 + 101] = 0
            return 32, mem[_733 + stor12.length.field_1 + _1191 + 69 len ceil32(_1647) + 32]
        _1623 = mem[64]
        mem[64] = _733 + stor12.length.field_1 + _1191 + 37
        mem[_733 + stor12.length.field_1 + _1191 + 37] = 32
        _1655 = mem[_1623]
        mem[_733 + stor12.length.field_1 + _1191 + 69] = mem[_1623]
        mem[_733 + stor12.length.field_1 + _1191 + 101 len ceil32(_1655)] = mem[_1623 + 32 len ceil32(_1655)]
        if ceil32(_1655) > _1655:
            mem[_733 + stor12.length.field_1 + _1191 + _1655 + 101] = 0
        return 32, mem[_733 + stor12.length.field_1 + _1191 + 69 len ceil32(_1655) + 32]
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if stor12.length.field_1 <= 0:
        return 32, 80, 
               0xfe68747470733a2f2f697066732e696f2f697066732f6261666b72656968657a347869736e346462656a7461696a667464323678343579697579716d656278636d6f706579373532357a797578716a6a, mem[208 len 16] >> 384,
               0
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[192] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 6
                    _265 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_265) > _265:
                        mem[_265 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_265) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[idx + 192] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor12.length.field_1 + 192] = '0'
            mem[stor12.length.field_1 + 193] = '.json'
            mem[stor12.length.field_1 + 198] = 32
            mem[stor12.length.field_1 + 230] = mem[160]
            mem[stor12.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor12.length.field_1 + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[stor12.length.field_1 + 262 len ceil32(mem[160])])
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[192] = Mask(248, 8, stor12.length)
        else:
            if bool(stor12.length) != 1:
                mem[64] = 6
                _267 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_267) > _267:
                    mem[_267 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_267) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[idx + 192] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor12.length.field_1 + 192] = '0'
        mem[stor12.length.field_1 + 193] = '.json'
        mem[stor12.length.field_1 + 198] = 32
        mem[stor12.length.field_1 + 230] = mem[160]
        mem[stor12.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor12.length.field_1 + mem[160] + 262] = 0
        return Array(len=mem[160], data=mem[stor12.length.field_1 + 262 len ceil32(mem[160])])
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
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if not t:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _734 = mem[64]
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[mem[64] + 32] = Mask(248, 8, stor12.length)
                _796 = mem[96]
                mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_734 + stor12.length.field_1 + _796 + 32] = '.json'
                if ceil32(_796) <= _796:
                    _1224 = mem[64]
                    mem[64] = _734 + stor12.length.field_1 + _796 + 37
                    mem[_734 + stor12.length.field_1 + _796 + 37] = 32
                    _1292 = mem[_1224]
                    mem[_734 + stor12.length.field_1 + _796 + 69] = mem[_1224]
                    mem[_734 + stor12.length.field_1 + _796 + 101 len ceil32(_1292)] = mem[_1224 + 32 len ceil32(_1292)]
                    if ceil32(_1292) > _1292:
                        mem[_734 + stor12.length.field_1 + _796 + _1292 + 101] = 0
                    return 32, mem[_734 + stor12.length.field_1 + _796 + 69 len ceil32(_1292) + 32]
                _1244 = mem[64]
                mem[64] = _734 + stor12.length.field_1 + _796 + 37
                mem[_734 + stor12.length.field_1 + _796 + 37] = 32
                _1308 = mem[_1244]
                mem[_734 + stor12.length.field_1 + _796 + 69] = mem[_1244]
                mem[_734 + stor12.length.field_1 + _796 + 101 len ceil32(_1308)] = mem[_1244 + 32 len ceil32(_1308)]
                if ceil32(_1308) > _1308:
                    mem[_734 + stor12.length.field_1 + _796 + _1308 + 101] = 0
                return 32, mem[_734 + stor12.length.field_1 + _796 + 69 len ceil32(_1308) + 32]
            if bool(stor12.length) != 1:
                _806 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_806] = '.json'
                if ceil32(_806) <= _806:
                    _1226 = mem[64]
                    mem[64] = _806 + 5
                    mem[_806 + 5] = 32
                    _1293 = mem[_1226]
                    mem[_806 + 37] = mem[_1226]
                    mem[_806 + 69 len ceil32(_1293)] = mem[_1226 + 32 len ceil32(_1293)]
                    if ceil32(_1293) > _1293:
                        mem[_806 + _1293 + 69] = 0
                    return 32, mem[_806 + 37 len ceil32(_1293) + 32]
                _1245 = mem[64]
                mem[64] = _806 + 5
                mem[_806 + 5] = 32
                _1309 = mem[_1245]
                mem[_806 + 37] = mem[_1245]
                mem[_806 + 69 len ceil32(_1309)] = mem[_1245 + 32 len ceil32(_1309)]
                if ceil32(_1309) > _1309:
                    mem[_806 + _1309 + 69] = 0
                return 32, mem[_806 + 37 len ceil32(_1309) + 32]
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[_734 + idx + 32] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1192 = mem[96]
            mem[_734 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_734 + stor12.length.field_1 + _1192 + 32] = '.json'
            if ceil32(_1192) <= _1192:
                _1616 = mem[64]
                mem[64] = _734 + stor12.length.field_1 + _1192 + 37
                mem[_734 + stor12.length.field_1 + _1192 + 37] = 32
                _1648 = mem[_1616]
                mem[_734 + stor12.length.field_1 + _1192 + 69] = mem[_1616]
                mem[_734 + stor12.length.field_1 + _1192 + 101 len ceil32(_1648)] = mem[_1616 + 32 len ceil32(_1648)]
                if ceil32(_1648) > _1648:
                    mem[_734 + stor12.length.field_1 + _1192 + _1648 + 101] = 0
                return 32, mem[_734 + stor12.length.field_1 + _1192 + 69 len ceil32(_1648) + 32]
            _1624 = mem[64]
            mem[64] = _734 + stor12.length.field_1 + _1192 + 37
            mem[_734 + stor12.length.field_1 + _1192 + 37] = 32
            _1656 = mem[_1624]
            mem[_734 + stor12.length.field_1 + _1192 + 69] = mem[_1624]
            mem[_734 + stor12.length.field_1 + _1192 + 101 len ceil32(_1656)] = mem[_1624 + 32 len ceil32(_1656)]
            if ceil32(_1656) > _1656:
                mem[_734 + stor12.length.field_1 + _1192 + _1656 + 101] = 0
            return 32, mem[_734 + stor12.length.field_1 + _1192 + 69 len ceil32(_1656) + 32]
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[mem[64] + 32] = Mask(248, 8, stor12.length)
            _807 = mem[96]
            mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_734 + stor12.length.field_1 + _807 + 32] = '.json'
            if ceil32(_807) <= _807:
                _1227 = mem[64]
                mem[64] = _734 + stor12.length.field_1 + _807 + 37
                mem[_734 + stor12.length.field_1 + _807 + 37] = 32
                _1294 = mem[_1227]
                mem[_734 + stor12.length.field_1 + _807 + 69] = mem[_1227]
                mem[_734 + stor12.length.field_1 + _807 + 101 len ceil32(_1294)] = mem[_1227 + 32 len ceil32(_1294)]
                if ceil32(_1294) > _1294:
                    mem[_734 + stor12.length.field_1 + _807 + _1294 + 101] = 0
                return 32, mem[_734 + stor12.length.field_1 + _807 + 69 len ceil32(_1294) + 32]
            _1246 = mem[64]
            mem[64] = _734 + stor12.length.field_1 + _807 + 37
            mem[_734 + stor12.length.field_1 + _807 + 37] = 32
            _1310 = mem[_1246]
            mem[_734 + stor12.length.field_1 + _807 + 69] = mem[_1246]
            mem[_734 + stor12.length.field_1 + _807 + 101 len ceil32(_1310)] = mem[_1246 + 32 len ceil32(_1310)]
            if ceil32(_1310) > _1310:
                mem[_734 + stor12.length.field_1 + _807 + _1310 + 101] = 0
            return 32, mem[_734 + stor12.length.field_1 + _807 + 69 len ceil32(_1310) + 32]
        if bool(stor12.length) != 1:
            _814 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_814] = '.json'
            if ceil32(_814) <= _814:
                _1229 = mem[64]
                mem[64] = _814 + 5
                mem[_814 + 5] = 32
                _1295 = mem[_1229]
                mem[_814 + 37] = mem[_1229]
                mem[_814 + 69 len ceil32(_1295)] = mem[_1229 + 32 len ceil32(_1295)]
                if ceil32(_1295) > _1295:
                    mem[_814 + _1295 + 69] = 0
                return 32, mem[_814 + 37 len ceil32(_1295) + 32]
            _1247 = mem[64]
            mem[64] = _814 + 5
            mem[_814 + 5] = 32
            _1311 = mem[_1247]
            mem[_814 + 37] = mem[_1247]
            mem[_814 + 69 len ceil32(_1311)] = mem[_1247 + 32 len ceil32(_1311)]
            if ceil32(_1311) > _1311:
                mem[_814 + _1311 + 69] = 0
            return 32, mem[_814 + 37 len ceil32(_1311) + 32]
        mem[0] = 12
        idx = 0
        s = 0
        while idx < stor12.length.field_1:
            mem[_734 + idx + 32] = stor12[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1193 = mem[96]
        mem[_734 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_734 + stor12.length.field_1 + _1193 + 32] = '.json'
        if ceil32(_1193) <= _1193:
            _1617 = mem[64]
            mem[64] = _734 + stor12.length.field_1 + _1193 + 37
            mem[_734 + stor12.length.field_1 + _1193 + 37] = 32
            _1649 = mem[_1617]
            mem[_734 + stor12.length.field_1 + _1193 + 69] = mem[_1617]
            mem[_734 + stor12.length.field_1 + _1193 + 101 len ceil32(_1649)] = mem[_1617 + 32 len ceil32(_1649)]
            if ceil32(_1649) > _1649:
                mem[_734 + stor12.length.field_1 + _1193 + _1649 + 101] = 0
            return 32, mem[_734 + stor12.length.field_1 + _1193 + 69 len ceil32(_1649) + 32]
        _1625 = mem[64]
        mem[64] = _734 + stor12.length.field_1 + _1193 + 37
        mem[_734 + stor12.length.field_1 + _1193 + 37] = 32
        _1657 = mem[_1625]
        mem[_734 + stor12.length.field_1 + _1193 + 69] = mem[_1625]
        mem[_734 + stor12.length.field_1 + _1193 + 101 len ceil32(_1657)] = mem[_1625 + 32 len ceil32(_1657)]
        if ceil32(_1657) > _1657:
            mem[_734 + stor12.length.field_1 + _1193 + _1657 + 101] = 0
        return 32, mem[_734 + stor12.length.field_1 + _1193 + 69 len ceil32(_1657) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if not t:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _735 = mem[64]
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[mem[64] + 32] = Mask(248, 8, stor12.length)
            _797 = mem[96]
            mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_735 + stor12.length.field_1 + _797 + 32] = '.json'
            if ceil32(_797) <= _797:
                _1230 = mem[64]
                mem[64] = _735 + stor12.length.field_1 + _797 + 37
                mem[_735 + stor12.length.field_1 + _797 + 37] = 32
                _1296 = mem[_1230]
                mem[_735 + stor12.length.field_1 + _797 + 69] = mem[_1230]
                mem[_735 + stor12.length.field_1 + _797 + 101 len ceil32(_1296)] = mem[_1230 + 32 len ceil32(_1296)]
                if ceil32(_1296) > _1296:
                    mem[_735 + stor12.length.field_1 + _797 + _1296 + 101] = 0
                return 32, mem[_735 + stor12.length.field_1 + _797 + 69 len ceil32(_1296) + 32]
            _1248 = mem[64]
            mem[64] = _735 + stor12.length.field_1 + _797 + 37
            mem[_735 + stor12.length.field_1 + _797 + 37] = 32
            _1312 = mem[_1248]
            mem[_735 + stor12.length.field_1 + _797 + 69] = mem[_1248]
            mem[_735 + stor12.length.field_1 + _797 + 101 len ceil32(_1312)] = mem[_1248 + 32 len ceil32(_1312)]
            if ceil32(_1312) > _1312:
                mem[_735 + stor12.length.field_1 + _797 + _1312 + 101] = 0
            return 32, mem[_735 + stor12.length.field_1 + _797 + 69 len ceil32(_1312) + 32]
        if bool(stor12.length) != 1:
            _808 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_808] = '.json'
            if ceil32(_808) <= _808:
                _1232 = mem[64]
                mem[64] = _808 + 5
                mem[_808 + 5] = 32
                _1297 = mem[_1232]
                mem[_808 + 37] = mem[_1232]
                mem[_808 + 69 len ceil32(_1297)] = mem[_1232 + 32 len ceil32(_1297)]
                if ceil32(_1297) > _1297:
                    mem[_808 + _1297 + 69] = 0
                return 32, mem[_808 + 37 len ceil32(_1297) + 32]
            _1249 = mem[64]
            mem[64] = _808 + 5
            mem[_808 + 5] = 32
            _1313 = mem[_1249]
            mem[_808 + 37] = mem[_1249]
            mem[_808 + 69 len ceil32(_1313)] = mem[_1249 + 32 len ceil32(_1313)]
            if ceil32(_1313) > _1313:
                mem[_808 + _1313 + 69] = 0
            return 32, mem[_808 + 37 len ceil32(_1313) + 32]
        mem[0] = 12
        idx = 0
        s = 0
        while idx < stor12.length.field_1:
            mem[_735 + idx + 32] = stor12[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1194 = mem[96]
        mem[_735 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_735 + stor12.length.field_1 + _1194 + 32] = '.json'
        if ceil32(_1194) <= _1194:
            _1618 = mem[64]
            mem[64] = _735 + stor12.length.field_1 + _1194 + 37
            mem[_735 + stor12.length.field_1 + _1194 + 37] = 32
            _1650 = mem[_1618]
            mem[_735 + stor12.length.field_1 + _1194 + 69] = mem[_1618]
            mem[_735 + stor12.length.field_1 + _1194 + 101 len ceil32(_1650)] = mem[_1618 + 32 len ceil32(_1650)]
            if ceil32(_1650) > _1650:
                mem[_735 + stor12.length.field_1 + _1194 + _1650 + 101] = 0
            return 32, mem[_735 + stor12.length.field_1 + _1194 + 69 len ceil32(_1650) + 32]
        _1626 = mem[64]
        mem[64] = _735 + stor12.length.field_1 + _1194 + 37
        mem[_735 + stor12.length.field_1 + _1194 + 37] = 32
        _1658 = mem[_1626]
        mem[_735 + stor12.length.field_1 + _1194 + 69] = mem[_1626]
        mem[_735 + stor12.length.field_1 + _1194 + 101 len ceil32(_1658)] = mem[_1626 + 32 len ceil32(_1658)]
        if ceil32(_1658) > _1658:
            mem[_735 + stor12.length.field_1 + _1194 + _1658 + 101] = 0
        return 32, mem[_735 + stor12.length.field_1 + _1194 + 69 len ceil32(_1658) + 32]
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor12.length):
        mem[mem[64] + 32] = Mask(248, 8, stor12.length)
        _809 = mem[96]
        mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_735 + stor12.length.field_1 + _809 + 32] = '.json'
        if ceil32(_809) <= _809:
            _1233 = mem[64]
            mem[64] = _735 + stor12.length.field_1 + _809 + 37
            mem[_735 + stor12.length.field_1 + _809 + 37] = 32
            _1298 = mem[_1233]
            mem[_735 + stor12.length.field_1 + _809 + 69] = mem[_1233]
            mem[_735 + stor12.length.field_1 + _809 + 101 len ceil32(_1298)] = mem[_1233 + 32 len ceil32(_1298)]
            if ceil32(_1298) > _1298:
                mem[_735 + stor12.length.field_1 + _809 + _1298 + 101] = 0
            return 32, mem[_735 + stor12.length.field_1 + _809 + 69 len ceil32(_1298) + 32]
        _1250 = mem[64]
        mem[64] = _735 + stor12.length.field_1 + _809 + 37
        mem[_735 + stor12.length.field_1 + _809 + 37] = 32
        _1314 = mem[_1250]
        mem[_735 + stor12.length.field_1 + _809 + 69] = mem[_1250]
        mem[_735 + stor12.length.field_1 + _809 + 101 len ceil32(_1314)] = mem[_1250 + 32 len ceil32(_1314)]
        if ceil32(_1314) > _1314:
            mem[_735 + stor12.length.field_1 + _809 + _1314 + 101] = 0
        return 32, mem[_735 + stor12.length.field_1 + _809 + 69 len ceil32(_1314) + 32]
    if bool(stor12.length) != 1:
        _815 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_815] = '.json'
        if ceil32(_815) <= _815:
            _1235 = mem[64]
            mem[64] = _815 + 5
            mem[_815 + 5] = 32
            _1299 = mem[_1235]
            mem[_815 + 37] = mem[_1235]
            mem[_815 + 69 len ceil32(_1299)] = mem[_1235 + 32 len ceil32(_1299)]
            if ceil32(_1299) > _1299:
                mem[_815 + _1299 + 69] = 0
            return 32, mem[_815 + 37 len ceil32(_1299) + 32]
        _1251 = mem[64]
        mem[64] = _815 + 5
        mem[_815 + 5] = 32
        _1315 = mem[_1251]
        mem[_815 + 37] = mem[_1251]
        mem[_815 + 69 len ceil32(_1315)] = mem[_1251 + 32 len ceil32(_1315)]
        if ceil32(_1315) > _1315:
            mem[_815 + _1315 + 69] = 0
        return 32, mem[_815 + 37 len ceil32(_1315) + 32]
    mem[0] = 12
    idx = 0
    s = 0
    while idx < stor12.length.field_1:
        mem[_735 + idx + 32] = stor12[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _1195 = mem[96]
    mem[_735 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_735 + stor12.length.field_1 + _1195 + 32] = '.json'
    if ceil32(_1195) <= _1195:
        _1619 = mem[64]
        mem[64] = _735 + stor12.length.field_1 + _1195 + 37
        mem[_735 + stor12.length.field_1 + _1195 + 37] = 32
        _1651 = mem[_1619]
        mem[_735 + stor12.length.field_1 + _1195 + 69] = mem[_1619]
        mem[_735 + stor12.length.field_1 + _1195 + 101 len ceil32(_1651)] = mem[_1619 + 32 len ceil32(_1651)]
        if ceil32(_1651) > _1651:
            mem[_735 + stor12.length.field_1 + _1195 + _1651 + 101] = 0
        return 32, mem[_735 + stor12.length.field_1 + _1195 + 69 len ceil32(_1651) + 32]
    _1627 = mem[64]
    mem[64] = _735 + stor12.length.field_1 + _1195 + 37
    mem[_735 + stor12.length.field_1 + _1195 + 37] = 32
    _1659 = mem[_1627]
    mem[_735 + stor12.length.field_1 + _1195 + 69] = mem[_1627]
    mem[_735 + stor12.length.field_1 + _1195 + 101 len ceil32(_1659)] = mem[_1627 + 32 len ceil32(_1659)]
    if ceil32(_1659) > _1659:
        mem[_735 + stor12.length.field_1 + _1195 + _1659 + 101] = 0
    return 32, mem[_735 + stor12.length.field_1 + _1195 + 69 len ceil32(_1659) + 32]
}



}
