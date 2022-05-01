contract main {




// =====================  Runtime code  =====================


#
#  - sub_089c9140(?)
#  - sub_89fde7af(?)
#  - tokenURI(uint256 arg1)
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
mapping of struct stor10;
address owner;
mapping of uint256 sub_023f1532;
mapping of uint256 sub_121f6a3a;
uint256 stor14;
uint256 sub_7dd066db;
mapping of uint256 sub_eb34080d;
mapping of struct stor17;

function sub_023f1532(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_023f1532[arg1]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_121f6a3a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_121f6a3a[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_7dd066db(?) payable {
    return sub_7dd066db
}

function owner() payable {
    return owner
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_eb34080d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_eb34080d[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function supportsInterface(bytes4 arg1) payable {
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

function approve(address arg1, uint256 arg2) payable {
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

function sub_27b4e77d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not address(arg1):
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

function createNFT(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length <= 0:
        revert with 0, 'tokenURI can not be empty'
    sub_7dd066db++
    if stor17[stor15].field_0:
        if stor17[stor15].field_0 == stor17[stor15].field_1 < 32:
            revert with 'NH{q', 34
        if not arg1.length:
            stor17[stor15].field_0 = 0
            idx = 0
            while stor17[stor15].field_1 + 31 / 32 > idx:
                stor17[stor15][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor17[stor15].field_0 = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor17[stor15][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor17[stor15].field_1 + 31 / 32 > idx:
                stor17[stor15][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor17[stor15].field_0 == stor17[stor15].field_1 < 32:
            revert with 'NH{q', 34
        if not arg1.length:
            stor17[stor15].field_0 = 0
            idx = 0
            while stor17[stor15].field_1 + 31 / 32 > idx:
                stor17[stor15][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor17[stor15].field_0 = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor17[stor15][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor17[stor15].field_1 + 31 / 32 > idx:
                stor17[stor15][idx].field_0 = 0
                idx = idx + 1
                continue 
    return sub_7dd066db
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function name() payable {
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

function symbol() payable {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_023f1532[stor16[arg1]] < 1:
        revert with 'NH{q', 17
    sub_023f1532[stor16[arg1]]--
    if sub_121f6a3a[stor16[arg1]] > -2:
        revert with 'NH{q', 17
    sub_121f6a3a[stor16[arg1]]++
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    if stor7[arg1] != balanceOf[stor2[arg1]] - 1:
        tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
        stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
    stor7[arg1] = 0
    tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor9[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    stor9[stor8[stor8.length]] = stor9[arg1]
    stor9[arg1] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1:
                    idx = 0
                    while stor10[arg1].field_1 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1:
                    idx = 0
                    while stor10[arg1].field_1 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1:
                    idx = 0
                    while stor10[arg1].field_1 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1:
                    idx = 0
                    while stor10[arg1].field_1 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function sub_805a0cef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor17[arg1].field_0:
        if stor17[arg1].field_0 == stor17[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor17[arg1].field_0:
            if stor17[arg1].field_0 == stor17[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[arg1].field_1:
                if 31 < stor17[arg1].field_1:
                    mem[128] = stor17[arg1].field_0
                    idx = 128
                    s = 0
                    while stor17[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor17[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17[arg1].field_1), data=mem[128 len ceil32(stor17[arg1].field_1)])
                mem[128] = 256 * stor17[arg1].field_8
        else:
            if stor17[arg1].field_0 == stor17[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[arg1].field_1:
                if 31 < stor17[arg1].field_1:
                    mem[128] = stor17[arg1].field_0
                    idx = 128
                    s = 0
                    while stor17[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor17[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17[arg1].field_1), data=mem[128 len ceil32(stor17[arg1].field_1)])
                mem[128] = 256 * stor17[arg1].field_8
        mem[ceil32(stor17[arg1].field_1) + 192 len ceil32(stor17[arg1].field_1)] = mem[128 len ceil32(stor17[arg1].field_1)]
        if ceil32(stor17[arg1].field_1) > stor17[arg1].field_1:
            mem[ceil32(stor17[arg1].field_1) + stor17[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor17[arg1].field_1), data=mem[128 len ceil32(stor17[arg1].field_1)], mem[(2 * ceil32(stor17[arg1].field_1)) + 192 len 2 * ceil32(stor17[arg1].field_1)]), 
    if stor17[arg1].field_0 == stor17[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor17[arg1].field_0:
        if stor17[arg1].field_0 == stor17[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor17[arg1].field_1:
            if 31 < stor17[arg1].field_1:
                mem[128] = stor17[arg1].field_0
                idx = 128
                s = 0
                while stor17[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor17[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17[arg1].field_0, data=mem[128 len ceil32(stor17[arg1].field_1)])
            mem[128] = 256 * stor17[arg1].field_8
    else:
        if stor17[arg1].field_0 == stor17[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor17[arg1].field_1:
            if 31 < stor17[arg1].field_1:
                mem[128] = stor17[arg1].field_0
                idx = 128
                s = 0
                while stor17[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor17[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17[arg1].field_0, data=mem[128 len ceil32(stor17[arg1].field_1)])
            mem[128] = 256 * stor17[arg1].field_8
    mem[ceil32(stor17[arg1].field_1) + 192 len ceil32(stor17[arg1].field_1)] = mem[128 len ceil32(stor17[arg1].field_1)]
    if ceil32(stor17[arg1].field_1) > stor17[arg1].field_1:
        mem[ceil32(stor17[arg1].field_1) + stor17[arg1].field_1 + 192] = 0
    return Array(len=stor17[arg1].field_0, data=mem[128 len ceil32(stor17[arg1].field_1)], mem[(2 * ceil32(stor17[arg1].field_1)) + 192 len 2 * ceil32(stor17[arg1].field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor17[arg2].field_0:
        if stor17[arg2].field_0 == stor17[arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor17[arg2].field_0:
            if stor17[arg2].field_0 == stor17[arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[arg2].field_1:
                if 31 >= stor17[arg2].field_1:
                    mem[128] = 256 * stor17[arg2].field_8
                else:
                    mem[128] = stor17[arg2].field_0
                    idx = 128
                    s = 0
                    while stor17[arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor17[arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor17[arg2].field_0 == stor17[arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[arg2].field_1:
                if 31 >= stor17[arg2].field_1:
                    mem[128] = 256 * stor17[arg2].field_8
                else:
                    mem[128] = stor17[arg2].field_0
                    idx = 128
                    s = 0
                    while stor17[arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor17[arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor17[arg2].field_1 <= 0:
            revert with 0, 'nonexistent NFTId'
        stor14++
        sub_eb34080d[stor14] = arg2
        if sub_023f1532[arg2] > -2:
            revert with 'NH{q', 17
        sub_023f1532[arg2]++
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor14]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor14] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor14
        if arg1:
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor14
            stor7[stor14] = balanceOf[address(arg1)]
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor14] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor14]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor14]
            stor9[stor14] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(arg1)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(arg1)]++
        ownerOf[stor14] = arg1
        emit Transfer(0, arg1, stor14);
        if not ownerOf[stor14]:
            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
        if stor10[stor14].field_0:
            if stor10[stor14].field_0 == stor10[stor14].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[arg2].field_1:
                stor10[stor14][].field_0 = Array(len=stor17[arg2].field_1, data=mem[128 len stor17[arg2].field_1])
            else:
                stor10[stor14].field_0 = 0
                idx = 0
                while stor10[stor14].field_1 + 31 / 32 > idx:
                    stor10[stor14][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor10[stor14].field_0 == stor10[stor14].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[arg2].field_1:
                stor10[stor14][].field_0 = Array(len=stor17[arg2].field_1, data=mem[128 len stor17[arg2].field_1])
            else:
                stor10[stor14].field_0 = 0
                idx = 0
                while stor10[stor14].field_1 + 31 / 32 > idx:
                    stor10[stor14][idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if stor17[arg2].field_0 == stor17[arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor17[arg2].field_0:
            if stor17[arg2].field_0 == stor17[arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[arg2].field_1:
                if 31 >= stor17[arg2].field_1:
                    mem[128] = 256 * stor17[arg2].field_8
                else:
                    mem[128] = stor17[arg2].field_0
                    idx = 128
                    s = 0
                    while stor17[arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor17[arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor17[arg2].field_0 == stor17[arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[arg2].field_1:
                if 31 >= stor17[arg2].field_1:
                    mem[128] = 256 * stor17[arg2].field_8
                else:
                    mem[128] = stor17[arg2].field_0
                    idx = 128
                    s = 0
                    while stor17[arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor17[arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor17[arg2].field_1 <= 0:
            revert with 0, 'nonexistent NFTId'
        stor14++
        sub_eb34080d[stor14] = arg2
        if sub_023f1532[arg2] > -2:
            revert with 'NH{q', 17
        sub_023f1532[arg2]++
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor14]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor14] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor14
        if arg1:
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor14
            stor7[stor14] = balanceOf[address(arg1)]
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor14] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor14]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor14]
            stor9[stor14] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(arg1)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(arg1)]++
        ownerOf[stor14] = arg1
        emit Transfer(0, arg1, stor14);
        if not ownerOf[stor14]:
            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
        if stor10[stor14].field_0:
            if stor10[stor14].field_0 == stor10[stor14].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[arg2].field_1:
                stor10[stor14][].field_0 = Array(len=stor17[arg2].field_1, data=mem[128 len stor17[arg2].field_1])
            else:
                stor10[stor14].field_0 = 0
                idx = 0
                while stor10[stor14].field_1 + 31 / 32 > idx:
                    stor10[stor14][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor10[stor14].field_0 == stor10[stor14].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[arg2].field_1:
                stor10[stor14][].field_0 = Array(len=stor17[arg2].field_1, data=mem[128 len stor17[arg2].field_1])
            else:
                stor10[stor14].field_0 = 0
                idx = 0
                while stor10[stor14].field_1 + 31 / 32 > idx:
                    stor10[stor14][idx].field_0 = 0
                    idx = idx + 1
                    continue 
    return stor14
}



}
