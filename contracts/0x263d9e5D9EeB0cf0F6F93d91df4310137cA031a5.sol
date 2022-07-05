contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
address owner;
uint256 stor8;
uint256 maxSupply;
uint256 stor10;
uint256 bnbPrice;
address paymentAddress;
address _burnAddress;
mapping of uint8 stor14;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor16;
array of uint256 tokenByIndex;
mapping of uint256 stor18;

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

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function bnbPrice() {
    return bnbPrice
}

function PaymentAddress() {
    return paymentAddress
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

function _burnAddress() {
    return _burnAddress
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

function getRemainingSupply() {
    if maxSupply < tokenByIndex.length:
        revert with 0, 17
    return (maxSupply - tokenByIndex.length)
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

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'SETPRICE: Must be greater then 0'
    if arg1 and 10^18 > -1 / arg1:
        revert with 0, 17
    if not stor8:
        revert with 0, 18
    bnbPrice = 10^18 * arg1 / stor8
    emit SetPrice(arg1);
}

function setPaymentAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setPaymentAddress: Cannot payout to address zero'
    paymentAddress = arg1
    emit SetPaymentAddress(msg.sender, arg1);
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
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
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

function getUserNftTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 15)
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function mint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor14[msg.sender]:
        revert with 0, 'mint: not authorized minter'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'buySingles: Address zero cannot mint'
    if maxSupply < tokenByIndex.length:
        revert with 0, 17
    if maxSupply - tokenByIndex.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'buySingles: Not enough supply left'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor10]:
        revert with 0, 'ERC721: token already minted'
    stor18[stor10] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor10
    if arg1:
        if arg1:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor10
            stor16[stor10] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor18[stor10] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor18[stor10]] = tokenByIndex[tokenByIndex.length]
        stor18[stor17[stor17.length]] = stor18[stor10]
        stor18[stor10] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor10] = arg1
    emit Transfer(0, arg1, stor10);
    if not ownerOf[stor10]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor6[stor10].field_0:
        if stor6[stor10].field_0 == stor6[stor10].field_1 < 32:
            revert with 0, 34
        stor6[stor10].field_0 = 0
        idx = 0
        while stor6[stor10].field_1 + 31 / 32 > idx:
            stor6[stor10][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor6[stor10].field_0 == stor6[stor10].field_1 < 32:
            revert with 0, 34
        stor6[stor10].field_0 = 0
        idx = 0
        while stor6[stor10].field_1 + 31 / 32 > idx:
            stor6[stor10][idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x72078b09: address(arg1), stor10
    if stor10 > -2:
        revert with 0, 17
    stor10++
}

function sub_864efb75(?) payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'buySingles: Address zero cannot mint'
    if maxSupply < tokenByIndex.length:
        revert with 0, 17
    if maxSupply - tokenByIndex.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'buySingles: Not enough supply left'
    if msg.value < bnbPrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'buySingles: Insufficient bnb funds for selected purchase'
    call paymentAddress with:
       value bnbPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor10]:
        revert with 0, 'ERC721: token already minted'
    stor18[stor10] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor10
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor10
            stor16[stor10] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor18[stor10] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor18[stor10]] = tokenByIndex[tokenByIndex.length]
        stor18[stor17[stor17.length]] = stor18[stor10]
        stor18[stor10] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor10] = msg.sender
    emit Transfer(0, msg.sender, stor10);
    if not ownerOf[stor10]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor6[stor10].field_0:
        if stor6[stor10].field_0 == stor6[stor10].field_1 < 32:
            revert with 0, 34
        stor6[stor10].field_0 = 0
        idx = 0
        while stor6[stor10].field_1 + 31 / 32 > idx:
            stor6[stor10][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor6[stor10].field_0 == stor6[stor10].field_1 < 32:
            revert with 0, 34
        stor6[stor10].field_0 = 0
        idx = 0
        while stor6[stor10].field_1 + 31 / 32 > idx:
            stor6[stor10][idx].field_0 = 0
            idx = idx + 1
            continue 
    emit BuyPlatinumNFT(msg.sender, stor10);
    if stor10 > -2:
        revert with 0, 17
    stor10++
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
        stor18[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor16[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor16[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor16[stor15[address(arg1)][stor3[address(arg1)] - 1]] = stor16[arg3]
            stor16[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor16[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor18[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor18[arg3]] = tokenByIndex[tokenByIndex.length]
        stor18[stor17[stor17.length]] = stor18[arg3]
        stor18[arg3] = 0
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
        stor18[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor16[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor16[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor16[stor15[address(arg1)][stor3[address(arg1)] - 1]] = stor16[arg3]
            stor16[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor16[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor18[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor18[arg3]] = tokenByIndex[tokenByIndex.length]
        stor18[stor17[stor17.length]] = stor18[arg3]
        stor18[arg3] = 0
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
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
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
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if bool(stor1.length):
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
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
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4.length + arg4 + 36
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
        stor18[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor16[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor16[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor16[stor15[address(arg1)][stor3[address(arg1)] - 1]] = stor16[arg3]
            stor16[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor16[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor18[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor18[arg3]] = tokenByIndex[tokenByIndex.length]
        stor18[stor17[stor17.length]] = stor18[arg3]
        stor18[arg3] = 0
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
    if not ext_code.size(arg2):
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 0, 34
        if stor6[arg1].field_0:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 0, 34
            if stor6[arg1].field_1:
                if 31 >= stor6[arg1].field_1:
                    mem[128] = 256 * stor6[arg1].field_8
                else:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 0, 34
            if stor6[arg1].field_1:
                if 31 >= stor6[arg1].field_1:
                    mem[128] = 256 * stor6[arg1].field_8
                else:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor6[arg1].field_1:
            mem[ceil32(stor6[arg1].field_1) + 288 len 96] = 0xfe68747470733a2f2f697066732e696f2f697066732f516d5145504c73487851356675564651313644374463424d427538726776334637646672426753574c676e694c6b, mem[ceil32(stor6[arg1].field_1) + 228 len 28]
            mem[ceil32(stor6[arg1].field_1) + 356] = 0
            mem[ceil32(stor6[arg1].field_1) + 356 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
            mem[stor6[arg1].field_1 + ceil32(stor6[arg1].field_1) + 356] = 32
            mem[stor6[arg1].field_1 + ceil32(stor6[arg1].field_1) + 388] = mem[ceil32(stor6[arg1].field_1) + 256]
            mem[stor6[arg1].field_1 + ceil32(stor6[arg1].field_1) + 420 len ceil32(mem[ceil32(stor6[arg1].field_1) + 256])] = mem[ceil32(stor6[arg1].field_1) + 288 len ceil32(mem[ceil32(stor6[arg1].field_1) + 256])]
            if ceil32(mem[ceil32(stor6[arg1].field_1) + 256]) > mem[ceil32(stor6[arg1].field_1) + 256]:
                mem[mem[ceil32(stor6[arg1].field_1) + 256] + stor6[arg1].field_1 + ceil32(stor6[arg1].field_1) + 420] = 0
            return Array(len=mem[ceil32(stor6[arg1].field_1) + 256], data=mem[stor6[arg1].field_1 + ceil32(stor6[arg1].field_1) + 420 len ceil32(mem[ceil32(stor6[arg1].field_1) + 256])]), 
        if not ownerOf[arg1]:
            revert with 0, 'ERC721Metadata: URI query for nonexistent token'
        if not arg1:
            mem[ceil32(stor6[arg1].field_1) + 480 len 96] = 0xfe68747470733a2f2f697066732e696f2f697066732f516d5145504c73487851356675564651313644374463424d427538726776334637646672426753574c676e694c6b, mem[ceil32(stor6[arg1].field_1) + 356 len 28]
            mem[ceil32(stor6[arg1].field_1) + 548] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor6[arg1].field_1) + 549] = 32
            mem[ceil32(stor6[arg1].field_1) + 581] = mem[ceil32(stor6[arg1].field_1) + 448]
            mem[ceil32(stor6[arg1].field_1) + 613 len ceil32(mem[ceil32(stor6[arg1].field_1) + 448])] = mem[ceil32(stor6[arg1].field_1) + 480 len ceil32(mem[ceil32(stor6[arg1].field_1) + 448])]
            if ceil32(mem[ceil32(stor6[arg1].field_1) + 448]) > mem[ceil32(stor6[arg1].field_1) + 448]:
                mem[mem[ceil32(stor6[arg1].field_1) + 448] + ceil32(stor6[arg1].field_1) + 613] = 0
            return Array(len=mem[ceil32(stor6[arg1].field_1) + 448], data=mem[ceil32(stor6[arg1].field_1) + 613 len ceil32(mem[ceil32(stor6[arg1].field_1) + 448])]), 
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
        mem[ceil32(stor6[arg1].field_1) + 384] = s
        if s:
            mem[ceil32(stor6[arg1].field_1) + 416 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor6[arg1].field_1) + 384]:
                revert with 0, 50
            mem[t + ceil32(stor6[arg1].field_1) + 415 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 448 len 96] = 0xfe68747470733a2f2f697066732e696f2f697066732f516d5145504c73487851356675564651313644374463424d427538726776334637646672426753574c676e694c6b, mem[ceil32(stor6[arg1].field_1) + 356 len 28]
        mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 516] = 0
        mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 516 len ceil32(mem[ceil32(stor6[arg1].field_1) + 384])] = mem[ceil32(stor6[arg1].field_1) + 416 len ceil32(mem[ceil32(stor6[arg1].field_1) + 384])]
        mem[mem[ceil32(stor6[arg1].field_1) + 384] + ceil32(stor6[arg1].field_1) + ceil32(s) + 516] = 32
        mem[mem[ceil32(stor6[arg1].field_1) + 384] + ceil32(stor6[arg1].field_1) + ceil32(s) + 548] = mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416]
        mem[mem[ceil32(stor6[arg1].field_1) + 384] + ceil32(stor6[arg1].field_1) + ceil32(s) + 580 len ceil32(mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416])] = mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 448 len ceil32(mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416])]
        if ceil32(mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416]) > mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416]:
            mem[mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416] + mem[ceil32(stor6[arg1].field_1) + 384] + ceil32(stor6[arg1].field_1) + ceil32(s) + 580] = 0
        return Array(len=mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416], data=mem[mem[ceil32(stor6[arg1].field_1) + 384] + ceil32(stor6[arg1].field_1) + ceil32(s) + 580 len ceil32(mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416])]), 
    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
        revert with 0, 34
    mem[96] = stor6[arg1].field_1
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 0, 34
        if stor6[arg1].field_1:
            if 31 >= stor6[arg1].field_1:
                mem[128] = 256 * stor6[arg1].field_8
            else:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 0, 34
        if stor6[arg1].field_1:
            if 31 >= stor6[arg1].field_1:
                mem[128] = 256 * stor6[arg1].field_8
            else:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor6[arg1].field_1:
        mem[ceil32(stor6[arg1].field_1) + 288 len 96] = 0xfe68747470733a2f2f697066732e696f2f697066732f516d5145504c73487851356675564651313644374463424d427538726776334637646672426753574c676e694c6b, mem[ceil32(stor6[arg1].field_1) + 228 len 28]
        mem[ceil32(stor6[arg1].field_1) + 356] = 0
        mem[ceil32(stor6[arg1].field_1) + 356 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
        mem[stor6[arg1].field_1 + ceil32(stor6[arg1].field_1) + 356] = 32
        mem[stor6[arg1].field_1 + ceil32(stor6[arg1].field_1) + 388] = mem[ceil32(stor6[arg1].field_1) + 256]
        mem[stor6[arg1].field_1 + ceil32(stor6[arg1].field_1) + 420 len ceil32(mem[ceil32(stor6[arg1].field_1) + 256])] = mem[ceil32(stor6[arg1].field_1) + 288 len ceil32(mem[ceil32(stor6[arg1].field_1) + 256])]
        if ceil32(mem[ceil32(stor6[arg1].field_1) + 256]) > mem[ceil32(stor6[arg1].field_1) + 256]:
            mem[mem[ceil32(stor6[arg1].field_1) + 256] + stor6[arg1].field_1 + ceil32(stor6[arg1].field_1) + 420] = 0
        return Array(len=mem[ceil32(stor6[arg1].field_1) + 256], data=mem[stor6[arg1].field_1 + ceil32(stor6[arg1].field_1) + 420 len ceil32(mem[ceil32(stor6[arg1].field_1) + 256])]), 
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'ERC721Metadata: URI query for nonexistent token'
    if not arg1:
        mem[ceil32(stor6[arg1].field_1) + 480 len 96] = 0xfe68747470733a2f2f697066732e696f2f697066732f516d5145504c73487851356675564651313644374463424d427538726776334637646672426753574c676e694c6b, mem[ceil32(stor6[arg1].field_1) + 356 len 28]
        mem[ceil32(stor6[arg1].field_1) + 548] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor6[arg1].field_1) + 549] = 32
        mem[ceil32(stor6[arg1].field_1) + 581] = mem[ceil32(stor6[arg1].field_1) + 448]
        mem[ceil32(stor6[arg1].field_1) + 613 len ceil32(mem[ceil32(stor6[arg1].field_1) + 448])] = mem[ceil32(stor6[arg1].field_1) + 480 len ceil32(mem[ceil32(stor6[arg1].field_1) + 448])]
        if ceil32(mem[ceil32(stor6[arg1].field_1) + 448]) > mem[ceil32(stor6[arg1].field_1) + 448]:
            mem[mem[ceil32(stor6[arg1].field_1) + 448] + ceil32(stor6[arg1].field_1) + 613] = 0
        return Array(len=mem[ceil32(stor6[arg1].field_1) + 448], data=mem[ceil32(stor6[arg1].field_1) + 613 len ceil32(mem[ceil32(stor6[arg1].field_1) + 448])]), 
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
    mem[ceil32(stor6[arg1].field_1) + 384] = s
    if s:
        mem[ceil32(stor6[arg1].field_1) + 416 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor6[arg1].field_1) + 384]:
            revert with 0, 50
        mem[t + ceil32(stor6[arg1].field_1) + 415 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 448 len 96] = 0xfe68747470733a2f2f697066732e696f2f697066732f516d5145504c73487851356675564651313644374463424d427538726776334637646672426753574c676e694c6b, mem[ceil32(stor6[arg1].field_1) + 356 len 28]
    mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 516] = 0
    mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 516 len ceil32(mem[ceil32(stor6[arg1].field_1) + 384])] = mem[ceil32(stor6[arg1].field_1) + 416 len ceil32(mem[ceil32(stor6[arg1].field_1) + 384])]
    mem[64] = mem[ceil32(stor6[arg1].field_1) + 384] + ceil32(stor6[arg1].field_1) + ceil32(s) + 516
    mem[mem[ceil32(stor6[arg1].field_1) + 384] + ceil32(stor6[arg1].field_1) + ceil32(s) + 516] = 32
    mem[mem[ceil32(stor6[arg1].field_1) + 384] + ceil32(stor6[arg1].field_1) + ceil32(s) + 548] = mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416]
    mem[mem[ceil32(stor6[arg1].field_1) + 384] + ceil32(stor6[arg1].field_1) + ceil32(s) + 580 len ceil32(mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416])] = mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 448 len ceil32(mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416])]
    if ceil32(mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416]) > mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416]:
        mem[mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416] + mem[ceil32(stor6[arg1].field_1) + 384] + ceil32(stor6[arg1].field_1) + ceil32(s) + 580] = 0
    return Array(len=mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416], data=mem[mem[ceil32(stor6[arg1].field_1) + 384] + ceil32(stor6[arg1].field_1) + ceil32(s) + 580 len ceil32(mem[ceil32(stor6[arg1].field_1) + ceil32(s) + 416])]), 
}



}
