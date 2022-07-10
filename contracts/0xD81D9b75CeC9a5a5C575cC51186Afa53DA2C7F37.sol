contract main {




// =====================  Runtime code  =====================


#
#  - sub_089c9140(?)
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
uint8 paused;
address owner; offset 8
uint256 stor12;
uint256 maxSupply;
uint256 price;

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
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
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

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function setMaxSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxSupply = arg1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
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

function sub_86a9ba37(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    if paused:
        revert with 0, 'Pausable: paused'
    stor9[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    if address(arg1):
        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = arg2
        stor7[arg2] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg2] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg2]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg2]
        stor9[arg2] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[arg2] = address(arg1)
    emit Transfer(0, address(arg1), arg2);
    if ext_code.size(address(arg1)) > 0:
        require ext_code.size(address(arg1))
        call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, arg2, 128, 0
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
    if paused:
        revert with 0, 'Pausable: paused'
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
    if paused:
        revert with 0, 'Pausable: paused'
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
    if paused:
        revert with 0, 'Pausable: paused'
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

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if paused:
        revert with 0, 'Pausable: paused'
    if not ownerOf[arg1]:
        stor9[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
    else:
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

function sub_a58ecfa4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if arg2 >= 6:
        revert with 0, 'You can mint a maximum of 10'
    if price and arg2 > -1 / price:
        revert with 'NH{q', 17
    if msg.value and arg2 > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value * arg2 < price * arg2:
        revert with 0, 'not enough price'
    if tokenByIndex.length > -arg2 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg2 > maxSupply:
        revert with 0, 'Exceeds maximum supply'
    idx = 0
    while idx < arg2:
        stor12++
        _97 = mem[64]
        mem[64] = mem[64] + 32
        mem[_97] = 0
        if not address(arg1):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor12]:
            revert with 0, 'ERC721: token already minted'
        if paused:
            revert with 0, 'Pausable: paused'
        stor9[stor12] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor12
        if address(arg1):
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor12
            stor7[stor12] = balanceOf[address(arg1)]
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = stor12
            mem[32] = 2
            ownerOf[stor12] = address(arg1)
            emit Transfer(0, address(arg1), stor12);
            if ext_code.size(address(arg1)) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_97 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(arg1))
                call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = stor12
            mem[32] = 2
            ownerOf[stor12] = address(arg1)
            emit Transfer(0, address(arg1), stor12);
            if ext_code.size(address(arg1)) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_97 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(arg1))
                call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
}

function mint(address[] arg1, uint256[] arg2) payable {
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
    mem[64] = floor32(arg1.length) + floor32(arg2.length) + 98
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
    if arg1.length >= 6:
        revert with 0, 'You can mint a maximum of 10'
    if price and arg1.length > -1 / price:
        revert with 'NH{q', 17
    if msg.value and arg1.length > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value * arg1.length < price * arg1.length:
        revert with 0, 'not enough price'
    if tokenByIndex.length > -arg1.length - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1.length > maxSupply:
        revert with 0, 'Exceeds maximum supply'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _321 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        _323 = mem[(32 * idx) + floor32(arg1.length) + 129]
        _324 = mem[64]
        mem[64] = mem[64] + 32
        mem[_324] = 0
        if not address(_321):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[_323]:
            revert with 0, 'ERC721: token already minted'
        if paused:
            revert with 0, 'Pausable: paused'
        stor9[_323] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = _323
        if address(_321):
            tokenOfOwnerByIndex[address(_321)][stor3[address(_321)]] = _323
            stor7[_323] = balanceOf[address(_321)]
            if balanceOf[address(_321)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(_321)]++
            mem[0] = _323
            mem[32] = 2
            ownerOf[_323] = address(_321)
            emit Transfer(0, address(_321), _323);
            if ext_code.size(address(_321)) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = _323
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_324 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(_321))
                call address(_321).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, _323, 128, 0
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
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_420] == Mask(32, 224, mem[_420])
                if Mask(32, 224, mem[_420]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[_323] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[_323]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[_323]
            stor9[_323] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(_321)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(_321)]++
            mem[0] = _323
            mem[32] = 2
            ownerOf[_323] = address(_321)
            emit Transfer(0, address(_321), _323);
            if ext_code.size(address(_321)) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = _323
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_324 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(_321))
                call address(_321).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, _323, 128, 0
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
                _421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_421] == Mask(32, 224, mem[_421])
                if Mask(32, 224, mem[_421]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if not stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_0:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1:
                if 31 >= stor10[arg1].field_1:
                    mem[128] = 256 * stor10[arg1].field_8
                else:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1:
                if 31 >= stor10[arg1].field_1:
                    mem[128] = 256 * stor10[arg1].field_8
                else:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor10[arg1].field_1 > 0:
            mem[ceil32(stor10[arg1].field_1) + 288 len 96] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d66426245765a34565167616a796a5a54746d61516d4531555164394e737a4a6b5456476f564b4e6441577838, mem[ceil32(stor10[arg1].field_1) + 241 len 15]
            mem[ceil32(stor10[arg1].field_1) + 369] = 0
            mem[ceil32(stor10[arg1].field_1) + 369 len ceil32(stor10[arg1].field_1)] = mem[128 len ceil32(stor10[arg1].field_1)]
            mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 369] = 32
            mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 401] = mem[ceil32(stor10[arg1].field_1) + 256]
            mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 433 len ceil32(mem[ceil32(stor10[arg1].field_1) + 256])] = mem[ceil32(stor10[arg1].field_1) + 288 len ceil32(mem[ceil32(stor10[arg1].field_1) + 256])]
            if ceil32(mem[ceil32(stor10[arg1].field_1) + 256]) <= mem[ceil32(stor10[arg1].field_1) + 256]:
                return Array(len=mem[ceil32(stor10[arg1].field_1) + 256], data=mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 433 len ceil32(mem[ceil32(stor10[arg1].field_1) + 256])]), 
            mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + mem[ceil32(stor10[arg1].field_1) + 256] + 433] = 0
            return 32, mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 401 len ceil32(mem[ceil32(stor10[arg1].field_1) + 256]) + 32], 
        if not ownerOf[arg1]:
            revert with 0, 'ERC721Metadata: URI query for nonexistent token'
        if not arg1:
            mem[ceil32(stor10[arg1].field_1) + 480 len 96] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d66426245765a34565167616a796a5a54746d61516d4531555164394e737a4a6b5456476f564b4e6441577838, mem[ceil32(stor10[arg1].field_1) + 369 len 15]
            mem[ceil32(stor10[arg1].field_1) + 561] = '0'
            mem[ceil32(stor10[arg1].field_1) + 562] = '.json'
            mem[ceil32(stor10[arg1].field_1) + 567] = 32
            mem[ceil32(stor10[arg1].field_1) + 599] = mem[ceil32(stor10[arg1].field_1) + 448]
            mem[ceil32(stor10[arg1].field_1) + 631 len ceil32(mem[ceil32(stor10[arg1].field_1) + 448])] = mem[ceil32(stor10[arg1].field_1) + 480 len ceil32(mem[ceil32(stor10[arg1].field_1) + 448])]
            if ceil32(mem[ceil32(stor10[arg1].field_1) + 448]) > mem[ceil32(stor10[arg1].field_1) + 448]:
                mem[ceil32(stor10[arg1].field_1) + mem[ceil32(stor10[arg1].field_1) + 448] + 631] = 0
            return Array(len=mem[ceil32(stor10[arg1].field_1) + 448], data=mem[ceil32(stor10[arg1].field_1) + 631 len ceil32(mem[ceil32(stor10[arg1].field_1) + 448])]), 
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
        mem[ceil32(stor10[arg1].field_1) + 384] = s
        if s:
            mem[ceil32(stor10[arg1].field_1) + 416 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor10[arg1].field_1) + 384]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor10[arg1].field_1) + 415 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 448 len 96] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d66426245765a34565167616a796a5a54746d61516d4531555164394e737a4a6b5456476f564b4e6441577838, mem[ceil32(stor10[arg1].field_1) + 369 len 15]
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 529] = 0
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 529 len ceil32(mem[ceil32(stor10[arg1].field_1) + 384])] = mem[ceil32(stor10[arg1].field_1) + 416 len ceil32(mem[ceil32(stor10[arg1].field_1) + 384])]
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 384] + 529] = '.json'
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 384] + 534] = 32
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 384] + 566] = mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416]
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 384] + 598 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416])] = mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 448 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416])]
        if ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416]) > mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416]:
            mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 384] + mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416] + 598] = 0
        return Array(len=mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416], data=mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 384] + 598 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416])]), 
    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor10[arg1].field_1
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if 31 >= stor10[arg1].field_1:
                mem[128] = 256 * stor10[arg1].field_8
            else:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if 31 >= stor10[arg1].field_1:
                mem[128] = 256 * stor10[arg1].field_8
            else:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor10[arg1].field_1 > 0:
        mem[ceil32(stor10[arg1].field_1) + 288 len 96] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d66426245765a34565167616a796a5a54746d61516d4531555164394e737a4a6b5456476f564b4e6441577838, mem[ceil32(stor10[arg1].field_1) + 241 len 15]
        mem[ceil32(stor10[arg1].field_1) + 369] = 0
        mem[ceil32(stor10[arg1].field_1) + 369 len ceil32(stor10[arg1].field_1)] = mem[128 len ceil32(stor10[arg1].field_1)]
        mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 369] = 32
        mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 401] = mem[ceil32(stor10[arg1].field_1) + 256]
        mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 433 len ceil32(mem[ceil32(stor10[arg1].field_1) + 256])] = mem[ceil32(stor10[arg1].field_1) + 288 len ceil32(mem[ceil32(stor10[arg1].field_1) + 256])]
        if ceil32(mem[ceil32(stor10[arg1].field_1) + 256]) > mem[ceil32(stor10[arg1].field_1) + 256]:
            mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + mem[ceil32(stor10[arg1].field_1) + 256] + 433] = 0
        return Array(len=mem[ceil32(stor10[arg1].field_1) + 256], data=mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 433 len ceil32(mem[ceil32(stor10[arg1].field_1) + 256])]), 
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'ERC721Metadata: URI query for nonexistent token'
    if not arg1:
        mem[ceil32(stor10[arg1].field_1) + 480 len 96] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d66426245765a34565167616a796a5a54746d61516d4531555164394e737a4a6b5456476f564b4e6441577838, mem[ceil32(stor10[arg1].field_1) + 369 len 15]
        mem[ceil32(stor10[arg1].field_1) + 561] = '0'
        mem[ceil32(stor10[arg1].field_1) + 562] = '.json'
        mem[ceil32(stor10[arg1].field_1) + 567] = 32
        mem[ceil32(stor10[arg1].field_1) + 599] = mem[ceil32(stor10[arg1].field_1) + 448]
        mem[ceil32(stor10[arg1].field_1) + 631 len ceil32(mem[ceil32(stor10[arg1].field_1) + 448])] = mem[ceil32(stor10[arg1].field_1) + 480 len ceil32(mem[ceil32(stor10[arg1].field_1) + 448])]
        if ceil32(mem[ceil32(stor10[arg1].field_1) + 448]) > mem[ceil32(stor10[arg1].field_1) + 448]:
            mem[ceil32(stor10[arg1].field_1) + mem[ceil32(stor10[arg1].field_1) + 448] + 631] = 0
        return Array(len=mem[ceil32(stor10[arg1].field_1) + 448], data=mem[ceil32(stor10[arg1].field_1) + 631 len ceil32(mem[ceil32(stor10[arg1].field_1) + 448])]), 
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
    mem[ceil32(stor10[arg1].field_1) + 384] = s
    if s:
        mem[ceil32(stor10[arg1].field_1) + 416 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor10[arg1].field_1) + 384]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor10[arg1].field_1) + 415 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 448 len 96] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d66426245765a34565167616a796a5a54746d61516d4531555164394e737a4a6b5456476f564b4e6441577838, mem[ceil32(stor10[arg1].field_1) + 369 len 15]
    mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 529] = 0
    mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 529 len ceil32(mem[ceil32(stor10[arg1].field_1) + 384])] = mem[ceil32(stor10[arg1].field_1) + 416 len ceil32(mem[ceil32(stor10[arg1].field_1) + 384])]
    mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 384] + 529] = '.json'
    mem[64] = ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 384] + 534
    mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 384] + 534] = 32
    mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 384] + 566] = mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416]
    mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 384] + 598 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416])] = mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 448 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416])]
    if ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416]) > mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416]:
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 384] + mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416] + 598] = 0
    return Array(len=mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416], data=mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 384] + 598 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 416])]), 
}



}
