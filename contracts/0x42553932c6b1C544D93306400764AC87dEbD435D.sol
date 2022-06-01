contract main {




// =====================  Runtime code  =====================


const sub_5e392647(?) = 1000


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
uint256 stor11;
uint256 price;
array of struct stor13;
uint8 saleOpen;
address stor14; offset 8
uint256 stor14;
address stor15;
address stor16;
address stor17;
address stor18;
uint8 stor20;

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

function saleOpen() {
    return bool(saleOpen)
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function flipSaleState() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor14.field_0) = not bool(saleOpen) or Mask(248, 8, uint256(stor14.field_0))
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

function withdraw() payable {
    call address(stor14.field_8) with:
       value eth.balance(this.address) / 4 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor15 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor16 with:
       value eth.balance(this.address) / 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor17 with:
       value eth.balance(this.address) / 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor18 with:
       value eth.balance(this.address) / 20 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
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

function privateBuyTrollz() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == stor15
    if stor20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You already called this function.'
    idx = 0
    while idx < 10:
        stor11++
        _103 = mem[64]
        mem[64] = mem[64] + 32
        mem[_103] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor11]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor11] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor11
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor11
            stor7[stor11] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor11
            mem[32] = 2
            ownerOf[stor11] = msg.sender
            emit Transfer(0, msg.sender, stor11);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor11
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_103 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor11, 128, 0
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
                _209 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_209] == Mask(32, 224, mem[_209])
                if Mask(32, 224, mem[_209]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor11] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor11]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor11]
            stor9[stor11] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor11
            mem[32] = 2
            ownerOf[stor11] = msg.sender
            emit Transfer(0, msg.sender, stor11);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor11
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_103 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor11, 128, 0
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
                _210 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_210] == Mask(32, 224, mem[_210])
                if Mask(32, 224, mem[_210]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        mem[mem[64]] = stor11
        emit TrollzMinted(stor11);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor20 = 1
}

function buyTrollz(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number <= 0:
        revert with 0, 'You can't mint yet.'
    if not saleOpen:
        revert with 0, 'Sale is not open yet'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have to mint between 1 and 20 Trollz.'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have to mint between 1 and 20 Trollz.'
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1 > 1000:
        revert with 0, 'Trollz cap will be exceeded.'
    if price and arg1 > -1 / price:
        revert with 'NH{q', 17
    if msg.value < price * arg1:
        revert with 0, 'Ether amount is not correct'
    idx = 0
    while idx < arg1:
        stor11++
        _113 = mem[64]
        mem[64] = mem[64] + 32
        mem[_113] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor11]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor11] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor11
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor11
            stor7[stor11] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor11
            mem[32] = 2
            ownerOf[stor11] = msg.sender
            emit Transfer(0, msg.sender, stor11);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor11
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_113 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor11, 128, 0
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
                _219 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_219] == Mask(32, 224, mem[_219])
                if Mask(32, 224, mem[_219]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor11] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor11]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor11]
            stor9[stor11] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor11
            mem[32] = 2
            ownerOf[stor11] = msg.sender
            emit Transfer(0, msg.sender, stor11);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor11
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_113 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor11, 128, 0
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
                _220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_220] == Mask(32, 224, mem[_220])
                if Mask(32, 224, mem[_220]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        mem[mem[64]] = stor11
        emit TrollzMinted(stor11);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function earlyBuyTrollz(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number <= 13103460:
        revert with 0, 'You can't mint yet.'
    if not saleOpen:
        revert with 0, 'Sale is not open yet'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have to mint between 1 and 5 Trollz.'
    if arg1 > 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have to mint between 1 and 5 Trollz.'
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1 > 1000:
        revert with 0, 'Trollz cap will be exceeded.'
    if price and arg1 > -1 / price:
        revert with 'NH{q', 17
    if msg.value < price * arg1:
        revert with 0, 'Ether amount is not correct'
    idx = 0
    while idx < arg1:
        stor11++
        _113 = mem[64]
        mem[64] = mem[64] + 32
        mem[_113] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor11]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor11] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor11
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor11
            stor7[stor11] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor11
            mem[32] = 2
            ownerOf[stor11] = msg.sender
            emit Transfer(0, msg.sender, stor11);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor11
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_113 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor11, 128, 0
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
                _219 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_219] == Mask(32, 224, mem[_219])
                if Mask(32, 224, mem[_219]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor11] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor11]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor11]
            stor9[stor11] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor11
            mem[32] = 2
            ownerOf[stor11] = msg.sender
            emit Transfer(0, msg.sender, stor11);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor11
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_113 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor11, 128, 0
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
                _220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_220] == Mask(32, 224, mem[_220])
                if Mask(32, 224, mem[_220]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        mem[mem[64]] = stor11
        emit TrollzMinted(stor11);
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor13.length.field_1
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 >= stor13.length.field_1:
                    mem[128] = 256 * stor13.length.field_8
                else:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
            if stor13.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = '0'
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor13.length.field_1) + 192]) > mem[ceil32(stor13.length.field_1) + 192]:
                    mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
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
            mem[ceil32(stor13.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            if ceil32(stor13.length.field_1) > stor13.length.field_1:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor13.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor13.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor13.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor13.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + mem[ceil32(stor13.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor13.length.field_1:
            if stor13.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = '0'
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor13.length.field_1) + 192]) > mem[ceil32(stor13.length.field_1) + 192]:
                    mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
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
            mem[ceil32(stor13.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            if ceil32(stor13.length.field_1) > stor13.length.field_1:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
        else:
            if 31 >= stor13.length.field_1:
                mem[128] = 256 * stor13.length.field_8
            else:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if stor13.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = '0'
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor13.length.field_1) + 192]) > mem[ceil32(stor13.length.field_1) + 192]:
                    mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
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
            mem[ceil32(stor13.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            if ceil32(stor13.length.field_1) > stor13.length.field_1:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor13.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor13.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + mem[ceil32(stor13.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor13.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor13.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor13.length.field_1
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor13.length.field_1:
            if stor13.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = '0'
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor13.length.field_1) + 192]) <= mem[ceil32(stor13.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257 len ceil32(mem[ceil32(stor13.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor13.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
                if ceil32(stor13.length.field_1) <= stor13.length.field_1:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                    mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                        _3686 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3686)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3686)]
                        if ceil32(_3686) > _3686:
                            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3686 + 256] = 0
                        return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3686) + 32], 
                    _3718 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3718)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3718)]
                    if ceil32(_3718) > _3718:
                        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3718 + 256] = 0
                    return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3718) + 32], 
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    _3687 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3687)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3687)]
                    if ceil32(_3687) > _3687:
                        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3687 + 256] = 0
                    return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3687) + 32], 
                _3719 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3719)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3719)]
                if ceil32(_3719) > _3719:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3719 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3719) + 32], 
            mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            if ceil32(stor13.length.field_1) <= stor13.length.field_1:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    _3688 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3688)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3688)]
                    if ceil32(_3688) > _3688:
                        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3688 + 256] = 0
                    return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3688) + 32], 
                _3720 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3720)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3720)]
                if ceil32(_3720) > _3720:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3720 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3720) + 32], 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _3689 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3689)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3689)]
                if ceil32(_3689) > _3689:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3689 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3689) + 32], 
            _3721 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3721)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3721)]
            if ceil32(_3721) > _3721:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3721 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3721) + 32], 
        if 31 >= stor13.length.field_1:
            mem[128] = 256 * stor13.length.field_8
            if stor13.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = '0'
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor13.length.field_1) + 192]) <= mem[ceil32(stor13.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257 len ceil32(mem[ceil32(stor13.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor13.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
                if ceil32(stor13.length.field_1) <= stor13.length.field_1:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                    mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                        _3690 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3690)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3690)]
                        if ceil32(_3690) > _3690:
                            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3690 + 256] = 0
                        return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3690) + 32], 
                    _3722 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3722)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3722 + 256] = 0
                    return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3722) + 32], 
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    _3691 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3691)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3691)]
                    if ceil32(_3691) > _3691:
                        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3691 + 256] = 0
                    return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3691) + 32], 
                _3723 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3723)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3723 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3723) + 32], 
            mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            if ceil32(stor13.length.field_1) <= stor13.length.field_1:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    _3692 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3692)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3692)]
                    if ceil32(_3692) > _3692:
                        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3692 + 256] = 0
                    return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3692) + 32], 
                _3724 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3724)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3724 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3724) + 32], 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _3693 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3693)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3693)]
                if ceil32(_3693) > _3693:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3693 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3693) + 32], 
            _3725 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3725)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3725 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3725) + 32], 
        mem[0] = 13
        mem[128] = uint256(stor13.field_0)
        idx = 128
        s = 0
        while stor13.length.field_1 + 96 > idx:
            mem[idx + 32] = stor13[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor13.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = '0'
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor13.length.field_1) + 192]) <= mem[ceil32(stor13.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257 len ceil32(mem[ceil32(stor13.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor13.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            if ceil32(stor13.length.field_1) <= stor13.length.field_1:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    _4414 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4414)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4414)]
                    if ceil32(_4414) > _4414:
                        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4414 + 256] = 0
                    return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4414) + 32], 
                _4430 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4430)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4430 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4430) + 32], 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _4415 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4415)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4415)]
                if ceil32(_4415) > _4415:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4415 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4415) + 32], 
            _4431 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4431)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4431 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4431) + 32], 
        mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) <= stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _4416 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4416)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4416)]
                if ceil32(_4416) > _4416:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4416 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4416) + 32], 
            _4432 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4432)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4432 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4432) + 32], 
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
        mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
            _4417 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4417)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4417)]
            if ceil32(_4417) > _4417:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4417 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4417) + 32], 
        _4433 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4433)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4433 + 256] = 0
        return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4433) + 32], 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor13.length.field_1:
        if stor13.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = '0'
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor13.length.field_1) + 192]) <= mem[ceil32(stor13.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257 len ceil32(mem[ceil32(stor13.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor13.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            if ceil32(stor13.length.field_1) <= stor13.length.field_1:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    _3694 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3694)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3694)]
                    if ceil32(_3694) > _3694:
                        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3694 + 256] = 0
                    return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3694) + 32], 
                _3726 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3726)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
                if ceil32(_3726) > _3726:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3726 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3726) + 32], 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _3695 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3695)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3695)]
                if ceil32(_3695) > _3695:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3695 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3695) + 32], 
            _3727 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3727)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
            if ceil32(_3727) > _3727:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3727 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3727) + 32], 
        mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) <= stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _3696 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3696)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3696)]
                if ceil32(_3696) > _3696:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3696 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3696) + 32], 
            _3728 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3728)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
            if ceil32(_3728) > _3728:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3728 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3728) + 32], 
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
        mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
            _3697 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3697)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3697)]
            if ceil32(_3697) > _3697:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3697 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3697) + 32], 
        _3729 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3729)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
        if ceil32(_3729) > _3729:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3729 + 256] = 0
        return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3729) + 32], 
    if 31 >= stor13.length.field_1:
        mem[128] = 256 * stor13.length.field_8
        if stor13.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = '0'
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor13.length.field_1) + 192]) <= mem[ceil32(stor13.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257 len ceil32(mem[ceil32(stor13.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor13.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            if ceil32(stor13.length.field_1) <= stor13.length.field_1:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    _3698 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3698)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3698)]
                    if ceil32(_3698) > _3698:
                        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3698 + 256] = 0
                    return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3698) + 32], 
                _3730 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3730)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                if ceil32(_3730) > _3730:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3730 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3730) + 32], 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _3699 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3699)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3699)]
                if ceil32(_3699) > _3699:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3699 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3699) + 32], 
            _3731 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3731)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
            if ceil32(_3731) > _3731:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3731 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3731) + 32], 
        mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) <= stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _3700 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3700)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3700)]
                if ceil32(_3700) > _3700:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3700 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3700) + 32], 
            _3732 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3732)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
            if ceil32(_3732) > _3732:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3732 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3732) + 32], 
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
        mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
            _3701 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3701)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3701)]
            if ceil32(_3701) > _3701:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3701 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3701) + 32], 
        _3733 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_3733)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
        if ceil32(_3733) > _3733:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _3733 + 256] = 0
        return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_3733) + 32], 
    mem[0] = 13
    mem[128] = uint256(stor13.field_0)
    idx = 128
    s = 0
    while stor13.length.field_1 + 96 > idx:
        mem[idx + 32] = stor13[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor13.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = '0'
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor13.length.field_1) + 192]) <= mem[ceil32(stor13.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 192] + 289] = 0
        return 32, mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257 len ceil32(mem[ceil32(stor13.length.field_1) + 192]) + 32], 
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
    mem[ceil32(stor13.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) <= stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _4418 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4418)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4418)]
                if ceil32(_4418) > _4418:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4418 + 256] = 0
                return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4418) + 32], 
            _4434 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4434)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4434 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4434) + 32], 
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
        mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
            _4419 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4419)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4419)]
            if ceil32(_4419) > _4419:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4419 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4419) + 32], 
        _4435 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4435)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4435 + 256] = 0
        return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4435) + 32], 
    mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) <= stor13.length.field_1:
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
        mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
            _4420 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4420)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4420)]
            if ceil32(_4420) > _4420:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4420 + 256] = 0
            return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4420) + 32], 
        _4436 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4436)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4436 + 256] = 0
        return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4436) + 32], 
    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
    mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192
    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 192] = 32
    if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
        _4421 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4421)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4421)]
        if ceil32(_4421) > _4421:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4421 + 256] = 0
        return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4421) + 32], 
    _4437 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 256 len ceil32(_4437)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + _4437 + 256] = 0
    return 32, mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + mem[ceil32(stor13.length.field_1) + 128] + 224 len ceil32(_4437) + 32], 
}



}
