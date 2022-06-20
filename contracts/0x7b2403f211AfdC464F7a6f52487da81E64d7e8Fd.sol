contract main {




// =====================  Runtime code  =====================


array of uint8 stor-12;
array of uint256 stor-13;
array of struct stor0;
array of struct stor1;
address owner;
mapping of uint256 stor11;
array of uint256 stor12;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
uint256 MAX_PER_ADDRESS;
uint256 totalMinted;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function MAX_PER_ADDRESS() payable {
    return MAX_PER_ADDRESS
}

function getTotalMinted() payable {
    return totalMinted
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

function owner() payable {
    return owner
}

function totalMinted() payable {
    return totalMinted
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return ''
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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

function getTokenData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'tokenId between 1 and totalMinted required.'
    if arg1 > totalMinted:
        revert with 0, 'tokenId between 1 and totalMinted required.'
    if arg1 < 1:
        revert with 'NH{q', 17
    if arg1 - 1 >= 20:
        revert with 'NH{q', 50
    if arg1 < 1:
        revert with 'NH{q', 17
    if arg1 - 1 >= 20:
        revert with 'NH{q', 50
    mem[24672] = stor-12[arg1]
    idx = 24672
    s = 0
    while 49248 > idx + 32:
        mem[idx + 32] = stor-12[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[49248] = stor-13[arg1]
    idx = 0
    s = 24672
    t = 49280
    while idx < 768:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return stor-13[arg1], mem[49280 len 24576]
}

function sub_e4fda8ef(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint16(arg2)
    mem[96 len 1536] = call.data[calldata.size len 1536]
    if arg1 <= 0:
        revert with 0, 'tokenId between 1 and totalMinted required.'
    if arg1 > totalMinted:
        revert with 0, 'tokenId between 1 and totalMinted required.'
    mem[64] = 3168
    mem[1632 len 1536] = call.data[calldata.size len 1536]
    if uint16(arg2) and 16 > -1 / uint16(arg2):
        revert with 'NH{q', 17
    if uint16(arg2) and 3 > -1 / 16 * uint16(arg2):
        revert with 'NH{q', 17
    if arg1 < 1:
        revert with 'NH{q', 17
    if var86002 < 48:
        s = var100006
        while arg1 - 1 < 20:
            if 3 * 16 * uint16(arg2) > -s - 1:
                revert with 'NH{q', 17
            if (3 * 16 * uint16(arg2)) + s >= 768:
                revert with 'NH{q', 50
            if s >= 48:
                revert with 'NH{q', 50
            mem[(32 * s) + 1632] = stor((0.03125 / (3 * 16 * uint16(arg2)) + s) + (25 * arg1) - 12)[uint8((3 * 16 * uint16(arg2)) + s)]
            if s == -1:
                revert with 'NH{q', 17
            if arg1 < 1:
                revert with 'NH{q', 17
            if s + 1 < 48:
                s = s + 1
                continue 
            if arg1 - 1 >= 20:
                revert with 'NH{q', 50
            mem[3168] = stor-13[arg1]
            idx = 0
            s = 1632
            t = 3200
            while idx < 48:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return stor-13[arg1], mem[3200 len 1536]
        revert with 'NH{q', 50
    if arg1 - 1 >= 20:
        revert with 'NH{q', 50
    mem[3168] = stor-13[arg1]
    idx = 0
    s = 1632
    t = 3200
    while idx < 48:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return stor-13[arg1], mem[3200 len 1536]
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

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor0.length.field_1):
                if 31 < uint255(stor0.length.field_1):
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor0.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length.field_1)) + 192 len ceil32(uint255(stor0.length.field_1))] = mem[128 len ceil32(uint255(stor0.length.field_1))]
        if ceil32(uint255(stor0.length.field_1)) > uint255(stor0.length.field_1):
            mem[ceil32(uint255(stor0.length.field_1)) + uint255(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))], mem[(2 * ceil32(uint255(stor0.length.field_1))) + 192 len 2 * ceil32(uint255(stor0.length.field_1))]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor0.length.field_1):
            if 31 < uint255(stor0.length.field_1):
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while uint255(stor0.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[ceil32(stor0.length.field_1 % 128) + stor0.length.field_1 % 128 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor1.length.field_1):
                if 31 < uint255(stor1.length.field_1):
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor1.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length.field_1)) + 192 len ceil32(uint255(stor1.length.field_1))] = mem[128 len ceil32(uint255(stor1.length.field_1))]
        if ceil32(uint255(stor1.length.field_1)) > uint255(stor1.length.field_1):
            mem[ceil32(uint255(stor1.length.field_1)) + uint255(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))], mem[(2 * ceil32(uint255(stor1.length.field_1))) + 192 len 2 * ceil32(uint255(stor1.length.field_1))]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor1.length.field_1):
            if 31 < uint255(stor1.length.field_1):
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while uint255(stor1.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[ceil32(stor1.length.field_1 % 128) + stor1.length.field_1 % 128 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
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

function mintPublic() payable {
    if stor11[address(msg.sender)] >= MAX_PER_ADDRESS:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have reached your minting limit.'
    if totalMinted >= 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There are no more NFTs for public minting.'
    if totalMinted > -2:
        revert with 'NH{q', 17
    if stor11[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    stor11[address(msg.sender)]++
    if totalMinted > -2:
        revert with 'NH{q', 17
    totalMinted++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor513 + 1]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor513 + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = totalMinted + 1
    if msg.sender:
        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = totalMinted + 1
        stor7[stor513 + 1] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[stor513 + 1] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[stor513 + 1]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor513 + 1]
        stor9[stor513 + 1] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor513 + 1] = msg.sender
    emit Transfer(0, msg.sender, totalMinted + 1);
    if ext_code.size(msg.sender) <= 0:
        if totalMinted + 1 < 1:
            revert with 'NH{q', 17
        mem[128] = 60
        mem[160] = 63
        mem[192] = 66
        mem[224] = 69
        mem[256] = 72
        mem[288] = 75
        mem[320] = 78
        mem[352] = 81
        mem[384] = 108
        mem[416] = 129
        mem[448] = 153
        mem[480] = 156
        mem[512] = 159
        mem[544] = 162
        mem[576] = 165
        mem[608] = 168
        mem[640] = 171
        mem[672] = 174
        mem[704] = 177
        mem[736] = 180
        mem[768] = 201
        mem[800] = 213
        mem[832] = 216
        mem[864] = 228
        mem[896] = 249
        mem[928] = 261
        mem[960] = 264
        mem[992] = 276
        mem[1024] = 297
        mem[1056] = 300
        mem[1088] = 306
        mem[1120] = 312
        mem[1152] = 321
        mem[1184] = 324
        mem[1216] = 345
        mem[1248] = 348
        mem[1280] = 351
        mem[1312] = 360
        mem[1344] = 363
        mem[1376] = 366
        mem[1408] = 369
        mem[1440] = 372
        mem[1472] = 393
        mem[1504] = 396
        mem[1536] = 399
        mem[1568] = 405
        mem[1600] = 408
        mem[1632] = 411
        mem[1664] = 414
        mem[1696] = 417
        mem[1728] = 420
        mem[1760] = 441
        mem[1792] = 444
        mem[1824] = 447
        mem[1856] = 450
        mem[1888] = 456
        mem[1920] = 459
        mem[1952] = 462
        mem[1984] = 465
        mem[2016] = 468
        mem[2048] = 489
        mem[2080] = 492
        mem[2112] = 501
        mem[2144] = 504
        mem[2176] = 513
        mem[2208] = 516
        mem[2240] = 537
        mem[2272] = 564
        mem[2304] = 585
        mem[2336] = 588
        mem[2368] = 609
        mem[2400] = 612
        mem[2432] = 633
        mem[2464] = 636
        mem[2496] = 639
        mem[2528] = 642
        mem[2560] = 645
        mem[2592] = 648
        mem[2624] = 651
        mem[2656] = 654
        mem[2688] = 657
        mem[2720] = 660
        if totalMinted >= 20:
            revert with 'NH{q', 50
        stor12[stor513] = 'PixelPerfect0-16x16'
        if block.number < 1:
            revert with 'NH{q', 17
        mem[2752] = uint8(uint8(block.hash(block.number - 1)) % 255)
        mem[2784] = uint8(uint16(block.hash(block.number - 1)) / 256 % 255)
        mem[2816] = uint8(Mask(8, 16, block.hash(block.number - 1)) >> 16 % 255)
        idx = 0
        while idx < 82:
            s = 0
            while s < 3:
                if totalMinted >= 20:
                    revert with 'NH{q', 50
                if idx >= 82:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 158 len 2] > -s - 1:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + 158 len 2] + s >= 768:
                    revert with 'NH{q', 50
                stor[(0.03125 / mem[(32 * idx) + 158 len 2] + s) + (25 * stor513) + 13] = mem[(32 * s) + 2783 len 1] * 256^(mem[(32 * idx) + 158 len 2] + s % 32) or !(255 * 256^(mem[(32 * idx) + 158 len 2] + s % 32)) and stor[(0.03125 / mem[(32 * idx) + 158 len 2] + s) + (25 * stor513) + 13]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[132] = msg.sender
        mem[164] = 0
        mem[196] = totalMinted + 1
        mem[228] = 128
        mem[260] = 0
        mem[292 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, totalMinted + 1, 128, 0
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
        if totalMinted + 1 < 1:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 128] = 60
        mem[ceil32(return_data.size) + 160] = 63
        mem[ceil32(return_data.size) + 192] = 66
        mem[ceil32(return_data.size) + 224] = 69
        mem[ceil32(return_data.size) + 256] = 72
        mem[ceil32(return_data.size) + 288] = 75
        mem[ceil32(return_data.size) + 320] = 78
        mem[ceil32(return_data.size) + 352] = 81
        mem[ceil32(return_data.size) + 384] = 108
        mem[ceil32(return_data.size) + 416] = 129
        mem[ceil32(return_data.size) + 448] = 153
        mem[ceil32(return_data.size) + 480] = 156
        mem[ceil32(return_data.size) + 512] = 159
        mem[ceil32(return_data.size) + 544] = 162
        mem[ceil32(return_data.size) + 576] = 165
        mem[ceil32(return_data.size) + 608] = 168
        mem[ceil32(return_data.size) + 640] = 171
        mem[ceil32(return_data.size) + 672] = 174
        mem[ceil32(return_data.size) + 704] = 177
        mem[ceil32(return_data.size) + 736] = 180
        mem[ceil32(return_data.size) + 768] = 201
        mem[ceil32(return_data.size) + 800] = 213
        mem[ceil32(return_data.size) + 832] = 216
        mem[ceil32(return_data.size) + 864] = 228
        mem[ceil32(return_data.size) + 896] = 249
        mem[ceil32(return_data.size) + 928] = 261
        mem[ceil32(return_data.size) + 960] = 264
        mem[ceil32(return_data.size) + 992] = 276
        mem[ceil32(return_data.size) + 1024] = 297
        mem[ceil32(return_data.size) + 1056] = 300
        mem[ceil32(return_data.size) + 1088] = 306
        mem[ceil32(return_data.size) + 1120] = 312
        mem[ceil32(return_data.size) + 1152] = 321
        mem[ceil32(return_data.size) + 1184] = 324
        mem[ceil32(return_data.size) + 1216] = 345
        mem[ceil32(return_data.size) + 1248] = 348
        mem[ceil32(return_data.size) + 1280] = 351
        mem[ceil32(return_data.size) + 1312] = 360
        mem[ceil32(return_data.size) + 1344] = 363
        mem[ceil32(return_data.size) + 1376] = 366
        mem[ceil32(return_data.size) + 1408] = 369
        mem[ceil32(return_data.size) + 1440] = 372
        mem[ceil32(return_data.size) + 1472] = 393
        mem[ceil32(return_data.size) + 1504] = 396
        mem[ceil32(return_data.size) + 1536] = 399
        mem[ceil32(return_data.size) + 1568] = 405
        mem[ceil32(return_data.size) + 1600] = 408
        mem[ceil32(return_data.size) + 1632] = 411
        mem[ceil32(return_data.size) + 1664] = 414
        mem[ceil32(return_data.size) + 1696] = 417
        mem[ceil32(return_data.size) + 1728] = 420
        mem[ceil32(return_data.size) + 1760] = 441
        mem[ceil32(return_data.size) + 1792] = 444
        mem[ceil32(return_data.size) + 1824] = 447
        mem[ceil32(return_data.size) + 1856] = 450
        mem[ceil32(return_data.size) + 1888] = 456
        mem[ceil32(return_data.size) + 1920] = 459
        mem[ceil32(return_data.size) + 1952] = 462
        mem[ceil32(return_data.size) + 1984] = 465
        mem[ceil32(return_data.size) + 2016] = 468
        mem[ceil32(return_data.size) + 2048] = 489
        mem[ceil32(return_data.size) + 2080] = 492
        mem[ceil32(return_data.size) + 2112] = 501
        mem[ceil32(return_data.size) + 2144] = 504
        mem[ceil32(return_data.size) + 2176] = 513
        mem[ceil32(return_data.size) + 2208] = 516
        mem[ceil32(return_data.size) + 2240] = 537
        mem[ceil32(return_data.size) + 2272] = 564
        mem[ceil32(return_data.size) + 2304] = 585
        mem[ceil32(return_data.size) + 2336] = 588
        mem[ceil32(return_data.size) + 2368] = 609
        mem[ceil32(return_data.size) + 2400] = 612
        mem[ceil32(return_data.size) + 2432] = 633
        mem[ceil32(return_data.size) + 2464] = 636
        mem[ceil32(return_data.size) + 2496] = 639
        mem[ceil32(return_data.size) + 2528] = 642
        mem[ceil32(return_data.size) + 2560] = 645
        mem[ceil32(return_data.size) + 2592] = 648
        mem[ceil32(return_data.size) + 2624] = 651
        mem[ceil32(return_data.size) + 2656] = 654
        mem[ceil32(return_data.size) + 2688] = 657
        mem[ceil32(return_data.size) + 2720] = 660
        if totalMinted >= 20:
            revert with 'NH{q', 50
        stor12[stor513] = 'PixelPerfect0-16x16'
        if block.number < 1:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 2752] = uint8(uint8(block.hash(block.number - 1)) % 255)
        mem[ceil32(return_data.size) + 2784] = uint8(uint16(block.hash(block.number - 1)) / 256 % 255)
        mem[ceil32(return_data.size) + 2816] = uint8(Mask(8, 16, block.hash(block.number - 1)) >> 16 % 255)
        idx = 0
        while idx < 82:
            s = 0
            while s < 3:
                if totalMinted >= 20:
                    revert with 'NH{q', 50
                if idx >= 82:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(return_data.size) + 158 len 2] > -s - 1:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + ceil32(return_data.size) + 158 len 2] + s >= 768:
                    revert with 'NH{q', 50
                stor[(0.03125 / mem[(32 * idx) + ceil32(return_data.size) + 158 len 2] + s) + (25 * stor513) + 13] = mem[(32 * s) + ceil32(return_data.size) + 2783 len 1] * 256^(mem[(32 * idx) + ceil32(return_data.size) + 158 len 2] + s % 32) or !(255 * 256^(mem[(32 * idx) + ceil32(return_data.size) + 158 len 2] + s % 32)) and stor[(0.03125 / mem[(32 * idx) + ceil32(return_data.size) + 158 len 2] + s) + (25 * stor513) + 13]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
