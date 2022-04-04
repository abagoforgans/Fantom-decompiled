contract main {




// =====================  Runtime code  =====================


#
#  - works(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
array of uint256 collections;
array of struct stor8;
array of struct stor9;
address stor10;
mapping of uint256 stor11;
mapping of struct stor12;
mapping of struct stor13;
mapping of struct stor14;
array of uint256 stor99;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function collections(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg2 < collections[arg1[all]]
    return collections[arg1[all]][arg2]
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

function sub_91203cc3(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor10
    stor11[arg1] = arg2
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return ''
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
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function cancelSellOffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Not the work's owner.'
    if not uint8(stor14[arg1].field_0):
        revert with 0, 'Offer does not exist.'
    uint8(stor14[arg1].field_0) = 0
    stor14[arg1].field_256 = 0
    stor11[arg1] = 0
}

function sub_d38da70e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor13[arg1].field_512 > -10000000000000000001:
        revert with 'NH{q', 17
    if msg.value < stor13[arg1].field_512 + 10 * 10^18:
        revert with 0, 'Transaction underpriced.'
    if not uint8(stor13[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This work is not being auctioned.'
    stor13[arg1].field_512 = msg.value
    if address(stor13[arg1].field_768):
        call address(stor13[arg1].field_768) with:
           value stor13[arg1].field_512 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transaction failed.'
    address(stor13[arg1].field_768) = msg.sender
}

function sub_b1889b75(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor12[arg1].field_512 > -10000000000000000001:
        revert with 'NH{q', 17
    if msg.value < stor12[arg1].field_512 + 10 * 10^18:
        revert with 0, 'Transaction underpriced.'
    if not uint8(stor12[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This work is not up for a timed auction.'
    if stor12[arg1].field_768 <= block.timestamp:
        revert with 0, 'This auction has ended.'
    stor12[arg1].field_512 = msg.value
    if address(stor12[arg1].field_1024):
        call address(stor12[arg1].field_1024) with:
           value stor12[arg1].field_512 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transaction failed.'
    address(stor12[arg1].field_1024) = msg.sender
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

function makeSellOffer(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Not the work's owner.'
    if arg2 <= 0:
        revert with 0, 'Price must be higher than 0'
    if uint8(stor13[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This work is already in an auction.'
    if uint8(stor14[arg1].field_0):
        revert with 0, 'Offer already exists.'
    if uint8(stor12[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This work is being offered on a timed auction.'
    uint8(stor14[arg1].field_0) = 1
    stor14[arg1].field_256 = arg2
    stor11[arg1] = 3
}

function sub_ace12b6c(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Not the work's owner.'
    if uint8(stor14[arg1].field_0):
        revert with 0, 'This work is being sold.'
    if uint8(stor13[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This work is already in an auction.'
    if uint8(stor12[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This work is already in a timed auction.'
    if arg2 <= 10^18:
        revert with 0, 'Limit floor price is 1 FTM.'
    stor11[arg1] = 1
    uint8(stor13[arg1].field_0) = 1
    stor13[arg1].field_256 = arg2
    stor13[arg1].field_512 = arg2
    address(stor13[arg1].field_768) = 0
    stor13[arg1].field_1024 % 1 = 0
}

function sub_7ae6d096(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Not the work's owner.'
    if uint8(stor14[arg1].field_0):
        revert with 0, 'This work is being sold.'
    if uint8(stor13[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This work is already in an auction.'
    if uint8(stor12[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This work is already up for auction.'
    if arg2 <= 10^18:
        revert with 0, 'Limit floor price is 1 FTM.'
    stor11[arg1] = 2
    uint8(stor12[arg1].field_0) = 1
    stor12[arg1].field_256 = arg2
    stor12[arg1].field_512 = arg2
    stor12[arg1].field_768 = arg3
    address(stor12[arg1].field_1024) = 0
    stor12[arg1].field_1280 % 1 = 0
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
    if uint8(stor14[arg3].field_0):
        revert with 0, 'This work can be bought.'
    if uint8(stor12[arg3].field_0):
        revert with 0, 'This work is up for auction.'
    if uint8(stor13[arg3].field_0):
        revert with 0, 'This work is up for auction.'
    if uint8(stor14[arg3].field_0):
        revert with 0, 'This nura is being offered for selling.'
    if uint8(stor12[arg3].field_0):
        revert with 0, 'This work is up for auction.'
    if uint8(stor13[arg3].field_0):
        revert with 0, 'This work is up for auction.'
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
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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

function sub_bebc9b84(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307() or ceil32(ceil32(arg3.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == stor10
    if arg1 >= stor9.length:
        revert with 'NH{q', 50
    if bool(stor9[arg1].field_0):
        if bool(stor9[arg1].field_0) == uint255(stor9[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor9[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor9[arg1].field_0 = 0
            idx = 0
            while uint255(stor9[arg1].field_1) + 31 / 32 > idx:
                stor9[(2 * arg1) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9[arg1].field_0) == stor9[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor9[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor9[arg1].field_0 = 0
            idx = 0
            while stor9[arg1].field_1 % 128 + 31 / 32 > idx:
                stor9[(2 * arg1) + idx].field_0 = 0
                idx = idx + 1
                continue 
    if arg1 >= stor9.length:
        revert with 'NH{q', 50
    if bool(stor9[arg1].field_256):
        if bool(stor9[arg1].field_256) == uint255(stor9[arg1].field_257) < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor[sha3((2 * arg1) + ('name', 'stor9', 9) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor9[arg1].field_256 = 0
            idx = 0
            while uint255(stor9[arg1].field_257) + 31 / 32 > idx:
                stor[idx + sha3((2 * arg1) + ('name', 'stor9', 9) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9[arg1].field_256) == stor9[arg1].field_257 % 128 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor[sha3((2 * arg1) + ('name', 'stor9', 9) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor9[arg1].field_256 = 0
            idx = 0
            while stor9[arg1].field_257 % 128 + 31 / 32 > idx:
                stor[idx + sha3((2 * arg1) + ('name', 'stor9', 9) + 1)].field_0 = 0
                idx = idx + 1
                continue 
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
    if uint8(stor14[arg3].field_0):
        revert with 0, 'This nura is being offered for selling.'
    if uint8(stor12[arg3].field_0):
        revert with 0, 'This work is up for auction.'
    if uint8(stor13[arg3].field_0):
        revert with 0, 'This work is up for auction.'
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
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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

function mintNFT(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307() or ceil32(ceil32(arg2.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == stor10
    stor9.length++
    if bool(stor9[stor9.length].field_0):
        if bool(stor9[stor9.length].field_0) == uint255(stor9[stor9.length].field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor9[stor9.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9[stor9.length].field_0 = 0
            idx = 0
            while uint255(stor9[stor9.length].field_1) + 31 / 32 > idx:
                stor9[(2 * stor9.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9[stor9.length].field_0) == stor9[stor9.length].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor9[stor9.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9[stor9.length].field_0 = 0
            idx = 0
            while stor9[stor9.length].field_1 % 128 + 31 / 32 > idx:
                stor9[(2 * stor9.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor9[stor9.length].field_256):
        if bool(stor9[stor9.length].field_256) == uint255(stor9[stor9.length].field_257) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor[sha3((2 * stor9.length) + ('name', 'stor9', 9) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor9[stor9.length].field_256 = 0
            idx = 0
            while uint255(stor9[stor9.length].field_257) + 31 / 32 > idx:
                stor[idx + sha3((2 * stor9.length) + ('name', 'stor9', 9) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9[stor9.length].field_256) == stor9[stor9.length].field_257 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor[sha3((2 * stor9.length) + ('name', 'stor9', 9) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor9[stor9.length].field_256 = 0
            idx = 0
            while stor9[stor9.length].field_257 % 128 + 31 / 32 > idx:
                stor[idx + sha3((2 * stor9.length) + ('name', 'stor9', 9) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9.length]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor9.length] = msg.sender
    emit Transfer(0, msg.sender, stor9.length);
    return stor9.length
}

function buyNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value < stor14[arg1].field_256:
        revert with 0, 'Transaction underpriced.'
    if not uint8(stor14[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This work is not available for buying.'
    uint8(stor14[arg1].field_0) = 0
    stor14[arg1].field_256 = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    call ownerOf[arg1] with:
       value stor14[arg1].field_256 wei
         gas gas_remaining wei
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if uint8(stor14[arg1].field_0):
        revert with 0, 'This work can be bought.'
    if uint8(stor12[arg1].field_0):
        revert with 0, 'This work is up for auction.'
    if uint8(stor13[arg1].field_0):
        revert with 0, 'This work is up for auction.'
    if uint8(stor14[arg1].field_0):
        revert with 0, 'This nura is being offered for selling.'
    if uint8(stor12[arg1].field_0):
        revert with 0, 'This work is up for auction.'
    if uint8(stor13[arg1].field_0):
        revert with 0, 'This work is up for auction.'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor2[arg1]]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(ownerOf[arg1], msg.sender, arg1);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, ownerOf[arg1], arg1, 128, 0
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
    if not ext_call.success:
        revert with 0, 'Transaction failed.'
    stor11[arg1] = 0
}

function endAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Not the work's owner.'
    if not uint8(stor13[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This work is not being auctioned.'
    uint8(stor13[arg1].field_0) = 0
    stor13[arg1].field_256 = 0
    stor13[arg1].field_512 = 0
    address(stor13[arg1].field_768) = 0
    stor13[arg1].field_1024 % 1 = 0
    stor11[arg1] = 0
    if not address(stor13[arg1].field_768):
    else:
        call msg.sender with:
           value stor13[arg1].field_512 wei
             gas gas_remaining wei
        if uint8(stor14[arg1].field_0):
            revert with 0, 'This work can be bought.'
        if uint8(stor12[arg1].field_0):
            revert with 0, 'This work is up for auction.'
        if uint8(stor13[arg1].field_0):
            revert with 0, 'This work is up for auction.'
        if uint8(stor14[arg1].field_0):
            revert with 0, 'This nura is being offered for selling.'
        if uint8(stor12[arg1].field_0):
            revert with 0, 'This work is up for auction.'
        if uint8(stor13[arg1].field_0):
            revert with 0, 'This work is up for auction.'
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg1] != msg.sender:
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg1] != msg.sender:
                if not stor5[stor2[arg1]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg1] != msg.sender:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not address(stor13[arg1].field_768):
            revert with 0, 'ERC721: transfer to the zero address'
        approved[arg1] = 0
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[arg1], 0, arg1);
        if balanceOf[address(msg.sender)] < 1:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]--
        if balanceOf[address(stor13[arg1].field_768)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(stor13[arg1].field_768)]++
        ownerOf[arg1] = address(stor13[arg1].field_768)
        emit Transfer(msg.sender, address(stor13[arg1].field_768), arg1);
        if ext_code.size(address(stor13[arg1].field_768)) > 0:
            require ext_code.size(address(stor13[arg1].field_768))
            call address(stor13[arg1].field_768).onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, arg1, 128, 0
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
        if not ext_call.success:
            revert with 0, 'Transaction failed.'
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

function sub_e960724b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor8.length
    if bool(stor8[arg1].field_0):
        if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor8[arg1].field_0):
            if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor8[arg1].field_1):
                if 31 < uint255(stor8[arg1].field_1):
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor8[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor8[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor8[arg1].field_1)), data=mem[128 len ceil32(uint255(stor8[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
        else:
            if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor8[arg1].field_1 % 128:
                if 31 < stor8[arg1].field_1 % 128:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor8[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor8[arg1].field_1)), data=mem[128 len ceil32(uint255(stor8[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
        mem[ceil32(uint255(stor8[arg1].field_1)) + 192 len ceil32(uint255(stor8[arg1].field_1))] = mem[128 len ceil32(uint255(stor8[arg1].field_1))]
        if ceil32(uint255(stor8[arg1].field_1)) > uint255(stor8[arg1].field_1):
            mem[ceil32(uint255(stor8[arg1].field_1)) + uint255(stor8[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor8[arg1].field_1)), data=mem[128 len ceil32(uint255(stor8[arg1].field_1))], mem[(2 * ceil32(uint255(stor8[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor8[arg1].field_1))]), 
    if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor8[arg1].field_0):
        if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor8[arg1].field_1):
            if 31 < uint255(stor8[arg1].field_1):
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor8[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor8[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
    else:
        if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor8[arg1].field_1 % 128:
            if 31 < stor8[arg1].field_1 % 128:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor8[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
    mem[ceil32(stor8[arg1].field_1 % 128) + 192 len ceil32(stor8[arg1].field_1 % 128)] = mem[128 len ceil32(stor8[arg1].field_1 % 128)]
    if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
        mem[ceil32(stor8[arg1].field_1 % 128) + stor8[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)], mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor8[arg1].field_1 % 128)]), 
}

function sub_6a9569c3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Not the work's owner.'
    if not uint8(stor12[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This work is not up for a timed auction.'
    if not address(stor12[arg1].field_1024):
        uint8(stor12[arg1].field_0) = 0
        stor12[arg1].field_256 = 0
        stor12[arg1].field_512 = 0
        stor12[arg1].field_768 = 0
        address(stor12[arg1].field_1024) = 0
        stor12[arg1].field_1280 % 1 = 0
        stor11[arg1] = 0
    else:
        if stor12[arg1].field_768 >= block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You cannot end a running timed auction before its deadline.'
        uint8(stor12[arg1].field_0) = 0
        stor12[arg1].field_256 = 0
        stor12[arg1].field_512 = 0
        stor12[arg1].field_768 = 0
        address(stor12[arg1].field_1024) = 0
        stor12[arg1].field_1280 % 1 = 0
        stor11[arg1] = 0
        call msg.sender with:
           value stor12[arg1].field_512 wei
             gas gas_remaining wei
        if uint8(stor14[arg1].field_0):
            revert with 0, 'This work can be bought.'
        if uint8(stor12[arg1].field_0):
            revert with 0, 'This work is up for auction.'
        if uint8(stor13[arg1].field_0):
            revert with 0, 'This work is up for auction.'
        if uint8(stor14[arg1].field_0):
            revert with 0, 'This nura is being offered for selling.'
        if uint8(stor12[arg1].field_0):
            revert with 0, 'This work is up for auction.'
        if uint8(stor13[arg1].field_0):
            revert with 0, 'This work is up for auction.'
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg1] != msg.sender:
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg1] != msg.sender:
                if not stor5[stor2[arg1]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg1] != msg.sender:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not address(stor12[arg1].field_1024):
            revert with 0, 'ERC721: transfer to the zero address'
        approved[arg1] = 0
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[arg1], 0, arg1);
        if balanceOf[address(msg.sender)] < 1:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]--
        if balanceOf[address(stor12[arg1].field_1024)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(stor12[arg1].field_1024)]++
        ownerOf[arg1] = address(stor12[arg1].field_1024)
        emit Transfer(msg.sender, address(stor12[arg1].field_1024), arg1);
        if ext_code.size(address(stor12[arg1].field_1024)) > 0:
            require ext_code.size(address(stor12[arg1].field_1024))
            call address(stor12[arg1].field_1024).onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, arg1, 128, 0
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
        if not ext_call.success:
            revert with 0, 'Transaction failed.'
}

function sub_2b22a509(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(('cd', 4).length)) + 97 > test266151307() or ceil32(ceil32(('cd', 4).length)) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(('cd', 4).length)) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(ceil32(('cd', 4).length)) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(ceil32(('cd', 4).length)) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == stor10
    stor8.length++
    if bool(stor8[stor8.length].field_0):
        if bool(stor8[stor8.length].field_0) == uint255(stor8[stor8.length].field_1) < 32:
            revert with 'NH{q', 34
        if ('cd', 4).length:
            stor8[stor8.length][].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
        else:
            stor8[stor8.length].field_0 = 0
            idx = 0
            while uint255(stor8[stor8.length].field_1) + 31 / 32 > idx:
                stor8[stor8.length + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8[stor8.length].field_0) == stor8[stor8.length].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if ('cd', 4).length:
            stor8[stor8.length][].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
        else:
            stor8[stor8.length].field_0 = 0
            idx = 0
            while stor8[stor8.length].field_1 % 128 + 31 / 32 > idx:
                stor8[stor8.length + idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(ceil32(('cd', 4).length)) + floor32(('cd', 36).length) + 98 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], Mask(8 * ceil32(('cd', 4).length) - ('cd', 4).length, -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 31) + 256, ('cd', 36).length) >> -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 31) + 256
    mem[ceil32(ceil32(('cd', 4).length)) + floor32(('cd', 36).length) + ('cd', 4).length + 98] = 7
    stor[Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 7)][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], Mask(8 * ceil32(('cd', 4).length) - ('cd', 4).length, -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 31) + 256, ('cd', 36).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 4).length)) + (8 * ceil32(ceil32(('cd', 4).length))) + 256) << (8 * ceil32(('cd', 4).length)) - 256] = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor[Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 7)][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], Mask(8 * ceil32(('cd', 4).length) - ('cd', 4).length, -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 31) + 256, ('cd', 36).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 4).length)) + (8 * ceil32(ceil32(('cd', 4).length))) + 256) << (8 * ceil32(('cd', 4).length)) - 256] > idx:
            stor[Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 7)][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], Mask(8 * ceil32(('cd', 4).length) - ('cd', 4).length, -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 31) + 256, ('cd', 36).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 4).length)) + (8 * ceil32(ceil32(('cd', 4).length))) + 256) << (8 * ceil32(('cd', 4).length)) - 256][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(ceil32(('cd', 4).length)) + 129
        while ceil32(ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + 129 > idx:
            stor[Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 7)][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], Mask(8 * ceil32(('cd', 4).length) - ('cd', 4).length, -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 31) + 256, ('cd', 36).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 4).length)) + (8 * ceil32(ceil32(('cd', 4).length))) + 256) << (8 * ceil32(('cd', 4).length)) - 256][s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor[Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 7)][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], Mask(8 * ceil32(('cd', 4).length) - ('cd', 4).length, -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 31) + 256, ('cd', 36).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 4).length)) + (8 * ceil32(ceil32(('cd', 4).length))) + 256) << (8 * ceil32(('cd', 4).length)) - 256] > idx:
            stor[Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 7)][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], Mask(8 * ceil32(('cd', 4).length) - ('cd', 4).length, -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 31) + 256, ('cd', 36).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 4).length)) + (8 * ceil32(ceil32(('cd', 4).length))) + 256) << (8 * ceil32(('cd', 4).length)) - 256][idx] = 0
            idx = idx + 1
            continue 
}

function transferNFT(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'Not the work's owner.'
    if uint8(stor14[arg2].field_0):
        revert with 0, 'This work is being sold.'
    if uint8(stor13[arg2].field_0):
        revert with 0, 'This work is being auctioned.'
    if not uint8(stor12[arg2].field_0):
        if uint8(stor14[arg2].field_0):
            revert with 0, 'This work can be bought.'
        if uint8(stor12[arg2].field_0):
            revert with 0, 'This work is up for auction.'
        if uint8(stor13[arg2].field_0):
            revert with 0, 'This work is up for auction.'
        if uint8(stor14[arg2].field_0):
            revert with 0, 'This nura is being offered for selling.'
        if uint8(stor12[arg2].field_0):
            revert with 0, 'This work is up for auction.'
        if uint8(stor13[arg2].field_0):
            revert with 0, 'This work is up for auction.'
        if not ownerOf[arg2]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg2]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg2] != msg.sender:
            if not ownerOf[arg2]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg2] != msg.sender:
                if not stor5[stor2[arg2]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
        if not ownerOf[arg2]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg2] != msg.sender:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg1:
            revert with 0, 'ERC721: transfer to the zero address'
        approved[arg2] = 0
        if not ownerOf[arg2]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[arg2], 0, arg2);
        if balanceOf[address(msg.sender)] < 1:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]--
        if balanceOf[address(arg1)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(arg1)]++
        ownerOf[arg2] = arg1
        emit Transfer(msg.sender, arg1, arg2);
        if ext_code.size(arg1) > 0:
            require ext_code.size(arg1)
            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), msg.sender, arg2, 128, 0
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
    else:
        if stor12[arg2].field_768 > block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'This work is currently being offered in an auction.'
        if not ownerOf[arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg2] != msg.sender:
            revert with 0, 'Not the work's owner.'
        if not uint8(stor12[arg2].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This work is not up for a timed auction.'
        if not address(stor12[arg2].field_1024):
            uint8(stor12[arg2].field_0) = 0
            stor12[arg2].field_256 = 0
            stor12[arg2].field_512 = 0
            stor12[arg2].field_768 = 0
            address(stor12[arg2].field_1024) = 0
            stor12[arg2].field_1280 % 1 = 0
            stor11[arg2] = 0
        else:
            if stor12[arg2].field_768 >= block.timestamp:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'You cannot end a running timed auction before its deadline.'
            uint8(stor12[arg2].field_0) = 0
            stor12[arg2].field_256 = 0
            stor12[arg2].field_512 = 0
            stor12[arg2].field_768 = 0
            address(stor12[arg2].field_1024) = 0
            stor12[arg2].field_1280 % 1 = 0
            stor11[arg2] = 0
            call msg.sender with:
               value stor12[arg2].field_512 wei
                 gas gas_remaining wei
            if uint8(stor14[arg2].field_0):
                revert with 0, 'This work can be bought.'
            if uint8(stor12[arg2].field_0):
                revert with 0, 'This work is up for auction.'
            if uint8(stor13[arg2].field_0):
                revert with 0, 'This work is up for auction.'
            if uint8(stor14[arg2].field_0):
                revert with 0, 'This nura is being offered for selling.'
            if uint8(stor12[arg2].field_0):
                revert with 0, 'This work is up for auction.'
            if uint8(stor13[arg2].field_0):
                revert with 0, 'This work is up for auction.'
            if not ownerOf[arg2]:
                revert with 0, 'ERC721: operator query for nonexistent token'
            if not ownerOf[arg2]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg2] != msg.sender:
                if not ownerOf[arg2]:
                    revert with 0, 'ERC721: approved query for nonexistent token'
                if approved[arg2] != msg.sender:
                    if not stor5[stor2[arg2]][address(msg.sender)]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
            if not ownerOf[arg2]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg2] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not address(stor12[arg2].field_1024):
                revert with 0, 'ERC721: transfer to the zero address'
            approved[arg2] = 0
            if not ownerOf[arg2]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[arg2], 0, arg2);
            if balanceOf[address(msg.sender)] < 1:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(stor12[arg2].field_1024)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(stor12[arg2].field_1024)]++
            ownerOf[arg2] = address(stor12[arg2].field_1024)
            emit Transfer(msg.sender, address(stor12[arg2].field_1024), arg2);
            if ext_code.size(address(stor12[arg2].field_1024)) > 0:
                require ext_code.size(address(stor12[arg2].field_1024))
                call address(stor12[arg2].field_1024).onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, arg2, 128, 0
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
            if not ext_call.success:
                revert with 0, 'Transaction failed.'
        if uint8(stor14[arg2].field_0):
            revert with 0, 'This work can be bought.'
        if uint8(stor12[arg2].field_0):
            revert with 0, 'This work is up for auction.'
        if uint8(stor13[arg2].field_0):
            revert with 0, 'This work is up for auction.'
        if uint8(stor14[arg2].field_0):
            revert with 0, 'This nura is being offered for selling.'
        if uint8(stor12[arg2].field_0):
            revert with 0, 'This work is up for auction.'
        if uint8(stor13[arg2].field_0):
            revert with 0, 'This work is up for auction.'
        if not ownerOf[arg2]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg2]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg2] != msg.sender:
            if not ownerOf[arg2]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg2] != msg.sender:
                if not stor5[stor2[arg2]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
        if not ownerOf[arg2]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg2] != msg.sender:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg1:
            revert with 0, 'ERC721: transfer to the zero address'
        approved[arg2] = 0
        if not ownerOf[arg2]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[arg2], 0, arg2);
        if balanceOf[address(msg.sender)] < 1:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]--
        if balanceOf[address(arg1)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(arg1)]++
        ownerOf[arg2] = arg1
        emit Transfer(msg.sender, arg1, arg2);
        if ext_code.size(arg1) > 0:
            require ext_code.size(arg1)
            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, arg2, 128, 0
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



}
