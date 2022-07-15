contract main {




// =====================  Runtime code  =====================


#
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
array of uint256 stor11;
mapping of struct stor12;
uint256 sub_e0b7355b;
uint256 sub_9f3824f9;
uint256 sub_a9316298;
uint256 sub_bb7b1da9;
uint256 sub_a8dd2d71;
uint8 mintingActive;
uint8 isPresaleActive; offset 8
uint256 stor18; offset 8
uint256 stor18;
mapping of uint8 stor19;
mapping of uint256 stor20;

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

function mintingActive() {
    return bool(mintingActive)
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function isPresaleActive() {
    return bool(isPresaleActive)
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

function sub_9f3824f9(?) {
    return sub_9f3824f9
}

function sub_a8dd2d71(?) {
    return sub_a8dd2d71
}

function sub_a9316298(?) {
    return sub_a9316298
}

function sub_bb7b1da9(?) {
    return sub_bb7b1da9
}

function sub_e0b7355b(?) {
    return sub_e0b7355b
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function switchPresale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor18.field_8) = Mask(248, 0, not bool(isPresaleActive))
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor19[address(arg1)] > 1:
        revert with 'NH{q', 33
    return (stor19[address(arg1)] == 1)
}

function switchMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor18.field_0) = not bool(mintingActive) or Mask(248, 8, uint256(stor18.field_0))
}

function setMaxQuantityPerMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bb7b1da9 = arg1
}

function setMaxPerPresaleWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9f3824f9 = arg1
}

function setMaxQuantityPerPresaleMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a8dd2d71 = arg1
}

function withdrawBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function addToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        stor19[mem[(32 * idx) + 140 len 20]] = 1
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 20
        stor20[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while uint255(stor11.length.field_1) + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 % 128 + 31 / 32 > idx:
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

function sub_a3c2e900(?) {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + 128 > test266151307() or (32 * ('cd', 36).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _173 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_173] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_173 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_173 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _173
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < cd[4]:
        if tokenByIndex.length < sub_e0b7355b:
            _344 = mem[64]
            mem[64] = mem[64] + 32
            mem[_344] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor8.length]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor8.length] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = tokenByIndex.length
            if msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length
                stor7[stor8.length] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length
                mem[32] = 2
                ownerOf[stor8.length] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) <= 0:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ownerOf[stor8.length]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[0] = tokenByIndex.length
                    mem[32] = 12
                    _379 = mem[mem[(32 * idx) + 128]]
                    if bool(stor12[stor8.length].field_0):
                        if bool(stor12[stor8.length].field_0) == uint255(stor12[stor8.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _379:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _379) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _379 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _379 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor8.length].field_0) == stor12[stor8.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _379:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _379) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _379 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _379 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_344 + s + 32]
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
                    _522 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_522] == Mask(32, 224, mem[_522])
                    if Mask(32, 224, mem[_522]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ownerOf[stor8.length]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[0] = tokenByIndex.length
                    mem[32] = 12
                    _585 = mem[mem[(32 * idx) + 128]]
                    if bool(stor12[stor8.length].field_0):
                        if bool(stor12[stor8.length].field_0) == uint255(stor12[stor8.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _585:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _585) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _585 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _585 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor8.length].field_0) == stor12[stor8.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _585:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _585) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _585 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _585 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
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
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length
                mem[32] = 2
                ownerOf[stor8.length] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) <= 0:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ownerOf[stor8.length]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[0] = tokenByIndex.length
                    mem[32] = 12
                    _384 = mem[mem[(32 * idx) + 128]]
                    if bool(stor12[stor8.length].field_0):
                        if bool(stor12[stor8.length].field_0) == uint255(stor12[stor8.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _384:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _384) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _384 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _384 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor8.length].field_0) == stor12[stor8.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _384:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _384) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _384 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _384 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_344 + s + 32]
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
                    _523 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_523] == Mask(32, 224, mem[_523])
                    if Mask(32, 224, mem[_523]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ownerOf[stor8.length]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[0] = tokenByIndex.length
                    mem[32] = 12
                    _589 = mem[mem[(32 * idx) + 128]]
                    if bool(stor12[stor8.length].field_0):
                        if bool(stor12[stor8.length].field_0) == uint255(stor12[stor8.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _589:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _589) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _589 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _589 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor8.length].field_0) == stor12[stor8.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _589:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _589) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _589 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _589 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_aad583ac(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + 128 > test266151307() or (32 * ('cd', 36).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _183 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_183] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_183 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_183 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _183
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not mintingActive:
        revert with 0, 'Minting is not activated yet.'
    if cd[4] <= 0:
        revert with 0, 'Why are you minting less than zero HauteBytes'
    if tokenByIndex.length > -cd[4] - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + cd[4] > sub_e0b7355b:
        revert with 0, 'Only 999 NFTs are available'
    if cd[4] > sub_bb7b1da9:
        revert with 0, 'Cannot mint this number of Haute Bytes in one go !'
    if sub_a9316298 and cd[4] > -1 / sub_a9316298:
        revert with 'NH{q', 17
    if sub_a9316298 * cd[4] > msg.value:
        revert with 0, 'Fantom sent is not sufficient.'
    idx = 0
    while idx < cd[4]:
        if tokenByIndex.length < sub_e0b7355b:
            _360 = mem[64]
            mem[64] = mem[64] + 32
            mem[_360] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor8.length]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor8.length] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = tokenByIndex.length
            if msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length
                stor7[stor8.length] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length
                mem[32] = 2
                ownerOf[stor8.length] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) <= 0:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ownerOf[stor8.length]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[0] = tokenByIndex.length
                    mem[32] = 12
                    _395 = mem[mem[(32 * idx) + 128]]
                    if bool(stor12[stor8.length].field_0):
                        if bool(stor12[stor8.length].field_0) == uint255(stor12[stor8.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _395:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _395) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _395 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _395 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor8.length].field_0) == stor12[stor8.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _395:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _395) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _395 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _395 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_360 + s + 32]
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
                    _538 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_538] == Mask(32, 224, mem[_538])
                    if Mask(32, 224, mem[_538]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ownerOf[stor8.length]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[0] = tokenByIndex.length
                    mem[32] = 12
                    _601 = mem[mem[(32 * idx) + 128]]
                    if bool(stor12[stor8.length].field_0):
                        if bool(stor12[stor8.length].field_0) == uint255(stor12[stor8.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _601:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _601) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _601 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _601 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor8.length].field_0) == stor12[stor8.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _601:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _601) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _601 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _601 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
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
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length
                mem[32] = 2
                ownerOf[stor8.length] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) <= 0:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ownerOf[stor8.length]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[0] = tokenByIndex.length
                    mem[32] = 12
                    _400 = mem[mem[(32 * idx) + 128]]
                    if bool(stor12[stor8.length].field_0):
                        if bool(stor12[stor8.length].field_0) == uint255(stor12[stor8.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _400:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _400) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _400 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _400 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor8.length].field_0) == stor12[stor8.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _400:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _400) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _400 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _400 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_360 + s + 32]
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
                    _539 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_539] == Mask(32, 224, mem[_539])
                    if Mask(32, 224, mem[_539]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ownerOf[stor8.length]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[0] = tokenByIndex.length
                    mem[32] = 12
                    _605 = mem[mem[(32 * idx) + 128]]
                    if bool(stor12[stor8.length].field_0):
                        if bool(stor12[stor8.length].field_0) == uint255(stor12[stor8.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _605:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _605) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _605 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _605 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor8.length].field_0) == stor12[stor8.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _605:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _605) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _605 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _605 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f440344b(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + 128 > test266151307() or (32 * ('cd', 36).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _286 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_286] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_286 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_286 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _286
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not isPresaleActive:
        revert with 0, 'Presale is not active yet.'
    if cd[4] <= 0:
        revert with 0, 'Why are you minting less than zero HauteBytes'
    if stor19[address(msg.sender)] > 1:
        revert with 'NH{q', 33
    if stor19[address(msg.sender)] != 1:
        revert with 0, 'You are not a whitelisted member!'
    mem[0] = msg.sender
    mem[32] = 20
    if stor20[address(msg.sender)] > -cd[4] - 1:
        revert with 'NH{q', 17
    if stor20[address(msg.sender)] + cd[4] > sub_9f3824f9:
        revert with 0, 'You are minting more than your allowed presale HauteBytes!'
    if tokenByIndex.length > -cd[4] - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + cd[4] > sub_e0b7355b:
        revert with 0, 'Only 999 HauteBytes are available'
    if cd[4] > sub_a8dd2d71:
        revert with 0, 'Cannot mint this number of presale HBs in one go !'
    if sub_a9316298 and cd[4] > -1 / sub_a9316298:
        revert with 'NH{q', 17
    if sub_a9316298 * cd[4] > msg.value:
        revert with 0, 'Fantom sent is not sufficient.'
    idx = 0
    while idx < cd[4]:
        if tokenByIndex.length < sub_e0b7355b:
            _564 = mem[64]
            mem[64] = mem[64] + 32
            mem[_564] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor8.length]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor8.length] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = tokenByIndex.length
            if msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length
                stor7[stor8.length] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length
                mem[32] = 2
                ownerOf[stor8.length] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) <= 0:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ownerOf[stor8.length]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[0] = tokenByIndex.length
                    mem[32] = 12
                    _599 = mem[mem[(32 * idx) + 128]]
                    if bool(stor12[stor8.length].field_0):
                        if bool(stor12[stor8.length].field_0) == uint255(stor12[stor8.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _599:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _599) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _599 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _599 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor8.length].field_0) == stor12[stor8.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _599:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _599) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _599 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _599 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_564 + s + 32]
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
                    _854 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_854] == Mask(32, 224, mem[_854])
                    if Mask(32, 224, mem[_854]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ownerOf[stor8.length]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[0] = tokenByIndex.length
                    mem[32] = 12
                    _933 = mem[mem[(32 * idx) + 128]]
                    if bool(stor12[stor8.length].field_0):
                        if bool(stor12[stor8.length].field_0) == uint255(stor12[stor8.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _933:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _933) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _933 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _933 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor8.length].field_0) == stor12[stor8.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _933:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _933) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _933 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _933 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
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
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length
                mem[32] = 2
                ownerOf[stor8.length] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) <= 0:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ownerOf[stor8.length]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[0] = tokenByIndex.length
                    mem[32] = 12
                    _604 = mem[mem[(32 * idx) + 128]]
                    if bool(stor12[stor8.length].field_0):
                        if bool(stor12[stor8.length].field_0) == uint255(stor12[stor8.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _604:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _604) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _604 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _604 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor8.length].field_0) == stor12[stor8.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _604:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _604) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _604 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _604 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_564 + s + 32]
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
                    _855 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_855] == Mask(32, 224, mem[_855])
                    if Mask(32, 224, mem[_855]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ownerOf[stor8.length]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[0] = tokenByIndex.length
                    mem[32] = 12
                    _937 = mem[mem[(32 * idx) + 128]]
                    if bool(stor12[stor8.length].field_0):
                        if bool(stor12[stor8.length].field_0) == uint255(stor12[stor8.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _937:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _937) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _937 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _937 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (uint255(stor12[stor8.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor8.length].field_0) == stor12[stor8.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(tokenByIndex.length, 12)
                        if not _937:
                            stor12[stor8.length].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length, 12))
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor8.length].field_0 = (2 * _937) + 1
                            s = sha3(sha3(tokenByIndex.length, 12))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _937 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length, 12)) + (Mask(251, 0, _937 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length, 12)) + (stor12[stor8.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
            if stor20[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 20
            stor20[address(msg.sender)]++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
