contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256 arg1)
#  - sub_885ec659(?)
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
address owner;
uint256 sub_bcefaab6;
uint256 sub_595b9b4d;
uint256 price;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
address beneficiaryAddress;
mapping of uint256 winner;

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

function winner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return winner[arg1]
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

function sub_595b9b4d(?) {
    return sub_595b9b4d
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

function sub_bcefaab6(?) {
    return sub_bcefaab6
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

function sub_860d3e69(?) {
    if block.timestamp < sub_bcefaab6:
        return 1
    else:
        if block.timestamp >= sub_595b9b4d:
            return 1
        else:
            return 1
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
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
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

function sub_afbdadcd(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
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
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 23
        winner[mem[(32 * idx) + 140 len 20]] = cd[36]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
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
    if ext_code.size(arg2) <= 0:
    require ext_code.size(arg2)
    call arg2 with:
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
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() {
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
                        mem[idx + 32] = uint256(stor0[s].field_256)
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
                        mem[idx + 32] = uint256(stor0[s].field_256)
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
                    mem[idx + 32] = uint256(stor0[s].field_256)
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
                    mem[idx + 32] = uint256(stor0[s].field_256)
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

function symbol() {
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
                        mem[idx + 32] = uint256(stor1[s].field_256)
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
                        mem[idx + 32] = uint256(stor1[s].field_256)
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
                    mem[idx + 32] = uint256(stor1[s].field_256)
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
                    mem[idx + 32] = uint256(stor1[s].field_256)
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

function sub_24cf69c2(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _107 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_107] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_107 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_107 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _107
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    _108 = mem[64]
    if mem[64] + (32 * ('cd', 36).length) + 32 > test266151307() or mem[64] + (32 * ('cd', 36).length) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_108] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = _108 + 32
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _212 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_212] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_212 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_212 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _212
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    _213 = mem[64]
    if mem[64] + (32 * ('cd', 68).length) + 32 > test266151307() or mem[64] + (32 * ('cd', 68).length) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_213] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = _213 + 32
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _315 = mem[64]
        if mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_315] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_315 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_315 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _315
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = mem[96]
    mem[0] = 19
    if not mem[96]:
        idx = 0
        while sha3(19) + stor19 > idx + sha3(mem[0]):
            if bool(stor[idx + sha3(mem[0])].field_0):
                if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        _418 = mem[_108]
        stor20 = mem[_108]
        mem[0] = 20
        if not _418:
            idx = 0
            while sha3(20) + stor20 > idx + sha3(mem[0]):
                if bool(stor[idx + sha3(mem[0])].field_0):
                    if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
            _516 = mem[_213]
            stor21 = mem[_213]
            mem[0] = 21
            if not _516:
                idx = 0
                while sha3(21) + stor21 > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = _213 + 32
                while _213 + (32 * _516) + 32 > idx:
                    _598 = mem[idx]
                    _599 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _599:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _599) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _598 + 32
                            while _598 + _599 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _599 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _599:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _599) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _598 + 32
                            while _598 + _599 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _599 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(21) + stor21 > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < uint255(stor[idx].field_1):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < stor[idx].field_1 % 128:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
        else:
            s = 0
            idx = _108 + 32
            while _108 + (32 * _418) + 32 > idx:
                _512 = mem[idx]
                _513 = mem[mem[idx]]
                if bool(stor[s + sha3(mem[0])].field_0):
                    if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = s + sha3(mem[0])
                    if not _513:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _513) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _512 + 32
                        while _512 + _513 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _513 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                else:
                    if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = s + sha3(mem[0])
                    if not _513:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _513) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _512 + 32
                        while _512 + _513 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _513 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(20) + stor20 > idx:
                if bool(stor[idx].field_0):
                    if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < uint255(stor[idx].field_1):
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < stor[idx].field_1 % 128:
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
            _604 = mem[_213]
            stor21 = mem[_213]
            mem[0] = 21
            if not _604:
                idx = 0
                while sha3(21) + stor21 > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = _213 + 32
                while _213 + (32 * _604) + 32 > idx:
                    _670 = mem[idx]
                    _671 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _671:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _671) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _670 + 32
                            while _670 + _671 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _671 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _671:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _671) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _670 + 32
                            while _670 + _671 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _671 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(21) + stor21 > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < uint255(stor[idx].field_1):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < stor[idx].field_1 % 128:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            _416 = mem[idx]
            _417 = mem[mem[idx]]
            if bool(stor[s + sha3(mem[0])].field_0):
                if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                    revert with 'NH{q', 34
                mem[0] = s + sha3(mem[0])
                if not _417:
                    uint256(stor[s + sha3(mem[0])].field_0) = 0
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                else:
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _417) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _416 + 32
                    while _416 + _417 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _417 + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            else:
                if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = s + sha3(mem[0])
                if not _417:
                    uint256(stor[s + sha3(mem[0])].field_0) = 0
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                else:
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _417) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _416 + 32
                    while _416 + _417 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _417 + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            s = s + 1
            idx = idx + 32
            continue 
        idx = s
        while sha3(19) + stor19 > idx:
            if bool(stor[idx].field_0):
                if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx].field_0) = 0
                if 31 < uint255(stor[idx].field_1):
                    mem[0] = idx
                    s = sha3(idx)
                    while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx].field_0) = 0
                if 31 < stor[idx].field_1 % 128:
                    mem[0] = idx
                    s = sha3(idx)
                    while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        _517 = mem[_108]
        stor20 = mem[_108]
        mem[0] = 20
        if not _517:
            idx = 0
            while sha3(20) + stor20 > idx + sha3(mem[0]):
                if bool(stor[idx + sha3(mem[0])].field_0):
                    if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
            _605 = mem[_213]
            stor21 = mem[_213]
            mem[0] = 21
            if not _605:
                idx = 0
                while sha3(21) + stor21 > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = _213 + 32
                while _213 + (32 * _605) + 32 > idx:
                    _672 = mem[idx]
                    _673 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _673:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _673) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _672 + 32
                            while _672 + _673 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _673 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _673:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _673) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _672 + 32
                            while _672 + _673 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _673 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(21) + stor21 > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < uint255(stor[idx].field_1):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < stor[idx].field_1 % 128:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
        else:
            s = 0
            idx = _108 + 32
            while _108 + (32 * _517) + 32 > idx:
                _602 = mem[idx]
                _603 = mem[mem[idx]]
                if bool(stor[s + sha3(mem[0])].field_0):
                    if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = s + sha3(mem[0])
                    if not _603:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _603) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _602 + 32
                        while _602 + _603 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _603 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                else:
                    if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = s + sha3(mem[0])
                    if not _603:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _603) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _602 + 32
                        while _602 + _603 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _603 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(20) + stor20 > idx:
                if bool(stor[idx].field_0):
                    if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < uint255(stor[idx].field_1):
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < stor[idx].field_1 % 128:
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
            _676 = mem[_213]
            stor21 = mem[_213]
            mem[0] = 21
            if not _676:
                idx = 0
                while sha3(21) + stor21 > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = _213 + 32
                while _213 + (32 * _676) + 32 > idx:
                    _718 = mem[idx]
                    _719 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _719:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _719) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _718 + 32
                            while _718 + _719 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _719 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _719:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _719) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _718 + 32
                            while _718 + _719 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _719 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(21) + stor21 > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < uint255(stor[idx].field_1):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < stor[idx].field_1 % 128:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
}

function sub_5efa3c45(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _107 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_107] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_107 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_107 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _107
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    _108 = mem[64]
    if mem[64] + (32 * ('cd', 36).length) + 32 > test266151307() or mem[64] + (32 * ('cd', 36).length) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_108] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = _108 + 32
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _212 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_212] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_212 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_212 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _212
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    _213 = mem[64]
    if mem[64] + (32 * ('cd', 68).length) + 32 > test266151307() or mem[64] + (32 * ('cd', 68).length) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_213] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = _213 + 32
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _315 = mem[64]
        if mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_315] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_315 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_315 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _315
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = mem[96]
    mem[0] = 16
    if not mem[96]:
        idx = 0
        while sha3(16) + stor16 > idx + sha3(mem[0]):
            if bool(stor[idx + sha3(mem[0])].field_0):
                if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        _418 = mem[_108]
        stor17 = mem[_108]
        mem[0] = 17
        if not _418:
            idx = 0
            while sha3(17) + stor17 > idx + sha3(mem[0]):
                if bool(stor[idx + sha3(mem[0])].field_0):
                    if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
            _516 = mem[_213]
            stor18 = mem[_213]
            mem[0] = 18
            if not _516:
                idx = 0
                while sha3(18) + stor18 > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = _213 + 32
                while _213 + (32 * _516) + 32 > idx:
                    _598 = mem[idx]
                    _599 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _599:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _599) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _598 + 32
                            while _598 + _599 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _599 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _599:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _599) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _598 + 32
                            while _598 + _599 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _599 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(18) + stor18 > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < uint255(stor[idx].field_1):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < stor[idx].field_1 % 128:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
        else:
            s = 0
            idx = _108 + 32
            while _108 + (32 * _418) + 32 > idx:
                _512 = mem[idx]
                _513 = mem[mem[idx]]
                if bool(stor[s + sha3(mem[0])].field_0):
                    if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = s + sha3(mem[0])
                    if not _513:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _513) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _512 + 32
                        while _512 + _513 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _513 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                else:
                    if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = s + sha3(mem[0])
                    if not _513:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _513) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _512 + 32
                        while _512 + _513 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _513 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(17) + stor17 > idx:
                if bool(stor[idx].field_0):
                    if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < uint255(stor[idx].field_1):
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < stor[idx].field_1 % 128:
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
            _604 = mem[_213]
            stor18 = mem[_213]
            mem[0] = 18
            if not _604:
                idx = 0
                while sha3(18) + stor18 > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = _213 + 32
                while _213 + (32 * _604) + 32 > idx:
                    _670 = mem[idx]
                    _671 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _671:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _671) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _670 + 32
                            while _670 + _671 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _671 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _671:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _671) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _670 + 32
                            while _670 + _671 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _671 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(18) + stor18 > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < uint255(stor[idx].field_1):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < stor[idx].field_1 % 128:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            _416 = mem[idx]
            _417 = mem[mem[idx]]
            if bool(stor[s + sha3(mem[0])].field_0):
                if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                    revert with 'NH{q', 34
                mem[0] = s + sha3(mem[0])
                if not _417:
                    uint256(stor[s + sha3(mem[0])].field_0) = 0
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                else:
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _417) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _416 + 32
                    while _416 + _417 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _417 + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            else:
                if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = s + sha3(mem[0])
                if not _417:
                    uint256(stor[s + sha3(mem[0])].field_0) = 0
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                else:
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _417) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _416 + 32
                    while _416 + _417 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _417 + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            s = s + 1
            idx = idx + 32
            continue 
        idx = s
        while sha3(16) + stor16 > idx:
            if bool(stor[idx].field_0):
                if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx].field_0) = 0
                if 31 < uint255(stor[idx].field_1):
                    mem[0] = idx
                    s = sha3(idx)
                    while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx].field_0) = 0
                if 31 < stor[idx].field_1 % 128:
                    mem[0] = idx
                    s = sha3(idx)
                    while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        _517 = mem[_108]
        stor17 = mem[_108]
        mem[0] = 17
        if not _517:
            idx = 0
            while sha3(17) + stor17 > idx + sha3(mem[0]):
                if bool(stor[idx + sha3(mem[0])].field_0):
                    if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
            _605 = mem[_213]
            stor18 = mem[_213]
            mem[0] = 18
            if not _605:
                idx = 0
                while sha3(18) + stor18 > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = _213 + 32
                while _213 + (32 * _605) + 32 > idx:
                    _672 = mem[idx]
                    _673 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _673:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _673) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _672 + 32
                            while _672 + _673 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _673 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _673:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _673) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _672 + 32
                            while _672 + _673 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _673 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(18) + stor18 > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < uint255(stor[idx].field_1):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < stor[idx].field_1 % 128:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
        else:
            s = 0
            idx = _108 + 32
            while _108 + (32 * _517) + 32 > idx:
                _602 = mem[idx]
                _603 = mem[mem[idx]]
                if bool(stor[s + sha3(mem[0])].field_0):
                    if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = s + sha3(mem[0])
                    if not _603:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _603) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _602 + 32
                        while _602 + _603 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _603 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                else:
                    if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = s + sha3(mem[0])
                    if not _603:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _603) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _602 + 32
                        while _602 + _603 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _603 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(17) + stor17 > idx:
                if bool(stor[idx].field_0):
                    if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < uint255(stor[idx].field_1):
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < stor[idx].field_1 % 128:
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
            _676 = mem[_213]
            stor18 = mem[_213]
            mem[0] = 18
            if not _676:
                idx = 0
                while sha3(18) + stor18 > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = _213 + 32
                while _213 + (32 * _676) + 32 > idx:
                    _718 = mem[idx]
                    _719 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(stor[s + sha3(mem[0])].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _719:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _719) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _718 + 32
                            while _718 + _719 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _719 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (uint255(stor[s + sha3(mem[0])].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _719:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _719) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _718 + 32
                            while _718 + _719 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _719 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(18) + stor18 > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(stor[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < uint255(stor[idx].field_1):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (uint255(stor[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < stor[idx].field_1 % 128:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
}



}
