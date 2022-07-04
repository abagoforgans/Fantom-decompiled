contract main {




// =====================  Runtime code  =====================


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
uint256 price;
uint256 cap;
uint256 stor14;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
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
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function cap() {
    return cap
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
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

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cap = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
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
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeMint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require tokenByIndex.length < cap
    if price > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    mem[100] = msg.sender
    mem[132] = 0xdb0272fb53004dfa6fa2794bc24c55290a6a9682
    mem[164] = 10^18 * price
    require ext_code.size(0x49ac072c793fb9523f0688a0d863aadfbfb5d475)
    call 0x49ac072c793fb9523f0688a0d863aadfbfb5d475.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0xdb0272fb53004dfa6fa2794bc24c55290a6a9682, 10^18 * price
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Could not transfer tokens from your address to this contract'
    mem[ceil32(return_data.size) + 96] = 0
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor14]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor14] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor14
    if arg1:
        if arg1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor14
            stor7[stor14] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor14] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor14]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor14]
        stor9[stor14] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor14] = arg1
    emit Transfer(0, arg1, stor14);
    if ext_code.size(arg1):
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = stor14
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 260] = 0
        mem[ceil32(return_data.size) + 292 len 0] = None
        require ext_code.size(arg1)
        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, stor14, 128, 0
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not ext_call.return_data[0]:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    stor14++
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
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

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if not stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
        if stor10[arg1].field_0:
            if stor10[arg1].field_0 == uint255(stor10[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10[arg1].field_0):
                if 31 >= uint255(stor10[arg1].field_0) * 0.5:
                    mem[128] = 256 * stor10[arg1].field_8
                else:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor10[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 0, 34
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
        if stor10[arg1].field_1:
            mem[ceil32(stor10[arg1].field_1) + 256 len 64] = 0xfe68747470733a2f2f736974656e616d652f666f6c6465722f636172642e6a736f, mem[ceil32(stor10[arg1].field_1) + 193 len 31]
            mem[ceil32(stor10[arg1].field_1) + 289] = 0
            mem[ceil32(stor10[arg1].field_1) + 289 len ceil32(stor10[arg1].field_1)] = mem[128 len ceil32(stor10[arg1].field_1)]
            mem[stor10[arg1].field_1 + ceil32(stor10[arg1].field_1) + 289] = 32
            mem[stor10[arg1].field_1 + ceil32(stor10[arg1].field_1) + 321] = mem[ceil32(stor10[arg1].field_1) + 224]
            mem[stor10[arg1].field_1 + ceil32(stor10[arg1].field_1) + 353 len ceil32(mem[ceil32(stor10[arg1].field_1) + 224])] = mem[ceil32(stor10[arg1].field_1) + 256 len ceil32(mem[ceil32(stor10[arg1].field_1) + 224])]
            if ceil32(mem[ceil32(stor10[arg1].field_1) + 224]) <= mem[ceil32(stor10[arg1].field_1) + 224]:
                return Array(len=mem[ceil32(stor10[arg1].field_1) + 224], data=mem[stor10[arg1].field_1 + ceil32(stor10[arg1].field_1) + 353 len ceil32(mem[ceil32(stor10[arg1].field_1) + 224])]), 
            mem[mem[ceil32(stor10[arg1].field_1) + 224] + stor10[arg1].field_1 + ceil32(stor10[arg1].field_1) + 353] = 0
            return 32, mem[stor10[arg1].field_1 + ceil32(stor10[arg1].field_1) + 321 len ceil32(mem[ceil32(stor10[arg1].field_1) + 224]) + 32], 
        if not ownerOf[arg1]:
            revert with 0, 'ERC721Metadata: URI query for nonexistent token'
        if not arg1:
            mem[ceil32(stor10[arg1].field_1) + 416 len 64] = 0xfe68747470733a2f2f736974656e616d652f666f6c6465722f636172642e6a736f, mem[ceil32(stor10[arg1].field_1) + 289 len 31]
            mem[ceil32(stor10[arg1].field_1) + 449] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor10[arg1].field_1) + 450] = 32
            mem[ceil32(stor10[arg1].field_1) + 482] = mem[ceil32(stor10[arg1].field_1) + 384]
            mem[ceil32(stor10[arg1].field_1) + 514 len ceil32(mem[ceil32(stor10[arg1].field_1) + 384])] = mem[ceil32(stor10[arg1].field_1) + 416 len ceil32(mem[ceil32(stor10[arg1].field_1) + 384])]
            if ceil32(mem[ceil32(stor10[arg1].field_1) + 384]) > mem[ceil32(stor10[arg1].field_1) + 384]:
                mem[mem[ceil32(stor10[arg1].field_1) + 384] + ceil32(stor10[arg1].field_1) + 514] = 0
            return Array(len=mem[ceil32(stor10[arg1].field_1) + 384], data=mem[ceil32(stor10[arg1].field_1) + 514 len ceil32(mem[ceil32(stor10[arg1].field_1) + 384])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor10[arg1].field_1) + 320] = s
        if s:
            mem[ceil32(stor10[arg1].field_1) + 352 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor10[arg1].field_1) + 320]:
                revert with 0, 50
            mem[t + ceil32(stor10[arg1].field_1) + 351 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 384 len 64] = 0xfe68747470733a2f2f736974656e616d652f666f6c6465722f636172642e6a736f, mem[ceil32(stor10[arg1].field_1) + 289 len 31]
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 417] = 0
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 417 len ceil32(mem[ceil32(stor10[arg1].field_1) + 320])] = mem[ceil32(stor10[arg1].field_1) + 352 len ceil32(mem[ceil32(stor10[arg1].field_1) + 320])]
        mem[mem[ceil32(stor10[arg1].field_1) + 320] + ceil32(stor10[arg1].field_1) + ceil32(s) + 417] = 32
        mem[mem[ceil32(stor10[arg1].field_1) + 320] + ceil32(stor10[arg1].field_1) + ceil32(s) + 449] = mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 352]
        mem[mem[ceil32(stor10[arg1].field_1) + 320] + ceil32(stor10[arg1].field_1) + ceil32(s) + 481 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 352])] = mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 384 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 352])]
        if ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 352]) > mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 352]:
            mem[mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 352] + mem[ceil32(stor10[arg1].field_1) + 320] + ceil32(stor10[arg1].field_1) + ceil32(s) + 481] = 0
        return Array(len=mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 352], data=mem[mem[ceil32(stor10[arg1].field_1) + 320] + ceil32(stor10[arg1].field_1) + ceil32(s) + 481 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 352])]), 
    if stor10[arg1].field_0 == uint255(stor10[arg1].field_0) * 0.5 < 32:
        revert with 0, 34
    mem[96] = uint255(stor10[arg1].field_0) * 0.5
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == uint255(stor10[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10[arg1].field_0):
            if 31 >= uint255(stor10[arg1].field_0) * 0.5:
                mem[128] = 256 * stor10[arg1].field_8
            else:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor10[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
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
    if Mask(256, -1, stor10[arg1].field_0):
        mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 256 len 64] = 0xfe68747470733a2f2f736974656e616d652f666f6c6465722f636172642e6a736f, mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 193 len 31]
        mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 289] = 0
        mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 289 len ceil32(uint255(stor10[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor10[arg1].field_0) * 0.5)]
        mem[(uint255(stor10[arg1].field_0) * 0.5) + ceil32(uint255(stor10[arg1].field_0) * 0.5) + 289] = 32
        mem[(uint255(stor10[arg1].field_0) * 0.5) + ceil32(uint255(stor10[arg1].field_0) * 0.5) + 321] = mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 224]
        mem[(uint255(stor10[arg1].field_0) * 0.5) + ceil32(uint255(stor10[arg1].field_0) * 0.5) + 353 len ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 224])] = mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 224])]
        if ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 224]) <= mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 224]:
            return Array(len=mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 224], data=mem[(uint255(stor10[arg1].field_0) * 0.5) + ceil32(uint255(stor10[arg1].field_0) * 0.5) + 353 len ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 224])]), 
        mem[mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 224] + (uint255(stor10[arg1].field_0) * 0.5) + ceil32(uint255(stor10[arg1].field_0) * 0.5) + 353] = 0
        return 32, mem[(uint255(stor10[arg1].field_0) * 0.5) + ceil32(uint255(stor10[arg1].field_0) * 0.5) + 321 len ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 224]) + 32], 
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'ERC721Metadata: URI query for nonexistent token'
    if not arg1:
        mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 416 len 64] = 0xfe68747470733a2f2f736974656e616d652f666f6c6465722f636172642e6a736f, mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 289 len 31]
        mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 449] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 450] = 32
        mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 482] = mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 384]
        mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 514 len ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 384])] = mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 416 len ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 384])]
        if ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 384]) > mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 384]:
            mem[mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 384] + ceil32(uint255(stor10[arg1].field_0) * 0.5) + 514] = 0
        return Array(len=mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 384], data=mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 514 len ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 384])]), 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 320] = s
    if s:
        mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 352 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 320]:
            revert with 0, 50
        mem[t + ceil32(uint255(stor10[arg1].field_0) * 0.5) + 351 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 384 len 64] = 0xfe68747470733a2f2f736974656e616d652f666f6c6465722f636172642e6a736f, mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 289 len 31]
    mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 417] = 0
    mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 417 len ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 320])] = mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 352 len ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 320])]
    mem[64] = mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 320] + ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 417
    mem[mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 320] + ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 417] = 32
    mem[mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 320] + ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 449] = mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 352]
    mem[mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 320] + ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 481 len ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 352])] = mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 384 len ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 352])]
    if ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 352]) > mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 352]:
        mem[mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 352] + mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 320] + ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 481] = 0
    return Array(len=mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 352], data=mem[mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 320] + ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 481 len ceil32(mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + ceil32(s) + 352])]), 
}



}
