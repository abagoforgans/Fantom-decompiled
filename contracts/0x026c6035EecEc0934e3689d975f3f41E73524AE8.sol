contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const MAX_ENTRIES = 4444

const ROYALTY_PERCENT = 8


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
address owner; offset 32
array of uint256 stor11;
uint256 sub_4b2683e4;
uint256 sub_6ef67cd6;
uint256 sub_d0c8ead7;
uint8 isPaused;
address sub_7879c8bfAddress; offset 8
address sub_dd603f45Address;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function _paused() {
    return bool(isPaused)
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

function sub_4b2683e4(?) {
    return sub_4b2683e4
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

function sub_6ef67cd6(?) {
    return sub_6ef67cd6
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_7879c8bf(?) {
    return sub_7879c8bfAddress
}

function owner() {
    return owner
}

function isPaused() {
    return bool(isPaused)
}

function sub_d0c8ead7(?) {
    return sub_d0c8ead7
}

function sub_dd603f45(?) {
    return sub_dd603f45Address
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

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isPaused = uint8(arg1)
}

function setroyaltyAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dd603f45Address = arg1
}

function updateFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7879c8bfAddress = arg1
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

function setPrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4b2683e4 = arg1
    sub_6ef67cd6 = arg2
    sub_d0c8ead7 = arg3
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tokenByIndex.length > -2:
        revert with 'NH{q', 17
    if arg1 >= tokenByIndex.length + 1:
        revert with 0, 'Incorrect token id'
    if arg2 and 8 > -1 / arg2:
        revert with 'NH{q', 17
    return sub_dd603f45Address, 8 * arg2 / 100
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

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
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

function setBaseURI(string arg1) {
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
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
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

function mint(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tokenByIndex.length > -2:
        revert with 'NH{q', 17
    if arg2 == 10:
        if msg.sender == owner:
            call sub_7879c8bfAddress with:
               value msg.value wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Transfer failed'
                idx = 0
                while idx < arg2:
                    if tokenByIndex.length < 4444:
                        _1155 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1155] = 0
                        if not arg1:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length
                        if arg1:
                            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length
                            stor7[stor8.length] = balanceOf[address(arg1)]
                            if balanceOf[address(arg1)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)]++
                            mem[0] = tokenByIndex.length
                            mem[32] = 2
                            ownerOf[stor8.length] = arg1
                            emit Transfer(0, arg1, tokenByIndex.length);
                            if ext_code.size(arg1) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1155 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(arg1)
                                call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                _2303 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2303] == Mask(32, 224, mem[_2303])
                                if Mask(32, 224, mem[_2303]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length]
                            stor9[stor8.length] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(arg1)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)]++
                            mem[0] = tokenByIndex.length
                            mem[32] = 2
                            ownerOf[stor8.length] = arg1
                            emit Transfer(0, arg1, tokenByIndex.length);
                            if ext_code.size(arg1) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1155 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(arg1)
                                call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                _2304 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2304] == Mask(32, 224, mem[_2304])
                                if Mask(32, 224, mem[_2304]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                mem[64] = ceil32(return_data.size) + 97
                mem[96] = return_data.size
                mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Transfer failed'
                idx = 0
                while idx < arg2:
                    if tokenByIndex.length < 4444:
                        _1156 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1156] = 0
                        if not arg1:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length
                        if arg1:
                            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length
                            stor7[stor8.length] = balanceOf[address(arg1)]
                            if balanceOf[address(arg1)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)]++
                            mem[0] = tokenByIndex.length
                            mem[32] = 2
                            ownerOf[stor8.length] = arg1
                            emit Transfer(0, arg1, tokenByIndex.length);
                            if ext_code.size(arg1) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1156 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(arg1)
                                call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                _2305 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2305] == Mask(32, 224, mem[_2305])
                                if Mask(32, 224, mem[_2305]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length]
                            stor9[stor8.length] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(arg1)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)]++
                            mem[0] = tokenByIndex.length
                            mem[32] = 2
                            ownerOf[stor8.length] = arg1
                            emit Transfer(0, arg1, tokenByIndex.length);
                            if ext_code.size(arg1) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1156 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(arg1)
                                call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                _2306 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2306] == Mask(32, 224, mem[_2306])
                                if Mask(32, 224, mem[_2306]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            if isPaused:
                revert with 0, 'Sale Paused'
            if sub_6ef67cd6 and arg2 > -1 / sub_6ef67cd6:
                revert with 'NH{q', 17
            if msg.value < sub_6ef67cd6 * arg2:
                revert with 0, 'Insufficient funds to mint.'
            call sub_7879c8bfAddress with:
               value msg.value wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Transfer failed'
                idx = 0
                while idx < arg2:
                    if tokenByIndex.length < 4444:
                        _1157 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1157] = 0
                        if not arg1:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length
                        if arg1:
                            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length
                            stor7[stor8.length] = balanceOf[address(arg1)]
                            if balanceOf[address(arg1)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)]++
                            mem[0] = tokenByIndex.length
                            mem[32] = 2
                            ownerOf[stor8.length] = arg1
                            emit Transfer(0, arg1, tokenByIndex.length);
                            if ext_code.size(arg1) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1157 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(arg1)
                                call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                _2307 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2307] == Mask(32, 224, mem[_2307])
                                if Mask(32, 224, mem[_2307]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length]
                            stor9[stor8.length] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(arg1)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)]++
                            mem[0] = tokenByIndex.length
                            mem[32] = 2
                            ownerOf[stor8.length] = arg1
                            emit Transfer(0, arg1, tokenByIndex.length);
                            if ext_code.size(arg1) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1157 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(arg1)
                                call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                _2308 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2308] == Mask(32, 224, mem[_2308])
                                if Mask(32, 224, mem[_2308]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                mem[64] = ceil32(return_data.size) + 97
                mem[96] = return_data.size
                mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Transfer failed'
                idx = 0
                while idx < arg2:
                    if tokenByIndex.length < 4444:
                        _1158 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1158] = 0
                        if not arg1:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length
                        if arg1:
                            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length
                            stor7[stor8.length] = balanceOf[address(arg1)]
                            if balanceOf[address(arg1)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)]++
                            mem[0] = tokenByIndex.length
                            mem[32] = 2
                            ownerOf[stor8.length] = arg1
                            emit Transfer(0, arg1, tokenByIndex.length);
                            if ext_code.size(arg1) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1158 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(arg1)
                                call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                _2309 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2309] == Mask(32, 224, mem[_2309])
                                if Mask(32, 224, mem[_2309]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length]
                            stor9[stor8.length] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(arg1)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)]++
                            mem[0] = tokenByIndex.length
                            mem[32] = 2
                            ownerOf[stor8.length] = arg1
                            emit Transfer(0, arg1, tokenByIndex.length);
                            if ext_code.size(arg1) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1158 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(arg1)
                                call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                _2310 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2310] == Mask(32, 224, mem[_2310])
                                if Mask(32, 224, mem[_2310]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
    else:
        if arg2 != 100:
            if msg.sender == owner:
                call sub_7879c8bfAddress with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Transfer failed'
                    idx = 0
                    while idx < arg2:
                        if tokenByIndex.length < 4444:
                            _1147 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1147] = 0
                            if not arg1:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length
                            if arg1:
                                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length
                                stor7[stor8.length] = balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1147 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2287 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2287] == Mask(32, 224, mem[_2287])
                                    if Mask(32, 224, mem[_2287]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length]
                                stor9[stor8.length] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1147 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2288 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2288] == Mask(32, 224, mem[_2288])
                                    if Mask(32, 224, mem[_2288]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[64] = ceil32(return_data.size) + 97
                    mem[96] = return_data.size
                    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Transfer failed'
                    idx = 0
                    while idx < arg2:
                        if tokenByIndex.length < 4444:
                            _1148 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1148] = 0
                            if not arg1:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length
                            if arg1:
                                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length
                                stor7[stor8.length] = balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1148 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2289 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2289] == Mask(32, 224, mem[_2289])
                                    if Mask(32, 224, mem[_2289]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length]
                                stor9[stor8.length] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1148 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2290 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2290] == Mask(32, 224, mem[_2290])
                                    if Mask(32, 224, mem[_2290]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            else:
                if isPaused:
                    revert with 0, 'Sale Paused'
                if sub_4b2683e4 and arg2 > -1 / sub_4b2683e4:
                    revert with 'NH{q', 17
                if msg.value < sub_4b2683e4 * arg2:
                    revert with 0, 'Insufficient funds to mint.'
                call sub_7879c8bfAddress with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Transfer failed'
                    idx = 0
                    while idx < arg2:
                        if tokenByIndex.length < 4444:
                            _1149 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1149] = 0
                            if not arg1:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length
                            if arg1:
                                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length
                                stor7[stor8.length] = balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1149 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2291 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2291] == Mask(32, 224, mem[_2291])
                                    if Mask(32, 224, mem[_2291]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length]
                                stor9[stor8.length] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1149 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2292 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2292] == Mask(32, 224, mem[_2292])
                                    if Mask(32, 224, mem[_2292]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[64] = ceil32(return_data.size) + 97
                    mem[96] = return_data.size
                    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Transfer failed'
                    idx = 0
                    while idx < arg2:
                        if tokenByIndex.length < 4444:
                            _1150 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1150] = 0
                            if not arg1:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length
                            if arg1:
                                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length
                                stor7[stor8.length] = balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1150 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2293 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2293] == Mask(32, 224, mem[_2293])
                                    if Mask(32, 224, mem[_2293]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length]
                                stor9[stor8.length] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1150 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2294 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2294] == Mask(32, 224, mem[_2294])
                                    if Mask(32, 224, mem[_2294]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
        else:
            if msg.sender == owner:
                call sub_7879c8bfAddress with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Transfer failed'
                    idx = 0
                    while idx < arg2:
                        if tokenByIndex.length < 4444:
                            _1151 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1151] = 0
                            if not arg1:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length
                            if arg1:
                                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length
                                stor7[stor8.length] = balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1151 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2295 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2295] == Mask(32, 224, mem[_2295])
                                    if Mask(32, 224, mem[_2295]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length]
                                stor9[stor8.length] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1151 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2296 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2296] == Mask(32, 224, mem[_2296])
                                    if Mask(32, 224, mem[_2296]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[64] = ceil32(return_data.size) + 97
                    mem[96] = return_data.size
                    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Transfer failed'
                    idx = 0
                    while idx < arg2:
                        if tokenByIndex.length < 4444:
                            _1152 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1152] = 0
                            if not arg1:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length
                            if arg1:
                                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length
                                stor7[stor8.length] = balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1152 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2297 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2297] == Mask(32, 224, mem[_2297])
                                    if Mask(32, 224, mem[_2297]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length]
                                stor9[stor8.length] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1152 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2298 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2298] == Mask(32, 224, mem[_2298])
                                    if Mask(32, 224, mem[_2298]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            else:
                if isPaused:
                    revert with 0, 'Sale Paused'
                if sub_d0c8ead7 and arg2 > -1 / sub_d0c8ead7:
                    revert with 'NH{q', 17
                if msg.value < sub_d0c8ead7 * arg2:
                    revert with 0, 'Insufficient funds to mint.'
                call sub_7879c8bfAddress with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Transfer failed'
                    idx = 0
                    while idx < arg2:
                        if tokenByIndex.length < 4444:
                            _1153 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1153] = 0
                            if not arg1:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length
                            if arg1:
                                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length
                                stor7[stor8.length] = balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1153 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2299 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2299] == Mask(32, 224, mem[_2299])
                                    if Mask(32, 224, mem[_2299]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length]
                                stor9[stor8.length] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1153 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2300 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2300] == Mask(32, 224, mem[_2300])
                                    if Mask(32, 224, mem[_2300]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[64] = ceil32(return_data.size) + 97
                    mem[96] = return_data.size
                    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Transfer failed'
                    idx = 0
                    while idx < arg2:
                        if tokenByIndex.length < 4444:
                            _1154 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1154] = 0
                            if not arg1:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length
                            if arg1:
                                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length
                                stor7[stor8.length] = balanceOf[address(arg1)]
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1154 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2301 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2301] == Mask(32, 224, mem[_2301])
                                    if Mask(32, 224, mem[_2301]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length]
                                stor9[stor8.length] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(arg1)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)]++
                                mem[0] = tokenByIndex.length
                                mem[32] = 2
                                ownerOf[stor8.length] = arg1
                                emit Transfer(0, arg1, tokenByIndex.length);
                                if ext_code.size(arg1) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1154 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                                    _2302 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2302] == Mask(32, 224, mem[_2302])
                                    if Mask(32, 224, mem[_2302]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
    emit 0x5758c4c0: tokenByIndex.length + 1, address(arg1), msg.sender
}



}
