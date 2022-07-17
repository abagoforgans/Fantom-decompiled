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
mapping of uint256 sub_cfd83515;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
address owner;
uint256 sub_fd06736e;
uint256 sub_450ad111;
uint256 sub_37482414;
uint256 _reserved;
array of struct stor15;
array of address adminList;
mapping of uint8 stor18;
uint8 saleIsActive;
uint8 reserved; offset 8
uint8 sub_7667fd0f; offset 16
uint256 stor19; offset 16
uint256 stor19; offset 8
uint256 stor19;
mapping of uint8 stor20;
mapping of struct stor21;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function adminList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < adminList.length
    return adminList[arg1]
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
    return sub_cfd83515[address(arg1)][arg2]
}

function sub_37482414(?) {
    return sub_37482414
}

function admins(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[arg1])
}

function sub_450ad111(?) {
    return sub_450ad111
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

function _reserved() {
    return _reserved
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_7667fd0f(?) {
    return bool(sub_7667fd0f)
}

function owner() {
    return owner
}

function sub_cfd83515(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return sub_cfd83515[address(arg1)][arg2]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function saleIsActive() {
    return bool(saleIsActive)
}

function sub_fd06736e(?) {
    return sub_fd06736e
}

function reserved() {
    return bool(reserved)
}

function _fallback() payable {
    revert
}

function freezeAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor19.field_16) = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setReserveAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor18[address(msg.sender)]:
        revert with 0, 'Not admin'
    _reserved = arg1
}

function enableAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18[address(arg1)] = 1
}

function disableAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18[address(arg1)] = 0
}

function flipSaleState() {
    if not stor18[address(msg.sender)]:
        revert with 0, 'Not admin'
    uint256(stor19.field_0) = not bool(saleIsActive) or Mask(248, 8, uint256(stor19.field_0))
    emit RolledOver(bool(saleIsActive));
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor18[address(msg.sender)]:
        revert with 0, 'Not admin'
    if arg1 <= 0:
        revert with 0, 'Zero price'
    sub_fd06736e = arg1
    emit 0xf8b04239: arg1
}

function setMaxPurchase(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor18[address(msg.sender)]:
        revert with 0, 'Not admin'
    if arg1 <= 0:
        revert with 0, 'Very low value'
    sub_450ad111 = arg1
    emit MaxPurchaseChanged(arg1);
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

function setMaxTokenAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor18[address(msg.sender)]:
        revert with 0, 'Not admin'
    if arg1 <= tokenByIndex.length:
        revert with 0, 'Wrong value for max supply'
    if arg1 > 10000:
        revert with 0, 'Wrong value for max supply'
    sub_37482414 = arg1
    emit MaxTokenAmountChanged(arg1);
}

function withdraw() {
    if not stor18[address(msg.sender)]:
        revert with 0, 'Not admin'
    if not adminList.length:
        revert with 'NH{q', 18
    idx = 0
    while idx < adminList.length:
        mem[0] = 17
        call adminList[idx] with:
           value eth.balance(this.address) / adminList.length wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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

function walletOfOwner(address arg1) {
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
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 6)
        if idx >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = sub_cfd83515[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function setBaseTokenURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor18[address(msg.sender)]:
        revert with 0, 'Not admin'
    if sub_7667fd0f:
        revert with 0, 'Already frozen'
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor18[address(msg.sender)]:
        revert with 0, 'Not admin'
    if sub_7667fd0f:
        revert with 0, 'Already frozen'
    if stor20[arg1]:
        revert with 0, 'Already frozen'
    if stor21[arg1].field_0:
        if stor21[arg1].field_0 == stor21[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor21[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor21[arg1].field_0 = 0
            idx = 0
            while stor21[arg1].field_1 + 31 / 32 > idx:
                stor21[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor21[arg1].field_0 == stor21[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor21[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor21[arg1].field_0 = 0
            idx = 0
            while stor21[arg1].field_1 + 31 / 32 > idx:
                stor21[arg1][idx].field_0 = 0
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
                sub_cfd83515[address(arg1)][stor7[arg3]] = sub_cfd83515[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            sub_cfd83515[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            sub_cfd83515[address(arg2)][stor3[address(arg2)]] = arg3
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
                sub_cfd83515[address(arg1)][stor7[arg3]] = sub_cfd83515[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            sub_cfd83515[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            sub_cfd83515[address(arg2)][stor3[address(arg2)]] = arg3
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

function _baseTokenURI() {
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) > stor15.length.field_1:
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
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
                sub_cfd83515[address(arg1)][stor7[arg3]] = sub_cfd83515[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            sub_cfd83515[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            sub_cfd83515[address(arg2)][stor3[address(arg2)]] = arg3
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

function sub_3a8419b5(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[0] = msg.sender
    mem[32] = 18
    if not stor18[address(msg.sender)]:
        revert with 0, 'Not admin'
    if reserved:
        revert with 0, 'Tokens reserved'
    if arg2 > _reserved:
        revert with 0, 'Exceeds reserved Cat supply'
    idx = 0
    while idx < arg2:
        if tokenByIndex.length > -idx - 1:
            revert with 'NH{q', 17
        _100 = mem[64]
        mem[64] = mem[64] + 32
        mem[_100] = 0
        if not address(arg1):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8.length + idx]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor8.length + idx] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
        if address(arg1):
            sub_cfd83515[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length + idx
            stor7[stor8.length + idx] = balanceOf[address(arg1)]
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = tokenByIndex.length + idx
            mem[32] = 2
            ownerOf[stor8.length + idx] = address(arg1)
            emit Transfer(0, address(arg1), tokenByIndex.length + idx);
            if ext_code.size(address(arg1)) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + idx
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_100 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(arg1))
                call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor8.length + idx] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
            stor9[stor8.length + idx] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = tokenByIndex.length + idx
            mem[32] = 2
            ownerOf[stor8.length + idx] = address(arg1)
            emit Transfer(0, address(arg1), tokenByIndex.length + idx);
            if ext_code.size(address(arg1)) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + idx
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_100 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(arg1))
                call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                _195 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_195] == Mask(32, 224, mem[_195])
                if Mask(32, 224, mem[_195]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if _reserved < arg2:
        revert with 'NH{q', 17
    _reserved -= arg2
    Mask(248, 0, stor19.field_8) = 1
    emit 0x1822945c 
}

function sub_27b15659(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not saleIsActive:
        revert with 0, 'Sale is not active'
    if arg1 <= 0:
        revert with 0, 'Cannot buy 0'
    if sub_450ad111 > -2:
        revert with 'NH{q', 17
    if arg1 >= sub_450ad111 + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds max number of DBRs in one transaction'
    if sub_37482414 < _reserved:
        revert with 'NH{q', 17
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1 >= sub_37482414 - _reserved:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase would exceed max supply of DBRs'
    if sub_fd06736e and arg1 > -1 / sub_fd06736e:
        revert with 'NH{q', 17
    if sub_fd06736e * arg1 > msg.value:
        revert with 0, 'Ether value sent is not correct'
    idx = 0
    s = 0
    while idx < arg1:
        if tokenByIndex.length > -idx - 1:
            revert with 'NH{q', 17
        _99 = mem[64]
        mem[64] = mem[64] + 32
        mem[_99] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8.length + idx]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor8.length + idx] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
        if msg.sender:
            sub_cfd83515[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
            stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = tokenByIndex.length + idx
            mem[32] = 2
            ownerOf[stor8.length + idx] = msg.sender
            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + idx
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
                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
            if stor9[stor8.length + idx] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
            stor9[stor8.length + idx] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = tokenByIndex.length + idx
            mem[32] = 2
            ownerOf[stor8.length + idx] = msg.sender
            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + idx
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
                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
        s = tokenByIndex.length + idx
        continue 
}

function freeze(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20[arg1] = 1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor15.length.field_1
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor15.length.field_1:
                if stor15.length.field_1 <= 0:
                    emit PermanentURI('', arg1);
                else:
                    if not arg1:
                        mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        emit PermanentURI(Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), arg1);
                    else:
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
                        mem[ceil32(stor15.length.field_1) + 128] = s
                        if not s:
                            t = s
                            idx = arg1
                            while idx:
                                if t < 1:
                                    revert with 'NH{q', 17
                                if 48 > -(idx % 10) - 1:
                                    revert with 'NH{q', 17
                                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                    revert with 'NH{q', 50
                                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3673 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3673)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3673)]
                                    if ceil32(_3673) > _3673:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3673 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3673) + 32],
                                                      arg1,
                                else:
                                    _3705 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3705)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3705)]
                                    if ceil32(_3705) > _3705:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3705 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3705) + 32],
                                                      arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3674 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3674)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3674)]
                                    if ceil32(_3674) > _3674:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3674 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3674) + 32],
                                                      arg1,
                                else:
                                    _3706 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3706)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3706)]
                                    if ceil32(_3706) > _3706:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3706 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3706) + 32],
                                                      arg1,
                        else:
                            mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                            t = s
                            idx = arg1
                            while idx:
                                if t < 1:
                                    revert with 'NH{q', 17
                                if 48 > -(idx % 10) - 1:
                                    revert with 'NH{q', 17
                                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                    revert with 'NH{q', 50
                                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3675 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3675)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3675)]
                                    if ceil32(_3675) > _3675:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3675 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3675) + 32],
                                                      arg1,
                                else:
                                    _3707 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3707)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3707)]
                                    if ceil32(_3707) > _3707:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3707 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3707) + 32],
                                                      arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3676 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3676)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3676)]
                                    if ceil32(_3676) > _3676:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3676 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3676) + 32],
                                                      arg1,
                                else:
                                    _3708 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3708)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3708)]
                                    if ceil32(_3708) > _3708:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3708 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3708) + 32],
                                                      arg1,
            else:
                if 31 >= stor15.length.field_1:
                    mem[128] = 256 * stor15.length.field_8
                    if stor15.length.field_1 <= 0:
                        emit PermanentURI('', arg1);
                    else:
                        if not arg1:
                            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            emit PermanentURI(Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), arg1);
                        else:
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
                            mem[ceil32(stor15.length.field_1) + 128] = s
                            if not s:
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3677 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3677)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3677)]
                                        if ceil32(_3677) > _3677:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3677 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3677) + 32],
                                                          arg1,
                                    else:
                                        _3709 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3709)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3709)]
                                        if ceil32(_3709) > _3709:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3709 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3709) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3678 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3678)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3678)]
                                        if ceil32(_3678) > _3678:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3678 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3678) + 32],
                                                          arg1,
                                    else:
                                        _3710 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3710)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3710)]
                                        if ceil32(_3710) > _3710:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3710 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3710) + 32],
                                                          arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3679 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3679)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3679)]
                                        if ceil32(_3679) > _3679:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3679 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3679) + 32],
                                                          arg1,
                                    else:
                                        _3711 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3711)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3711)]
                                        if ceil32(_3711) > _3711:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3711 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3711) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3680 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3680)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3680)]
                                        if ceil32(_3680) > _3680:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3680 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3680) + 32],
                                                          arg1,
                                    else:
                                        _3712 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3712)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3712)]
                                        if ceil32(_3712) > _3712:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3712 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3712) + 32],
                                                          arg1,
                else:
                    mem[0] = 15
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor15.length.field_1 <= 0:
                        emit PermanentURI('', arg1);
                    else:
                        if not arg1:
                            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            emit PermanentURI(Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), arg1);
                        else:
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
                            mem[ceil32(stor15.length.field_1) + 128] = s
                            if not s:
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4409 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4409)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4409)]
                                        if ceil32(_4409) > _4409:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4409 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4409) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4425 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4425)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4425)]
                                        if ceil32(_4425) > _4425:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4425 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4425) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4410 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4410)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4410)]
                                        if ceil32(_4410) > _4410:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4410 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4410) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4426 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4426)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4426)]
                                        if ceil32(_4426) > _4426:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4426 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4426) + 32],
                                                          arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4411 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4411)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4411)]
                                        if ceil32(_4411) > _4411:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4411 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4411) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4427 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4427)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
                                        if ceil32(_4427) > _4427:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4427 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4427) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4412 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4412)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4412)]
                                        if ceil32(_4412) > _4412:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4412 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4412) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4428 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4428)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
                                        if ceil32(_4428) > _4428:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4428 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4428) + 32],
                                                          arg1,
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor15.length.field_1:
                if stor15.length.field_1 <= 0:
                    emit PermanentURI('', arg1);
                else:
                    if not arg1:
                        mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        emit PermanentURI(Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), arg1);
                    else:
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
                        mem[ceil32(stor15.length.field_1) + 128] = s
                        if not s:
                            t = s
                            idx = arg1
                            while idx:
                                if t < 1:
                                    revert with 'NH{q', 17
                                if 48 > -(idx % 10) - 1:
                                    revert with 'NH{q', 17
                                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                    revert with 'NH{q', 50
                                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3681 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3681)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3681)]
                                    if ceil32(_3681) > _3681:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3681 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3681) + 32],
                                                      arg1,
                                else:
                                    _3713 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3713)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3713)]
                                    if ceil32(_3713) > _3713:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3713 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3713) + 32],
                                                      arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3682 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3682)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3682)]
                                    if ceil32(_3682) > _3682:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3682 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3682) + 32],
                                                      arg1,
                                else:
                                    _3714 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3714)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3714)]
                                    if ceil32(_3714) > _3714:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3714 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3714) + 32],
                                                      arg1,
                        else:
                            mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                            t = s
                            idx = arg1
                            while idx:
                                if t < 1:
                                    revert with 'NH{q', 17
                                if 48 > -(idx % 10) - 1:
                                    revert with 'NH{q', 17
                                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                    revert with 'NH{q', 50
                                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3683 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3683)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3683)]
                                    if ceil32(_3683) > _3683:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3683 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3683) + 32],
                                                      arg1,
                                else:
                                    _3715 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3715)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3715)]
                                    if ceil32(_3715) > _3715:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3715 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3715) + 32],
                                                      arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3684 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3684)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3684)]
                                    if ceil32(_3684) > _3684:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3684 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3684) + 32],
                                                      arg1,
                                else:
                                    _3716 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3716)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3716)]
                                    if ceil32(_3716) > _3716:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3716 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3716) + 32],
                                                      arg1,
            else:
                if 31 >= stor15.length.field_1:
                    mem[128] = 256 * stor15.length.field_8
                    if stor15.length.field_1 <= 0:
                        emit PermanentURI('', arg1);
                    else:
                        if not arg1:
                            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            emit PermanentURI(Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), arg1);
                        else:
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
                            mem[ceil32(stor15.length.field_1) + 128] = s
                            if not s:
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3685 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3685)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3685)]
                                        if ceil32(_3685) > _3685:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3685 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3685) + 32],
                                                          arg1,
                                    else:
                                        _3717 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3717)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3717)]
                                        if ceil32(_3717) > _3717:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3717 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3717) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3686 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3686)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3686)]
                                        if ceil32(_3686) > _3686:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3686 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3686) + 32],
                                                          arg1,
                                    else:
                                        _3718 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3718)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3718)]
                                        if ceil32(_3718) > _3718:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3718 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3718) + 32],
                                                          arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3687 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3687)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3687)]
                                        if ceil32(_3687) > _3687:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3687 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3687) + 32],
                                                          arg1,
                                    else:
                                        _3719 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3719)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3719)]
                                        if ceil32(_3719) > _3719:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3719 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3719) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3688 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3688)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3688)]
                                        if ceil32(_3688) > _3688:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3688 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3688) + 32],
                                                          arg1,
                                    else:
                                        _3720 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3720)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3720)]
                                        if ceil32(_3720) > _3720:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3720 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3720) + 32],
                                                          arg1,
                else:
                    mem[0] = 15
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor15.length.field_1 <= 0:
                        emit PermanentURI('', arg1);
                    else:
                        if not arg1:
                            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            emit PermanentURI(Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), arg1);
                        else:
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
                            mem[ceil32(stor15.length.field_1) + 128] = s
                            if not s:
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4413 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4413)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4413)]
                                        if ceil32(_4413) > _4413:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4413 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4413) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4429 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4429)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
                                        if ceil32(_4429) > _4429:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4429 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4429) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4414 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4414)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4414)]
                                        if ceil32(_4414) > _4414:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4414 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4414) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4430 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4430)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                                        if ceil32(_4430) > _4430:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4430 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4430) + 32],
                                                          arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4415 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4415)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4415)]
                                        if ceil32(_4415) > _4415:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4415 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4415) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4431 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4431)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
                                        if ceil32(_4431) > _4431:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4431 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4431) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4416 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4416)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4416)]
                                        if ceil32(_4416) > _4416:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4416 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4416) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4432 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4432)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
                                        if ceil32(_4432) > _4432:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4432 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4432) + 32],
                                                          arg1,
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor15.length.field_1
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor15.length.field_1:
                if stor15.length.field_1 <= 0:
                    emit PermanentURI('', arg1);
                else:
                    if not arg1:
                        mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        emit PermanentURI(Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), arg1);
                    else:
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
                        mem[ceil32(stor15.length.field_1) + 128] = s
                        if not s:
                            t = s
                            idx = arg1
                            while idx:
                                if t < 1:
                                    revert with 'NH{q', 17
                                if 48 > -(idx % 10) - 1:
                                    revert with 'NH{q', 17
                                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                    revert with 'NH{q', 50
                                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3689 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3689)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3689)]
                                    if ceil32(_3689) > _3689:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3689 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3689) + 32],
                                                      arg1,
                                else:
                                    _3721 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3721)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3721)]
                                    if ceil32(_3721) > _3721:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3721 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3721) + 32],
                                                      arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3690 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3690)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3690)]
                                    if ceil32(_3690) > _3690:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3690 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3690) + 32],
                                                      arg1,
                                else:
                                    _3722 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3722)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
                                    if ceil32(_3722) > _3722:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3722 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3722) + 32],
                                                      arg1,
                        else:
                            mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                            t = s
                            idx = arg1
                            while idx:
                                if t < 1:
                                    revert with 'NH{q', 17
                                if 48 > -(idx % 10) - 1:
                                    revert with 'NH{q', 17
                                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                    revert with 'NH{q', 50
                                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3691 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3691)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3691)]
                                    if ceil32(_3691) > _3691:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3691 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3691) + 32],
                                                      arg1,
                                else:
                                    _3723 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3723)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
                                    if ceil32(_3723) > _3723:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3723 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3723) + 32],
                                                      arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3692 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3692)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3692)]
                                    if ceil32(_3692) > _3692:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3692 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3692) + 32],
                                                      arg1,
                                else:
                                    _3724 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3724)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
                                    if ceil32(_3724) > _3724:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3724 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3724) + 32],
                                                      arg1,
            else:
                if 31 >= stor15.length.field_1:
                    mem[128] = 256 * stor15.length.field_8
                    if stor15.length.field_1 <= 0:
                        emit PermanentURI('', arg1);
                    else:
                        if not arg1:
                            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            emit PermanentURI(Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), arg1);
                        else:
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
                            mem[ceil32(stor15.length.field_1) + 128] = s
                            if not s:
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3693 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3693)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3693)]
                                        if ceil32(_3693) > _3693:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3693 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3693) + 32],
                                                          arg1,
                                    else:
                                        _3725 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3725)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
                                        if ceil32(_3725) > _3725:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3725 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3725) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3694 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3694)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3694)]
                                        if ceil32(_3694) > _3694:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3694 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3694) + 32],
                                                          arg1,
                                    else:
                                        _3726 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3726)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
                                        if ceil32(_3726) > _3726:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3726 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3726) + 32],
                                                          arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3695 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3695)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3695)]
                                        if ceil32(_3695) > _3695:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3695 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3695) + 32],
                                                          arg1,
                                    else:
                                        _3727 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3727)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
                                        if ceil32(_3727) > _3727:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3727 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3727) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3696 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3696)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3696)]
                                        if ceil32(_3696) > _3696:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3696 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3696) + 32],
                                                          arg1,
                                    else:
                                        _3728 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3728)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
                                        if ceil32(_3728) > _3728:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3728 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3728) + 32],
                                                          arg1,
                else:
                    mem[0] = 15
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor15.length.field_1 <= 0:
                        emit PermanentURI('', arg1);
                    else:
                        if not arg1:
                            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            emit PermanentURI(Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), arg1);
                        else:
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
                            mem[ceil32(stor15.length.field_1) + 128] = s
                            if not s:
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4417 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4417)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4417)]
                                        if ceil32(_4417) > _4417:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4417 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4417) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4433 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4433)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
                                        if ceil32(_4433) > _4433:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4433 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4433) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4418 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4418)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4418)]
                                        if ceil32(_4418) > _4418:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4418 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4418) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4434 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4434)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
                                        if ceil32(_4434) > _4434:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4434 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4434) + 32],
                                                          arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4419 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4419)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4419)]
                                        if ceil32(_4419) > _4419:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4419 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4419) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4435 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4435)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
                                        if ceil32(_4435) > _4435:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4435 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4435) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4420 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4420)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4420)]
                                        if ceil32(_4420) > _4420:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4420 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4420) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4436 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4436)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
                                        if ceil32(_4436) > _4436:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4436 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4436) + 32],
                                                          arg1,
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor15.length.field_1:
                if stor15.length.field_1 <= 0:
                    emit PermanentURI('', arg1);
                else:
                    if not arg1:
                        mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        emit PermanentURI(Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), arg1);
                    else:
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
                        mem[ceil32(stor15.length.field_1) + 128] = s
                        if not s:
                            t = s
                            idx = arg1
                            while idx:
                                if t < 1:
                                    revert with 'NH{q', 17
                                if 48 > -(idx % 10) - 1:
                                    revert with 'NH{q', 17
                                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                    revert with 'NH{q', 50
                                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3697 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3697)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3697)]
                                    if ceil32(_3697) > _3697:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3697 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3697) + 32],
                                                      arg1,
                                else:
                                    _3729 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3729)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
                                    if ceil32(_3729) > _3729:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3729 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3729) + 32],
                                                      arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3698 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3698)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3698)]
                                    if ceil32(_3698) > _3698:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3698 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3698) + 32],
                                                      arg1,
                                else:
                                    _3730 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3730)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                                    if ceil32(_3730) > _3730:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3730 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3730) + 32],
                                                      arg1,
                        else:
                            mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                            t = s
                            idx = arg1
                            while idx:
                                if t < 1:
                                    revert with 'NH{q', 17
                                if 48 > -(idx % 10) - 1:
                                    revert with 'NH{q', 17
                                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                    revert with 'NH{q', 50
                                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3699 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3699)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3699)]
                                    if ceil32(_3699) > _3699:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3699 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3699) + 32],
                                                      arg1,
                                else:
                                    _3731 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3731)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
                                    if ceil32(_3731) > _3731:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3731 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3731) + 32],
                                                      arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                    _3700 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3700)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3700)]
                                    if ceil32(_3700) > _3700:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3700 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3700) + 32],
                                                      arg1,
                                else:
                                    _3732 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3732)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
                                    if ceil32(_3732) > _3732:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3732 + 256] = 0
                                    emit PermanentURI(string arg1, uint256 arg2):
                                                      32,
                                                      mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3732) + 32],
                                                      arg1,
            else:
                if 31 >= stor15.length.field_1:
                    mem[128] = 256 * stor15.length.field_8
                    if stor15.length.field_1 <= 0:
                        emit PermanentURI('', arg1);
                    else:
                        if not arg1:
                            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            emit PermanentURI(Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), arg1);
                        else:
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
                            mem[ceil32(stor15.length.field_1) + 128] = s
                            if not s:
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3701 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3701)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3701)]
                                        if ceil32(_3701) > _3701:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3701 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3701) + 32],
                                                          arg1,
                                    else:
                                        _3733 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3733)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
                                        if ceil32(_3733) > _3733:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3733 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3733) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3702 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3702)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3702)]
                                        if ceil32(_3702) > _3702:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3702 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3702) + 32],
                                                          arg1,
                                    else:
                                        _3734 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3734)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3734)]
                                        if ceil32(_3734) > _3734:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3734 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3734) + 32],
                                                          arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3703 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3703)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3703)]
                                        if ceil32(_3703) > _3703:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3703 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3703) + 32],
                                                          arg1,
                                    else:
                                        _3735 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3735)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3735)]
                                        if ceil32(_3735) > _3735:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3735 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3735) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        _3704 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3704)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3704)]
                                        if ceil32(_3704) > _3704:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3704 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3704) + 32],
                                                          arg1,
                                    else:
                                        _3736 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_3736)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3736)]
                                        if ceil32(_3736) > _3736:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _3736 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_3736) + 32],
                                                          arg1,
                else:
                    mem[0] = 15
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor15.length.field_1 <= 0:
                        emit PermanentURI('', arg1);
                    else:
                        if not arg1:
                            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            emit PermanentURI(Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), arg1);
                        else:
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
                            mem[ceil32(stor15.length.field_1) + 128] = s
                            if not s:
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4421 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4421)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4421)]
                                        if ceil32(_4421) > _4421:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4421 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4421) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4437 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4437)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
                                        if ceil32(_4437) > _4437:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4437 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4437) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4422 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4422)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4422)]
                                        if ceil32(_4422) > _4422:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4422 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4422) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4438 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4438)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4438)]
                                        if ceil32(_4438) > _4438:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4438 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4438) + 32],
                                                          arg1,
                            else:
                                mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                                t = s
                                idx = arg1
                                while idx:
                                    if t < 1:
                                        revert with 'NH{q', 17
                                    if 48 > -(idx % 10) - 1:
                                        revert with 'NH{q', 17
                                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                        revert with 'NH{q', 50
                                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4423 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4423)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4423)]
                                        if ceil32(_4423) > _4423:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4423 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4423) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4439 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4439)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4439)]
                                        if ceil32(_4439) > _4439:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4439 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4439) + 32],
                                                          arg1,
                                else:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4424 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4424)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4424)]
                                        if ceil32(_4424) > _4424:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4424 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4424) + 32],
                                                          arg1,
                                    else:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 32
                                        _4440 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 256 len ceil32(_4440)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4440)]
                                        if ceil32(_4440) > _4440:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + _4440 + 256] = 0
                                        emit PermanentURI(string arg1, uint256 arg2):
                                                          32,
                                                          mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 224 len ceil32(_4440) + 32],
                                                          arg1,
}



}
