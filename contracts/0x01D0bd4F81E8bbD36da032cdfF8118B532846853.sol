contract main {




// =====================  Runtime code  =====================


#
#  - sub_95fe4a9e(?)
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
uint256 stor10;
address owner;
array of struct stor14;

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

function ownerClaim(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Token ID invalid'
    if arg1 >= 11:
        revert with 0, 'Token ID invalid'
    if not owner:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg1]:
        revert with 0, 'ERC721: token already minted'
    stor9[arg1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg1
    if owner:
        tokenOfOwnerByIndex[stor11][stor3[stor11]] = arg1
        stor7[arg1] = balanceOf[stor11]
    else:
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
    if balanceOf[stor11] > -2:
        revert with 'NH{q', 17
    balanceOf[stor11]++
    ownerOf[arg1] = owner
    emit Transfer(0, owner, arg1);
    if ext_code.size(owner) > 0:
        require ext_code.size(owner)
        call owner.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, arg1, 128, 0
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
    stor10 = 1
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if 33 * 10^18 != msg.value:
        revert with 0, 'Cost is 33'
    if arg1 <= 0:
        revert with 0, 'Token ID invalid'
    if arg1 >= 3334:
        revert with 0, 'Token ID invalid'
    call 0xdcc59738482b9e435571cca828b02b6e3809dac2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg1]:
        revert with 0, 'ERC721: token already minted'
    stor9[arg1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg1
    if msg.sender:
        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = arg1
        stor7[arg1] = balanceOf[address(msg.sender)]
    else:
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
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(0, msg.sender, arg1);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, arg1, 128, 0
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
    stor10 = 1
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

function sub_ddbffdfd(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(ceil32(arg2.length)) + 129] = 'HEAD:'
    mem[ceil32(ceil32(arg2.length)) + 134 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(ceil32(arg2.length)) + 97] = arg2.length + 5
    mem[64] = ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor14.length) + 166
    mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] = stor14.length
    if ceil32(arg2.length) <= arg2.length:
        s = ceil32(ceil32(arg2.length)) + arg2.length + 166
        idx = 0
        while idx < stor14.length:
            mem[0] = 14
            if stor14[idx].field_0:
                if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                    revert with 'NH{q', 34
                _494 = mem[64]
                mem[64] = mem[64] + ceil32(stor14[idx].field_1) + 32
                mem[_494] = stor14[idx].field_1
                if stor14[idx].field_0:
                    if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor14[idx].field_1:
                        if 31 >= stor14[idx].field_1:
                            mem[_494 + 32] = 256 * stor14[idx].field_8
                        else:
                            mem[0] = sha3(14) + idx
                            mem[_494 + 32] = stor14[idx].field_0
                            t = _494 + 32
                            u = sha3(mem[0])
                            while _494 + stor14[idx].field_1 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _494
                    s = s + 32
                    idx = idx + 1
                    continue 
                if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor14[idx].field_1:
                    mem[s] = _494
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor14[idx].field_1:
                    mem[_494 + 32] = 256 * stor14[idx].field_8
                    mem[s] = _494
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(14) + idx
                mem[_494 + 32] = stor14[idx].field_0
                t = _494 + 32
                u = sha3(mem[0])
                while _494 + stor14[u].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _494
                t = t + 32
                u = u + 1
                continue 
            if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                revert with 'NH{q', 34
            _497 = mem[64]
            mem[64] = mem[64] + ceil32(stor14[idx].field_1) + 32
            mem[_497] = stor14[idx].field_1
            if stor14[idx].field_0:
                if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor14[idx].field_1:
                    mem[s] = _497
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor14[idx].field_1:
                    mem[_497 + 32] = 256 * stor14[idx].field_8
                    mem[s] = _497
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(14) + idx
                mem[_497 + 32] = stor14[idx].field_0
                t = _497 + 32
                u = sha3(mem[0])
                while _497 + stor14[u].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _497
                t = t + 32
                u = u + 1
                continue 
            if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                revert with 'NH{q', 34
            if stor14[idx].field_1:
                if 31 >= stor14[idx].field_1:
                    mem[_497 + 32] = 256 * stor14[idx].field_8
                else:
                    mem[0] = sha3(14) + idx
                    mem[_497 + 32] = stor14[idx].field_0
                    t = _497 + 32
                    u = sha3(mem[0])
                    while _497 + stor14[idx].field_1 > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _497
            s = s + 32
            idx = idx + 1
            continue 
        if not arg1:
            _492 = mem[64]
            mem[64] = mem[64] + 64
            mem[_492] = 1
            mem[_492 + 32] = '0'
            _496 = mem[64]
            _500 = mem[ceil32(ceil32(arg2.length)) + 97]
            mem[mem[64] + 32 len ceil32(mem[ceil32(ceil32(arg2.length)) + 97])] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(mem[ceil32(ceil32(arg2.length)) + 97])]
            mem[mem[64] + _500 + 32] = '0'
            mem[mem[64] + _500 + 33] = 0
            if ceil32(_500) <= _500:
                _1411 = mem[64]
                mem[mem[64]] = _500 + 1
                mem[64] = mem[64] + _500 + 33
                _1428 = mem[_1411]
                mem[_496 + _500 + 65 len ceil32(mem[_1411])] = mem[_1411 + 32 len ceil32(mem[_1411])]
                if ceil32(_1428) <= _1428:
                    mem[_496 + _500 + 33] = _1428
                    mem[64] = _496 + _500 + _1428 + 65
                    if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                        revert with 'NH{q', 18
                    if sha3(mem[_496 + _500 + 65 len _1428]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                        revert with 'NH{q', 50
                    _2158 = mem[(32 * sha3(mem[_496 + _500 + 65 len _1428]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                    mem[_496 + _500 + _1428 + 65] = 32
                    _2227 = mem[_2158]
                    mem[_496 + _500 + _1428 + 97] = mem[_2158]
                    mem[_496 + _500 + _1428 + 129 len ceil32(_2227)] = mem[_2158 + 32 len ceil32(_2227)]
                    if ceil32(_2227) > _2227:
                        mem[_496 + _500 + _1428 + _2227 + 129] = 0
                    return 32, mem[_496 + _500 + _1428 + 97 len ceil32(_2227) + 32]
                mem[_496 + _500 + _1428 + 65] = 0
                mem[_496 + _500 + 33] = _1428
                mem[64] = _496 + _500 + _1428 + 65
                if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 18
                if sha3(mem[_496 + _500 + 65 len _1428]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 50
                _2173 = mem[(32 * sha3(mem[_496 + _500 + 65 len _1428]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                mem[_496 + _500 + _1428 + 65] = 32
                _2239 = mem[_2173]
                mem[_496 + _500 + _1428 + 97] = mem[_2173]
                mem[_496 + _500 + _1428 + 129 len ceil32(_2239)] = mem[_2173 + 32 len ceil32(_2239)]
                if ceil32(_2239) > _2239:
                    mem[_496 + _500 + _1428 + _2239 + 129] = 0
                return 32, mem[_496 + _500 + _1428 + 97 len ceil32(_2239) + 32]
            _1413 = mem[64]
            mem[mem[64]] = _500 + 1
            mem[64] = mem[64] + _500 + 33
            _1429 = mem[_1413]
            mem[_496 + _500 + 65 len ceil32(mem[_1413])] = mem[_1413 + 32 len ceil32(mem[_1413])]
            if ceil32(_1429) <= _1429:
                mem[_496 + _500 + 33] = _1429
                mem[64] = _496 + _500 + _1429 + 65
                if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 18
                if sha3(mem[_496 + _500 + 65 len _1429]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 50
                _2162 = mem[(32 * sha3(mem[_496 + _500 + 65 len _1429]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                mem[_496 + _500 + _1429 + 65] = 32
                _2229 = mem[_2162]
                mem[_496 + _500 + _1429 + 97] = mem[_2162]
                mem[_496 + _500 + _1429 + 129 len ceil32(_2229)] = mem[_2162 + 32 len ceil32(_2229)]
                if ceil32(_2229) > _2229:
                    mem[_496 + _500 + _1429 + _2229 + 129] = 0
                return 32, mem[_496 + _500 + _1429 + 97 len ceil32(_2229) + 32]
            mem[_496 + _500 + _1429 + 65] = 0
            mem[_496 + _500 + 33] = _1429
            mem[64] = _496 + _500 + _1429 + 65
            if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 18
            if sha3(mem[_496 + _500 + 65 len _1429]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 50
            _2175 = mem[(32 * sha3(mem[_496 + _500 + 65 len _1429]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
            mem[_496 + _500 + _1429 + 65] = 32
            _2241 = mem[_2175]
            mem[_496 + _500 + _1429 + 97] = mem[_2175]
            mem[_496 + _500 + _1429 + 129 len ceil32(_2241)] = mem[_2175 + 32 len ceil32(_2241)]
            if ceil32(_2241) > _2241:
                mem[_496 + _500 + _1429 + _2241 + 129] = 0
            return 32, mem[_496 + _500 + _1429 + 97 len ceil32(_2241) + 32]
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
        _730 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_730]:
                    revert with 'NH{q', 50
                mem[t + _730 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1400 = mem[64]
            _1408 = mem[ceil32(ceil32(arg2.length)) + 97]
            mem[mem[64] + 32 len ceil32(mem[ceil32(ceil32(arg2.length)) + 97])] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(mem[ceil32(ceil32(arg2.length)) + 97])]
            if ceil32(_1408) <= _1408:
                _2092 = mem[_730]
                mem[mem[64] + _1408 + 32 len ceil32(mem[_730])] = mem[_730 + 32 len ceil32(mem[_730])]
                if ceil32(_2092) <= _2092:
                    _2700 = mem[64]
                    mem[mem[64]] = _1408 + _2092
                    mem[64] = mem[64] + _1408 + _2092 + 32
                    _2764 = mem[_2700]
                    mem[_1400 + _1408 + _2092 + 64 len ceil32(mem[_2700])] = mem[_2700 + 32 len ceil32(mem[_2700])]
                    if ceil32(_2764) <= _2764:
                        mem[_1400 + _1408 + _2092 + 32] = _2764
                        mem[64] = _1400 + _1408 + _2092 + _2764 + 64
                        if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                            revert with 'NH{q', 18
                        if sha3(mem[_1400 + _1408 + _2092 + 64 len _2764]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                            revert with 'NH{q', 50
                        _3308 = mem[(32 * sha3(mem[_1400 + _1408 + _2092 + 64 len _2764]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                        mem[_1400 + _1408 + _2092 + _2764 + 64] = 32
                        _3388 = mem[_3308]
                        mem[_1400 + _1408 + _2092 + _2764 + 96] = mem[_3308]
                        mem[_1400 + _1408 + _2092 + _2764 + 128 len ceil32(_3388)] = mem[_3308 + 32 len ceil32(_3388)]
                        if ceil32(_3388) > _3388:
                            mem[_1400 + _1408 + _2092 + _2764 + _3388 + 128] = 0
                        return 32, mem[_1400 + _1408 + _2092 + _2764 + 96 len ceil32(_3388) + 32]
                    mem[_1400 + _1408 + _2092 + _2764 + 64] = 0
                    mem[_1400 + _1408 + _2092 + 32] = _2764
                    mem[64] = _1400 + _1408 + _2092 + _2764 + 64
                    if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                        revert with 'NH{q', 18
                    if sha3(mem[_1400 + _1408 + _2092 + 64 len _2764]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                        revert with 'NH{q', 50
                    _3340 = mem[(32 * sha3(mem[_1400 + _1408 + _2092 + 64 len _2764]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                    mem[_1400 + _1408 + _2092 + _2764 + 64] = 32
                    _3404 = mem[_3340]
                    mem[_1400 + _1408 + _2092 + _2764 + 96] = mem[_3340]
                    mem[_1400 + _1408 + _2092 + _2764 + 128 len ceil32(_3404)] = mem[_3340 + 32 len ceil32(_3404)]
                    if ceil32(_3404) > _3404:
                        mem[_1400 + _1408 + _2092 + _2764 + _3404 + 128] = 0
                    return 32, mem[_1400 + _1408 + _2092 + _2764 + 96 len ceil32(_3404) + 32]
                mem[mem[64] + _1408 + _2092 + 32] = 0
                _2709 = mem[64]
                mem[mem[64]] = _1408 + _2092
                mem[64] = mem[64] + _1408 + _2092 + 32
                _2772 = mem[_2709]
                mem[_1400 + _1408 + _2092 + 64 len ceil32(mem[_2709])] = mem[_2709 + 32 len ceil32(mem[_2709])]
                if ceil32(_2772) <= _2772:
                    mem[_1400 + _1408 + _2092 + 32] = _2772
                    mem[64] = _1400 + _1408 + _2092 + _2772 + 64
                    if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                        revert with 'NH{q', 18
                    if sha3(mem[_1400 + _1408 + _2092 + 64 len _2772]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                        revert with 'NH{q', 50
                    _3310 = mem[(32 * sha3(mem[_1400 + _1408 + _2092 + 64 len _2772]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                    mem[_1400 + _1408 + _2092 + _2772 + 64] = 32
                    _3389 = mem[_3310]
                    mem[_1400 + _1408 + _2092 + _2772 + 96] = mem[_3310]
                    mem[_1400 + _1408 + _2092 + _2772 + 128 len ceil32(_3389)] = mem[_3310 + 32 len ceil32(_3389)]
                    if ceil32(_3389) > _3389:
                        mem[_1400 + _1408 + _2092 + _2772 + _3389 + 128] = 0
                    return 32, mem[_1400 + _1408 + _2092 + _2772 + 96 len ceil32(_3389) + 32]
                mem[_1400 + _1408 + _2092 + _2772 + 64] = 0
                mem[_1400 + _1408 + _2092 + 32] = _2772
                mem[64] = _1400 + _1408 + _2092 + _2772 + 64
                if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 18
                if sha3(mem[_1400 + _1408 + _2092 + 64 len _2772]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 50
                _3341 = mem[(32 * sha3(mem[_1400 + _1408 + _2092 + 64 len _2772]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                mem[_1400 + _1408 + _2092 + _2772 + 64] = 32
                _3405 = mem[_3341]
                mem[_1400 + _1408 + _2092 + _2772 + 96] = mem[_3341]
                mem[_1400 + _1408 + _2092 + _2772 + 128 len ceil32(_3405)] = mem[_3341 + 32 len ceil32(_3405)]
                if ceil32(_3405) > _3405:
                    mem[_1400 + _1408 + _2092 + _2772 + _3405 + 128] = 0
                return 32, mem[_1400 + _1408 + _2092 + _2772 + 96 len ceil32(_3405) + 32]
            mem[mem[64] + _1408 + 32] = 0
            _2128 = mem[_730]
            mem[mem[64] + _1408 + 32 len ceil32(mem[_730])] = mem[_730 + 32 len ceil32(mem[_730])]
            if ceil32(_2128) <= _2128:
                _2701 = mem[64]
                mem[mem[64]] = _1408 + _2128
                mem[64] = mem[64] + _1408 + _2128 + 32
                _2765 = mem[_2701]
                mem[_1400 + _1408 + _2128 + 64 len ceil32(mem[_2701])] = mem[_2701 + 32 len ceil32(mem[_2701])]
                if ceil32(_2765) <= _2765:
                    mem[_1400 + _1408 + _2128 + 32] = _2765
                    mem[64] = _1400 + _1408 + _2128 + _2765 + 64
                    if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                        revert with 'NH{q', 18
                    if sha3(mem[_1400 + _1408 + _2128 + 64 len _2765]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                        revert with 'NH{q', 50
                    _3312 = mem[(32 * sha3(mem[_1400 + _1408 + _2128 + 64 len _2765]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                    mem[_1400 + _1408 + _2128 + _2765 + 64] = 32
                    _3390 = mem[_3312]
                    mem[_1400 + _1408 + _2128 + _2765 + 96] = mem[_3312]
                    mem[_1400 + _1408 + _2128 + _2765 + 128 len ceil32(_3390)] = mem[_3312 + 32 len ceil32(_3390)]
                    if ceil32(_3390) > _3390:
                        mem[_1400 + _1408 + _2128 + _2765 + _3390 + 128] = 0
                    return 32, mem[_1400 + _1408 + _2128 + _2765 + 96 len ceil32(_3390) + 32]
                mem[_1400 + _1408 + _2128 + _2765 + 64] = 0
                mem[_1400 + _1408 + _2128 + 32] = _2765
                mem[64] = _1400 + _1408 + _2128 + _2765 + 64
                if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 18
                if sha3(mem[_1400 + _1408 + _2128 + 64 len _2765]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 50
                _3342 = mem[(32 * sha3(mem[_1400 + _1408 + _2128 + 64 len _2765]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                mem[_1400 + _1408 + _2128 + _2765 + 64] = 32
                _3406 = mem[_3342]
                mem[_1400 + _1408 + _2128 + _2765 + 96] = mem[_3342]
                mem[_1400 + _1408 + _2128 + _2765 + 128 len ceil32(_3406)] = mem[_3342 + 32 len ceil32(_3406)]
                if ceil32(_3406) > _3406:
                    mem[_1400 + _1408 + _2128 + _2765 + _3406 + 128] = 0
                return 32, mem[_1400 + _1408 + _2128 + _2765 + 96 len ceil32(_3406) + 32]
            mem[mem[64] + _1408 + _2128 + 32] = 0
            _2711 = mem[64]
            mem[mem[64]] = _1408 + _2128
            mem[64] = mem[64] + _1408 + _2128 + 32
            _2773 = mem[_2711]
            mem[_1400 + _1408 + _2128 + 64 len ceil32(mem[_2711])] = mem[_2711 + 32 len ceil32(mem[_2711])]
            if ceil32(_2773) <= _2773:
                mem[_1400 + _1408 + _2128 + 32] = _2773
                mem[64] = _1400 + _1408 + _2128 + _2773 + 64
                if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 18
                if sha3(mem[_1400 + _1408 + _2128 + 64 len _2773]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 50
                _3314 = mem[(32 * sha3(mem[_1400 + _1408 + _2128 + 64 len _2773]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                mem[_1400 + _1408 + _2128 + _2773 + 64] = 32
                _3391 = mem[_3314]
                mem[_1400 + _1408 + _2128 + _2773 + 96] = mem[_3314]
                mem[_1400 + _1408 + _2128 + _2773 + 128 len ceil32(_3391)] = mem[_3314 + 32 len ceil32(_3391)]
                if ceil32(_3391) > _3391:
                    mem[_1400 + _1408 + _2128 + _2773 + _3391 + 128] = 0
                return 32, mem[_1400 + _1408 + _2128 + _2773 + 96 len ceil32(_3391) + 32]
            mem[_1400 + _1408 + _2128 + _2773 + 64] = 0
            mem[_1400 + _1408 + _2128 + 32] = _2773
            mem[64] = _1400 + _1408 + _2128 + _2773 + 64
            if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 18
            if sha3(mem[_1400 + _1408 + _2128 + 64 len _2773]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 50
            _3343 = mem[(32 * sha3(mem[_1400 + _1408 + _2128 + 64 len _2773]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
            mem[_1400 + _1408 + _2128 + _2773 + 64] = 32
            _3407 = mem[_3343]
            mem[_1400 + _1408 + _2128 + _2773 + 96] = mem[_3343]
            mem[_1400 + _1408 + _2128 + _2773 + 128 len ceil32(_3407)] = mem[_3343 + 32 len ceil32(_3407)]
            if ceil32(_3407) > _3407:
                mem[_1400 + _1408 + _2128 + _2773 + _3407 + 128] = 0
            return 32, mem[_1400 + _1408 + _2128 + _2773 + 96 len ceil32(_3407) + 32]
        mem[_730 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_730]:
                revert with 'NH{q', 50
            mem[t + _730 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1401 = mem[64]
        _1409 = mem[ceil32(ceil32(arg2.length)) + 97]
        mem[mem[64] + 32 len ceil32(mem[ceil32(ceil32(arg2.length)) + 97])] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(mem[ceil32(ceil32(arg2.length)) + 97])]
        if ceil32(_1409) <= _1409:
            _2093 = mem[_730]
            mem[mem[64] + _1409 + 32 len ceil32(mem[_730])] = mem[_730 + 32 len ceil32(mem[_730])]
            if ceil32(_2093) <= _2093:
                _2702 = mem[64]
                mem[mem[64]] = _1409 + _2093
                mem[64] = mem[64] + _1409 + _2093 + 32
                _2766 = mem[_2702]
                mem[_1401 + _1409 + _2093 + 64 len ceil32(mem[_2702])] = mem[_2702 + 32 len ceil32(mem[_2702])]
                if ceil32(_2766) <= _2766:
                    mem[_1401 + _1409 + _2093 + 32] = _2766
                    mem[64] = _1401 + _1409 + _2093 + _2766 + 64
                    if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                        revert with 'NH{q', 18
                    if sha3(mem[_1401 + _1409 + _2093 + 64 len _2766]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                        revert with 'NH{q', 50
                    _3316 = mem[(32 * sha3(mem[_1401 + _1409 + _2093 + 64 len _2766]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                    mem[_1401 + _1409 + _2093 + _2766 + 64] = 32
                    _3392 = mem[_3316]
                    mem[_1401 + _1409 + _2093 + _2766 + 96] = mem[_3316]
                    mem[_1401 + _1409 + _2093 + _2766 + 128 len ceil32(_3392)] = mem[_3316 + 32 len ceil32(_3392)]
                    if ceil32(_3392) > _3392:
                        mem[_1401 + _1409 + _2093 + _2766 + _3392 + 128] = 0
                    return 32, mem[_1401 + _1409 + _2093 + _2766 + 96 len ceil32(_3392) + 32]
                mem[_1401 + _1409 + _2093 + _2766 + 64] = 0
                mem[_1401 + _1409 + _2093 + 32] = _2766
                mem[64] = _1401 + _1409 + _2093 + _2766 + 64
                if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 18
                if sha3(mem[_1401 + _1409 + _2093 + 64 len _2766]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 50
                _3344 = mem[(32 * sha3(mem[_1401 + _1409 + _2093 + 64 len _2766]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                mem[_1401 + _1409 + _2093 + _2766 + 64] = 32
                _3408 = mem[_3344]
                mem[_1401 + _1409 + _2093 + _2766 + 96] = mem[_3344]
                mem[_1401 + _1409 + _2093 + _2766 + 128 len ceil32(_3408)] = mem[_3344 + 32 len ceil32(_3408)]
                if ceil32(_3408) > _3408:
                    mem[_1401 + _1409 + _2093 + _2766 + _3408 + 128] = 0
                return 32, mem[_1401 + _1409 + _2093 + _2766 + 96 len ceil32(_3408) + 32]
            mem[mem[64] + _1409 + _2093 + 32] = 0
            _2713 = mem[64]
            mem[mem[64]] = _1409 + _2093
            mem[64] = mem[64] + _1409 + _2093 + 32
            _2774 = mem[_2713]
            mem[_1401 + _1409 + _2093 + 64 len ceil32(mem[_2713])] = mem[_2713 + 32 len ceil32(mem[_2713])]
            if ceil32(_2774) <= _2774:
                mem[_1401 + _1409 + _2093 + 32] = _2774
                mem[64] = _1401 + _1409 + _2093 + _2774 + 64
                if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 18
                if sha3(mem[_1401 + _1409 + _2093 + 64 len _2774]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 50
                _3318 = mem[(32 * sha3(mem[_1401 + _1409 + _2093 + 64 len _2774]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                mem[_1401 + _1409 + _2093 + _2774 + 64] = 32
                _3393 = mem[_3318]
                mem[_1401 + _1409 + _2093 + _2774 + 96] = mem[_3318]
                mem[_1401 + _1409 + _2093 + _2774 + 128 len ceil32(_3393)] = mem[_3318 + 32 len ceil32(_3393)]
                if ceil32(_3393) > _3393:
                    mem[_1401 + _1409 + _2093 + _2774 + _3393 + 128] = 0
                return 32, mem[_1401 + _1409 + _2093 + _2774 + 96 len ceil32(_3393) + 32]
            mem[_1401 + _1409 + _2093 + _2774 + 64] = 0
            mem[_1401 + _1409 + _2093 + 32] = _2774
            mem[64] = _1401 + _1409 + _2093 + _2774 + 64
            if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 18
            if sha3(mem[_1401 + _1409 + _2093 + 64 len _2774]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 50
            _3345 = mem[(32 * sha3(mem[_1401 + _1409 + _2093 + 64 len _2774]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
            mem[_1401 + _1409 + _2093 + _2774 + 64] = 32
            _3409 = mem[_3345]
            mem[_1401 + _1409 + _2093 + _2774 + 96] = mem[_3345]
            mem[_1401 + _1409 + _2093 + _2774 + 128 len ceil32(_3409)] = mem[_3345 + 32 len ceil32(_3409)]
            if ceil32(_3409) > _3409:
                mem[_1401 + _1409 + _2093 + _2774 + _3409 + 128] = 0
            return 32, mem[_1401 + _1409 + _2093 + _2774 + 96 len ceil32(_3409) + 32]
        mem[mem[64] + _1409 + 32] = 0
        _2129 = mem[_730]
        mem[mem[64] + _1409 + 32 len ceil32(mem[_730])] = mem[_730 + 32 len ceil32(mem[_730])]
        if ceil32(_2129) <= _2129:
            _2703 = mem[64]
            mem[mem[64]] = _1409 + _2129
            mem[64] = mem[64] + _1409 + _2129 + 32
            _2767 = mem[_2703]
            mem[_1401 + _1409 + _2129 + 64 len ceil32(mem[_2703])] = mem[_2703 + 32 len ceil32(mem[_2703])]
            if ceil32(_2767) <= _2767:
                mem[_1401 + _1409 + _2129 + 32] = _2767
                mem[64] = _1401 + _1409 + _2129 + _2767 + 64
                if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 18
                if sha3(mem[_1401 + _1409 + _2129 + 64 len _2767]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 50
                _3320 = mem[(32 * sha3(mem[_1401 + _1409 + _2129 + 64 len _2767]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                mem[_1401 + _1409 + _2129 + _2767 + 64] = 32
                _3394 = mem[_3320]
                mem[_1401 + _1409 + _2129 + _2767 + 96] = mem[_3320]
                mem[_1401 + _1409 + _2129 + _2767 + 128 len ceil32(_3394)] = mem[_3320 + 32 len ceil32(_3394)]
                if ceil32(_3394) > _3394:
                    mem[_1401 + _1409 + _2129 + _2767 + _3394 + 128] = 0
                return 32, mem[_1401 + _1409 + _2129 + _2767 + 96 len ceil32(_3394) + 32]
            mem[_1401 + _1409 + _2129 + _2767 + 64] = 0
            mem[_1401 + _1409 + _2129 + 32] = _2767
            mem[64] = _1401 + _1409 + _2129 + _2767 + 64
            if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 18
            if sha3(mem[_1401 + _1409 + _2129 + 64 len _2767]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 50
            _3346 = mem[(32 * sha3(mem[_1401 + _1409 + _2129 + 64 len _2767]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
            mem[_1401 + _1409 + _2129 + _2767 + 64] = 32
            _3410 = mem[_3346]
            mem[_1401 + _1409 + _2129 + _2767 + 96] = mem[_3346]
            mem[_1401 + _1409 + _2129 + _2767 + 128 len ceil32(_3410)] = mem[_3346 + 32 len ceil32(_3410)]
            if ceil32(_3410) > _3410:
                mem[_1401 + _1409 + _2129 + _2767 + _3410 + 128] = 0
            return 32, mem[_1401 + _1409 + _2129 + _2767 + 96 len ceil32(_3410) + 32]
        mem[mem[64] + _1409 + _2129 + 32] = 0
        _2715 = mem[64]
        mem[mem[64]] = _1409 + _2129
        mem[64] = mem[64] + _1409 + _2129 + 32
        _2775 = mem[_2715]
        mem[_1401 + _1409 + _2129 + 64 len ceil32(mem[_2715])] = mem[_2715 + 32 len ceil32(mem[_2715])]
        if ceil32(_2775) <= _2775:
            mem[_1401 + _1409 + _2129 + 32] = _2775
            mem[64] = _1401 + _1409 + _2129 + _2775 + 64
            if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 18
            if sha3(mem[_1401 + _1409 + _2129 + 64 len _2775]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 50
            _3322 = mem[(32 * sha3(mem[_1401 + _1409 + _2129 + 64 len _2775]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
            mem[_1401 + _1409 + _2129 + _2775 + 64] = 32
            _3395 = mem[_3322]
            mem[_1401 + _1409 + _2129 + _2775 + 96] = mem[_3322]
            mem[_1401 + _1409 + _2129 + _2775 + 128 len ceil32(_3395)] = mem[_3322 + 32 len ceil32(_3395)]
            if ceil32(_3395) > _3395:
                mem[_1401 + _1409 + _2129 + _2775 + _3395 + 128] = 0
            return 32, mem[_1401 + _1409 + _2129 + _2775 + 96 len ceil32(_3395) + 32]
        mem[_1401 + _1409 + _2129 + _2775 + 64] = 0
        mem[_1401 + _1409 + _2129 + 32] = _2775
        mem[64] = _1401 + _1409 + _2129 + _2775 + 64
        if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
            revert with 'NH{q', 18
        if sha3(mem[_1401 + _1409 + _2129 + 64 len _2775]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
            revert with 'NH{q', 50
        _3347 = mem[(32 * sha3(mem[_1401 + _1409 + _2129 + 64 len _2775]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
        mem[_1401 + _1409 + _2129 + _2775 + 64] = 32
        _3411 = mem[_3347]
        mem[_1401 + _1409 + _2129 + _2775 + 96] = mem[_3347]
        mem[_1401 + _1409 + _2129 + _2775 + 128 len ceil32(_3411)] = mem[_3347 + 32 len ceil32(_3411)]
        if ceil32(_3411) > _3411:
            mem[_1401 + _1409 + _2129 + _2775 + _3411 + 128] = 0
        return 32, mem[_1401 + _1409 + _2129 + _2775 + 96 len ceil32(_3411) + 32]
    s = ceil32(ceil32(arg2.length)) + arg2.length + 166
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        if stor14[idx].field_0:
            if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                revert with 'NH{q', 34
            _495 = mem[64]
            mem[64] = mem[64] + ceil32(stor14[idx].field_1) + 32
            mem[_495] = stor14[idx].field_1
            if stor14[idx].field_0:
                if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor14[idx].field_1:
                    if 31 >= stor14[idx].field_1:
                        mem[_495 + 32] = 256 * stor14[idx].field_8
                    else:
                        mem[0] = sha3(14) + idx
                        mem[_495 + 32] = stor14[idx].field_0
                        t = _495 + 32
                        u = sha3(mem[0])
                        while _495 + stor14[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _495
                s = s + 32
                idx = idx + 1
                continue 
            if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor14[idx].field_1:
                mem[s] = _495
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor14[idx].field_1:
                mem[_495 + 32] = 256 * stor14[idx].field_8
                mem[s] = _495
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(14) + idx
            mem[_495 + 32] = stor14[idx].field_0
            t = _495 + 32
            u = sha3(mem[0])
            while _495 + stor14[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _495
            t = t + 32
            u = u + 1
            continue 
        if stor14[idx].field_0 == stor14[idx].field_1 < 32:
            revert with 'NH{q', 34
        _499 = mem[64]
        mem[64] = mem[64] + ceil32(stor14[idx].field_1) + 32
        mem[_499] = stor14[idx].field_1
        if stor14[idx].field_0:
            if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor14[idx].field_1:
                mem[s] = _499
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor14[idx].field_1:
                mem[_499 + 32] = 256 * stor14[idx].field_8
                mem[s] = _499
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(14) + idx
            mem[_499 + 32] = stor14[idx].field_0
            t = _499 + 32
            u = sha3(mem[0])
            while _499 + stor14[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _499
            t = t + 32
            u = u + 1
            continue 
        if stor14[idx].field_0 == stor14[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor14[idx].field_1:
            if 31 >= stor14[idx].field_1:
                mem[_499 + 32] = 256 * stor14[idx].field_8
            else:
                mem[0] = sha3(14) + idx
                mem[_499 + 32] = stor14[idx].field_0
                t = _499 + 32
                u = sha3(mem[0])
                while _499 + stor14[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _499
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _493 = mem[64]
        mem[64] = mem[64] + 64
        mem[_493] = 1
        mem[_493 + 32] = '0'
        _498 = mem[64]
        _501 = mem[ceil32(ceil32(arg2.length)) + 97]
        mem[mem[64] + 32 len ceil32(mem[ceil32(ceil32(arg2.length)) + 97])] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(mem[ceil32(ceil32(arg2.length)) + 97])]
        mem[mem[64] + _501 + 32] = '0'
        mem[mem[64] + _501 + 33] = 0
        if ceil32(_501) <= _501:
            _1417 = mem[64]
            mem[mem[64]] = _501 + 1
            mem[64] = mem[64] + _501 + 33
            _1430 = mem[_1417]
            mem[_498 + _501 + 65 len ceil32(mem[_1417])] = mem[_1417 + 32 len ceil32(mem[_1417])]
            if ceil32(_1430) <= _1430:
                mem[_498 + _501 + 33] = _1430
                mem[64] = _498 + _501 + _1430 + 65
                if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 18
                if sha3(mem[_498 + _501 + 65 len _1430]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 50
                _2166 = mem[(32 * sha3(mem[_498 + _501 + 65 len _1430]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                mem[_498 + _501 + _1430 + 65] = 32
                _2233 = mem[_2166]
                mem[_498 + _501 + _1430 + 97] = mem[_2166]
                mem[_498 + _501 + _1430 + 129 len ceil32(_2233)] = mem[_2166 + 32 len ceil32(_2233)]
                if ceil32(_2233) > _2233:
                    mem[_498 + _501 + _1430 + _2233 + 129] = 0
                return 32, mem[_498 + _501 + _1430 + 97 len ceil32(_2233) + 32]
            mem[_498 + _501 + _1430 + 65] = 0
            mem[_498 + _501 + 33] = _1430
            mem[64] = _498 + _501 + _1430 + 65
            if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 18
            if sha3(mem[_498 + _501 + 65 len _1430]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 50
            _2177 = mem[(32 * sha3(mem[_498 + _501 + 65 len _1430]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
            mem[_498 + _501 + _1430 + 65] = 32
            _2245 = mem[_2177]
            mem[_498 + _501 + _1430 + 97] = mem[_2177]
            mem[_498 + _501 + _1430 + 129 len ceil32(_2245)] = mem[_2177 + 32 len ceil32(_2245)]
            if ceil32(_2245) > _2245:
                mem[_498 + _501 + _1430 + _2245 + 129] = 0
            return 32, mem[_498 + _501 + _1430 + 97 len ceil32(_2245) + 32]
        _1419 = mem[64]
        mem[mem[64]] = _501 + 1
        mem[64] = mem[64] + _501 + 33
        _1431 = mem[_1419]
        mem[_498 + _501 + 65 len ceil32(mem[_1419])] = mem[_1419 + 32 len ceil32(mem[_1419])]
        if ceil32(_1431) <= _1431:
            mem[_498 + _501 + 33] = _1431
            mem[64] = _498 + _501 + _1431 + 65
            if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 18
            if sha3(mem[_498 + _501 + 65 len _1431]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 50
            _2170 = mem[(32 * sha3(mem[_498 + _501 + 65 len _1431]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
            mem[_498 + _501 + _1431 + 65] = 32
            _2235 = mem[_2170]
            mem[_498 + _501 + _1431 + 97] = mem[_2170]
            mem[_498 + _501 + _1431 + 129 len ceil32(_2235)] = mem[_2170 + 32 len ceil32(_2235)]
            if ceil32(_2235) > _2235:
                mem[_498 + _501 + _1431 + _2235 + 129] = 0
            return 32, mem[_498 + _501 + _1431 + 97 len ceil32(_2235) + 32]
        mem[_498 + _501 + _1431 + 65] = 0
        mem[_498 + _501 + 33] = _1431
        mem[64] = _498 + _501 + _1431 + 65
        if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
            revert with 'NH{q', 18
        if sha3(mem[_498 + _501 + 65 len _1431]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
            revert with 'NH{q', 50
        _2179 = mem[(32 * sha3(mem[_498 + _501 + 65 len _1431]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
        mem[_498 + _501 + _1431 + 65] = 32
        _2247 = mem[_2179]
        mem[_498 + _501 + _1431 + 97] = mem[_2179]
        mem[_498 + _501 + _1431 + 129 len ceil32(_2247)] = mem[_2179 + 32 len ceil32(_2247)]
        if ceil32(_2247) > _2247:
            mem[_498 + _501 + _1431 + _2247 + 129] = 0
        return 32, mem[_498 + _501 + _1431 + 97 len ceil32(_2247) + 32]
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
    _731 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_731]:
                revert with 'NH{q', 50
            mem[t + _731 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1402 = mem[64]
        _1414 = mem[ceil32(ceil32(arg2.length)) + 97]
        mem[mem[64] + 32 len ceil32(mem[ceil32(ceil32(arg2.length)) + 97])] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(mem[ceil32(ceil32(arg2.length)) + 97])]
        if ceil32(_1414) <= _1414:
            _2110 = mem[_731]
            mem[mem[64] + _1414 + 32 len ceil32(mem[_731])] = mem[_731 + 32 len ceil32(mem[_731])]
            if ceil32(_2110) <= _2110:
                _2704 = mem[64]
                mem[mem[64]] = _1414 + _2110
                mem[64] = mem[64] + _1414 + _2110 + 32
                _2768 = mem[_2704]
                mem[_1402 + _1414 + _2110 + 64 len ceil32(mem[_2704])] = mem[_2704 + 32 len ceil32(mem[_2704])]
                if ceil32(_2768) <= _2768:
                    mem[_1402 + _1414 + _2110 + 32] = _2768
                    mem[64] = _1402 + _1414 + _2110 + _2768 + 64
                    if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                        revert with 'NH{q', 18
                    if sha3(mem[_1402 + _1414 + _2110 + 64 len _2768]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                        revert with 'NH{q', 50
                    _3324 = mem[(32 * sha3(mem[_1402 + _1414 + _2110 + 64 len _2768]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                    mem[_1402 + _1414 + _2110 + _2768 + 64] = 32
                    _3396 = mem[_3324]
                    mem[_1402 + _1414 + _2110 + _2768 + 96] = mem[_3324]
                    mem[_1402 + _1414 + _2110 + _2768 + 128 len ceil32(_3396)] = mem[_3324 + 32 len ceil32(_3396)]
                    if ceil32(_3396) > _3396:
                        mem[_1402 + _1414 + _2110 + _2768 + _3396 + 128] = 0
                    return 32, mem[_1402 + _1414 + _2110 + _2768 + 96 len ceil32(_3396) + 32]
                mem[_1402 + _1414 + _2110 + _2768 + 64] = 0
                mem[_1402 + _1414 + _2110 + 32] = _2768
                mem[64] = _1402 + _1414 + _2110 + _2768 + 64
                if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 18
                if sha3(mem[_1402 + _1414 + _2110 + 64 len _2768]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 50
                _3348 = mem[(32 * sha3(mem[_1402 + _1414 + _2110 + 64 len _2768]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                mem[_1402 + _1414 + _2110 + _2768 + 64] = 32
                _3412 = mem[_3348]
                mem[_1402 + _1414 + _2110 + _2768 + 96] = mem[_3348]
                mem[_1402 + _1414 + _2110 + _2768 + 128 len ceil32(_3412)] = mem[_3348 + 32 len ceil32(_3412)]
                if ceil32(_3412) > _3412:
                    mem[_1402 + _1414 + _2110 + _2768 + _3412 + 128] = 0
                return 32, mem[_1402 + _1414 + _2110 + _2768 + 96 len ceil32(_3412) + 32]
            mem[mem[64] + _1414 + _2110 + 32] = 0
            _2717 = mem[64]
            mem[mem[64]] = _1414 + _2110
            mem[64] = mem[64] + _1414 + _2110 + 32
            _2776 = mem[_2717]
            mem[_1402 + _1414 + _2110 + 64 len ceil32(mem[_2717])] = mem[_2717 + 32 len ceil32(mem[_2717])]
            if ceil32(_2776) <= _2776:
                mem[_1402 + _1414 + _2110 + 32] = _2776
                mem[64] = _1402 + _1414 + _2110 + _2776 + 64
                if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 18
                if sha3(mem[_1402 + _1414 + _2110 + 64 len _2776]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 50
                _3326 = mem[(32 * sha3(mem[_1402 + _1414 + _2110 + 64 len _2776]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                mem[_1402 + _1414 + _2110 + _2776 + 64] = 32
                _3397 = mem[_3326]
                mem[_1402 + _1414 + _2110 + _2776 + 96] = mem[_3326]
                mem[_1402 + _1414 + _2110 + _2776 + 128 len ceil32(_3397)] = mem[_3326 + 32 len ceil32(_3397)]
                if ceil32(_3397) > _3397:
                    mem[_1402 + _1414 + _2110 + _2776 + _3397 + 128] = 0
                return 32, mem[_1402 + _1414 + _2110 + _2776 + 96 len ceil32(_3397) + 32]
            mem[_1402 + _1414 + _2110 + _2776 + 64] = 0
            mem[_1402 + _1414 + _2110 + 32] = _2776
            mem[64] = _1402 + _1414 + _2110 + _2776 + 64
            if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 18
            if sha3(mem[_1402 + _1414 + _2110 + 64 len _2776]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 50
            _3349 = mem[(32 * sha3(mem[_1402 + _1414 + _2110 + 64 len _2776]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
            mem[_1402 + _1414 + _2110 + _2776 + 64] = 32
            _3413 = mem[_3349]
            mem[_1402 + _1414 + _2110 + _2776 + 96] = mem[_3349]
            mem[_1402 + _1414 + _2110 + _2776 + 128 len ceil32(_3413)] = mem[_3349 + 32 len ceil32(_3413)]
            if ceil32(_3413) > _3413:
                mem[_1402 + _1414 + _2110 + _2776 + _3413 + 128] = 0
            return 32, mem[_1402 + _1414 + _2110 + _2776 + 96 len ceil32(_3413) + 32]
        mem[mem[64] + _1414 + 32] = 0
        _2134 = mem[_731]
        mem[mem[64] + _1414 + 32 len ceil32(mem[_731])] = mem[_731 + 32 len ceil32(mem[_731])]
        if ceil32(_2134) <= _2134:
            _2705 = mem[64]
            mem[mem[64]] = _1414 + _2134
            mem[64] = mem[64] + _1414 + _2134 + 32
            _2769 = mem[_2705]
            mem[_1402 + _1414 + _2134 + 64 len ceil32(mem[_2705])] = mem[_2705 + 32 len ceil32(mem[_2705])]
            if ceil32(_2769) <= _2769:
                mem[_1402 + _1414 + _2134 + 32] = _2769
                mem[64] = _1402 + _1414 + _2134 + _2769 + 64
                if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 18
                if sha3(mem[_1402 + _1414 + _2134 + 64 len _2769]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 50
                _3328 = mem[(32 * sha3(mem[_1402 + _1414 + _2134 + 64 len _2769]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                mem[_1402 + _1414 + _2134 + _2769 + 64] = 32
                _3398 = mem[_3328]
                mem[_1402 + _1414 + _2134 + _2769 + 96] = mem[_3328]
                mem[_1402 + _1414 + _2134 + _2769 + 128 len ceil32(_3398)] = mem[_3328 + 32 len ceil32(_3398)]
                if ceil32(_3398) > _3398:
                    mem[_1402 + _1414 + _2134 + _2769 + _3398 + 128] = 0
                return 32, mem[_1402 + _1414 + _2134 + _2769 + 96 len ceil32(_3398) + 32]
            mem[_1402 + _1414 + _2134 + _2769 + 64] = 0
            mem[_1402 + _1414 + _2134 + 32] = _2769
            mem[64] = _1402 + _1414 + _2134 + _2769 + 64
            if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 18
            if sha3(mem[_1402 + _1414 + _2134 + 64 len _2769]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 50
            _3350 = mem[(32 * sha3(mem[_1402 + _1414 + _2134 + 64 len _2769]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
            mem[_1402 + _1414 + _2134 + _2769 + 64] = 32
            _3414 = mem[_3350]
            mem[_1402 + _1414 + _2134 + _2769 + 96] = mem[_3350]
            mem[_1402 + _1414 + _2134 + _2769 + 128 len ceil32(_3414)] = mem[_3350 + 32 len ceil32(_3414)]
            if ceil32(_3414) > _3414:
                mem[_1402 + _1414 + _2134 + _2769 + _3414 + 128] = 0
            return 32, mem[_1402 + _1414 + _2134 + _2769 + 96 len ceil32(_3414) + 32]
        mem[mem[64] + _1414 + _2134 + 32] = 0
        _2719 = mem[64]
        mem[mem[64]] = _1414 + _2134
        mem[64] = mem[64] + _1414 + _2134 + 32
        _2777 = mem[_2719]
        mem[_1402 + _1414 + _2134 + 64 len ceil32(mem[_2719])] = mem[_2719 + 32 len ceil32(mem[_2719])]
        if ceil32(_2777) <= _2777:
            mem[_1402 + _1414 + _2134 + 32] = _2777
            mem[64] = _1402 + _1414 + _2134 + _2777 + 64
            if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 18
            if sha3(mem[_1402 + _1414 + _2134 + 64 len _2777]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 50
            _3330 = mem[(32 * sha3(mem[_1402 + _1414 + _2134 + 64 len _2777]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
            mem[_1402 + _1414 + _2134 + _2777 + 64] = 32
            _3399 = mem[_3330]
            mem[_1402 + _1414 + _2134 + _2777 + 96] = mem[_3330]
            mem[_1402 + _1414 + _2134 + _2777 + 128 len ceil32(_3399)] = mem[_3330 + 32 len ceil32(_3399)]
            if ceil32(_3399) > _3399:
                mem[_1402 + _1414 + _2134 + _2777 + _3399 + 128] = 0
            return 32, mem[_1402 + _1414 + _2134 + _2777 + 96 len ceil32(_3399) + 32]
        mem[_1402 + _1414 + _2134 + _2777 + 64] = 0
        mem[_1402 + _1414 + _2134 + 32] = _2777
        mem[64] = _1402 + _1414 + _2134 + _2777 + 64
        if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
            revert with 'NH{q', 18
        if sha3(mem[_1402 + _1414 + _2134 + 64 len _2777]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
            revert with 'NH{q', 50
        _3351 = mem[(32 * sha3(mem[_1402 + _1414 + _2134 + 64 len _2777]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
        mem[_1402 + _1414 + _2134 + _2777 + 64] = 32
        _3415 = mem[_3351]
        mem[_1402 + _1414 + _2134 + _2777 + 96] = mem[_3351]
        mem[_1402 + _1414 + _2134 + _2777 + 128 len ceil32(_3415)] = mem[_3351 + 32 len ceil32(_3415)]
        if ceil32(_3415) > _3415:
            mem[_1402 + _1414 + _2134 + _2777 + _3415 + 128] = 0
        return 32, mem[_1402 + _1414 + _2134 + _2777 + 96 len ceil32(_3415) + 32]
    mem[_731 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_731]:
            revert with 'NH{q', 50
        mem[t + _731 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _1403 = mem[64]
    _1415 = mem[ceil32(ceil32(arg2.length)) + 97]
    mem[mem[64] + 32 len ceil32(mem[ceil32(ceil32(arg2.length)) + 97])] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(mem[ceil32(ceil32(arg2.length)) + 97])]
    if ceil32(_1415) <= _1415:
        _2111 = mem[_731]
        mem[mem[64] + _1415 + 32 len ceil32(mem[_731])] = mem[_731 + 32 len ceil32(mem[_731])]
        if ceil32(_2111) <= _2111:
            _2706 = mem[64]
            mem[mem[64]] = _1415 + _2111
            mem[64] = mem[64] + _1415 + _2111 + 32
            _2770 = mem[_2706]
            mem[_1403 + _1415 + _2111 + 64 len ceil32(mem[_2706])] = mem[_2706 + 32 len ceil32(mem[_2706])]
            if ceil32(_2770) <= _2770:
                mem[_1403 + _1415 + _2111 + 32] = _2770
                mem[64] = _1403 + _1415 + _2111 + _2770 + 64
                if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 18
                if sha3(mem[_1403 + _1415 + _2111 + 64 len _2770]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                    revert with 'NH{q', 50
                _3332 = mem[(32 * sha3(mem[_1403 + _1415 + _2111 + 64 len _2770]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
                mem[_1403 + _1415 + _2111 + _2770 + 64] = 32
                _3400 = mem[_3332]
                mem[_1403 + _1415 + _2111 + _2770 + 96] = mem[_3332]
                mem[_1403 + _1415 + _2111 + _2770 + 128 len ceil32(_3400)] = mem[_3332 + 32 len ceil32(_3400)]
                if ceil32(_3400) > _3400:
                    mem[_1403 + _1415 + _2111 + _2770 + _3400 + 128] = 0
                return 32, mem[_1403 + _1415 + _2111 + _2770 + 96 len ceil32(_3400) + 32]
            mem[_1403 + _1415 + _2111 + _2770 + 64] = 0
            mem[_1403 + _1415 + _2111 + 32] = _2770
            mem[64] = _1403 + _1415 + _2111 + _2770 + 64
            if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 18
            if sha3(mem[_1403 + _1415 + _2111 + 64 len _2770]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 50
            _3352 = mem[(32 * sha3(mem[_1403 + _1415 + _2111 + 64 len _2770]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
            mem[_1403 + _1415 + _2111 + _2770 + 64] = 32
            _3416 = mem[_3352]
            mem[_1403 + _1415 + _2111 + _2770 + 96] = mem[_3352]
            mem[_1403 + _1415 + _2111 + _2770 + 128 len ceil32(_3416)] = mem[_3352 + 32 len ceil32(_3416)]
            if ceil32(_3416) > _3416:
                mem[_1403 + _1415 + _2111 + _2770 + _3416 + 128] = 0
            return 32, mem[_1403 + _1415 + _2111 + _2770 + 96 len ceil32(_3416) + 32]
        mem[mem[64] + _1415 + _2111 + 32] = 0
        _2721 = mem[64]
        mem[mem[64]] = _1415 + _2111
        mem[64] = mem[64] + _1415 + _2111 + 32
        _2778 = mem[_2721]
        mem[_1403 + _1415 + _2111 + 64 len ceil32(mem[_2721])] = mem[_2721 + 32 len ceil32(mem[_2721])]
        if ceil32(_2778) <= _2778:
            mem[_1403 + _1415 + _2111 + 32] = _2778
            mem[64] = _1403 + _1415 + _2111 + _2778 + 64
            if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 18
            if sha3(mem[_1403 + _1415 + _2111 + 64 len _2778]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 50
            _3334 = mem[(32 * sha3(mem[_1403 + _1415 + _2111 + 64 len _2778]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
            mem[_1403 + _1415 + _2111 + _2778 + 64] = 32
            _3401 = mem[_3334]
            mem[_1403 + _1415 + _2111 + _2778 + 96] = mem[_3334]
            mem[_1403 + _1415 + _2111 + _2778 + 128 len ceil32(_3401)] = mem[_3334 + 32 len ceil32(_3401)]
            if ceil32(_3401) > _3401:
                mem[_1403 + _1415 + _2111 + _2778 + _3401 + 128] = 0
            return 32, mem[_1403 + _1415 + _2111 + _2778 + 96 len ceil32(_3401) + 32]
        mem[_1403 + _1415 + _2111 + _2778 + 64] = 0
        mem[_1403 + _1415 + _2111 + 32] = _2778
        mem[64] = _1403 + _1415 + _2111 + _2778 + 64
        if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
            revert with 'NH{q', 18
        if sha3(mem[_1403 + _1415 + _2111 + 64 len _2778]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
            revert with 'NH{q', 50
        _3353 = mem[(32 * sha3(mem[_1403 + _1415 + _2111 + 64 len _2778]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
        mem[_1403 + _1415 + _2111 + _2778 + 64] = 32
        _3417 = mem[_3353]
        mem[_1403 + _1415 + _2111 + _2778 + 96] = mem[_3353]
        mem[_1403 + _1415 + _2111 + _2778 + 128 len ceil32(_3417)] = mem[_3353 + 32 len ceil32(_3417)]
        if ceil32(_3417) > _3417:
            mem[_1403 + _1415 + _2111 + _2778 + _3417 + 128] = 0
        return 32, mem[_1403 + _1415 + _2111 + _2778 + 96 len ceil32(_3417) + 32]
    mem[mem[64] + _1415 + 32] = 0
    _2135 = mem[_731]
    mem[mem[64] + _1415 + 32 len ceil32(mem[_731])] = mem[_731 + 32 len ceil32(mem[_731])]
    if ceil32(_2135) <= _2135:
        _2707 = mem[64]
        mem[mem[64]] = _1415 + _2135
        mem[64] = mem[64] + _1415 + _2135 + 32
        _2771 = mem[_2707]
        mem[_1403 + _1415 + _2135 + 64 len ceil32(mem[_2707])] = mem[_2707 + 32 len ceil32(mem[_2707])]
        if ceil32(_2771) <= _2771:
            mem[_1403 + _1415 + _2135 + 32] = _2771
            mem[64] = _1403 + _1415 + _2135 + _2771 + 64
            if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 18
            if sha3(mem[_1403 + _1415 + _2135 + 64 len _2771]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
                revert with 'NH{q', 50
            _3336 = mem[(32 * sha3(mem[_1403 + _1415 + _2135 + 64 len _2771]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
            mem[_1403 + _1415 + _2135 + _2771 + 64] = 32
            _3402 = mem[_3336]
            mem[_1403 + _1415 + _2135 + _2771 + 96] = mem[_3336]
            mem[_1403 + _1415 + _2135 + _2771 + 128 len ceil32(_3402)] = mem[_3336 + 32 len ceil32(_3402)]
            if ceil32(_3402) > _3402:
                mem[_1403 + _1415 + _2135 + _2771 + _3402 + 128] = 0
            return 32, mem[_1403 + _1415 + _2135 + _2771 + 96 len ceil32(_3402) + 32]
        mem[_1403 + _1415 + _2135 + _2771 + 64] = 0
        mem[_1403 + _1415 + _2135 + 32] = _2771
        mem[64] = _1403 + _1415 + _2135 + _2771 + 64
        if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
            revert with 'NH{q', 18
        if sha3(mem[_1403 + _1415 + _2135 + 64 len _2771]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
            revert with 'NH{q', 50
        _3354 = mem[(32 * sha3(mem[_1403 + _1415 + _2135 + 64 len _2771]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
        mem[_1403 + _1415 + _2135 + _2771 + 64] = 32
        _3418 = mem[_3354]
        mem[_1403 + _1415 + _2135 + _2771 + 96] = mem[_3354]
        mem[_1403 + _1415 + _2135 + _2771 + 128 len ceil32(_3418)] = mem[_3354 + 32 len ceil32(_3418)]
        if ceil32(_3418) > _3418:
            mem[_1403 + _1415 + _2135 + _2771 + _3418 + 128] = 0
        return 32, mem[_1403 + _1415 + _2135 + _2771 + 96 len ceil32(_3418) + 32]
    mem[mem[64] + _1415 + _2135 + 32] = 0
    _2723 = mem[64]
    mem[mem[64]] = _1415 + _2135
    mem[64] = mem[64] + _1415 + _2135 + 32
    _2779 = mem[_2723]
    mem[_1403 + _1415 + _2135 + 64 len ceil32(mem[_2723])] = mem[_2723 + 32 len ceil32(mem[_2723])]
    if ceil32(_2779) <= _2779:
        mem[_1403 + _1415 + _2135 + 32] = _2779
        mem[64] = _1403 + _1415 + _2135 + _2779 + 64
        if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
            revert with 'NH{q', 18
        if sha3(mem[_1403 + _1415 + _2135 + 64 len _2779]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
            revert with 'NH{q', 50
        _3338 = mem[(32 * sha3(mem[_1403 + _1415 + _2135 + 64 len _2779]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
        mem[_1403 + _1415 + _2135 + _2779 + 64] = 32
        _3403 = mem[_3338]
        mem[_1403 + _1415 + _2135 + _2779 + 96] = mem[_3338]
        mem[_1403 + _1415 + _2135 + _2779 + 128 len ceil32(_3403)] = mem[_3338 + 32 len ceil32(_3403)]
        if ceil32(_3403) > _3403:
            mem[_1403 + _1415 + _2135 + _2779 + _3403 + 128] = 0
        return 32, mem[_1403 + _1415 + _2135 + _2779 + 96 len ceil32(_3403) + 32]
    mem[_1403 + _1415 + _2135 + _2779 + 64] = 0
    mem[_1403 + _1415 + _2135 + 32] = _2779
    mem[64] = _1403 + _1415 + _2135 + _2779 + 64
    if not mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
        revert with 'NH{q', 18
    if sha3(mem[_1403 + _1415 + _2135 + 64 len _2779]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134] >= mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]:
        revert with 'NH{q', 50
    _3355 = mem[(32 * sha3(mem[_1403 + _1415 + _2135 + 64 len _2779]) % mem[ceil32(ceil32(arg2.length)) + arg2.length + 134]) + ceil32(ceil32(arg2.length)) + arg2.length + 166]
    mem[_1403 + _1415 + _2135 + _2779 + 64] = 32
    _3419 = mem[_3355]
    mem[_1403 + _1415 + _2135 + _2779 + 96] = mem[_3355]
    mem[_1403 + _1415 + _2135 + _2779 + 128 len ceil32(_3419)] = mem[_3355 + 32 len ceil32(_3419)]
    if ceil32(_3419) > _3419:
        mem[_1403 + _1415 + _2135 + _2779 + _3419 + 128] = 0
    return 32, mem[_1403 + _1415 + _2135 + _2779 + 96 len ceil32(_3419) + 32]
}



}
