contract main {




// =====================  Runtime code  =====================


#
#  - tokenMeta(uint256 arg1)
#  - initialize()
#  - getAllOnSale()
#
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
address owner;
uint256 stor201;
uint256 stor251;
mapping of struct tokenPrice;
array of struct stor253;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
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

function tokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: Price query for nonexistent token'
    return tokenPrice[arg1].field_256
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
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
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[msg.sender][address(arg1)] = uint8(arg2)
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
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setTokenPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: Price set of nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    tokenPrice[arg1].field_256 = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setTokenSale(uint256 arg1, bool arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: Sale set of nonexistent token'
    require arg3 > 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    tokenPrice[arg1].field_1024 = uint8(arg2)
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: Price set of nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    tokenPrice[arg1].field_256 = arg3
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor253.length):
        if bool(stor253.length) == uint255(stor253.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor253[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor253.length = 0
            idx = 0
            while (uint255(stor253.length) * 0.5) + 31 / 32 > idx:
                stor253[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor253.length) == stor253.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor253[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor253.length = 0
            idx = 0
            while stor253.length.field_1 + 31 / 32 > idx:
                stor253[idx].field_0 = 0
                idx = idx + 1
                continue 
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
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
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function buyToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor201 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor201 = 2
    require msg.sender
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] != msg.sender
    require msg.value >= tokenPrice[arg1].field_256
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    call ownerOf[arg1] with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.sender == ownerOf[arg1]:
        revert with 0, 'ERC721: approve to caller'
    stor106[msg.sender][stor103[arg1]] = 1
    emit ApprovalForAll(1, msg.sender, ownerOf[arg1]);
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor103[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor103[arg1]]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(ownerOf[arg1], msg.sender, arg1);
    tokenPrice[arg1].field_1024 = 0
    stor201 = 1
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
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
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
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
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
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
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
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

function mintCollectable(address arg1, string arg2, string arg3, uint256 arg4, bool arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg4 > 0
    stor251++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor251]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor251] = arg1
    emit Transfer(0, arg1, stor251);
    require ownerOf[stor251]
    if not ownerOf[stor251]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    require ownerOf[stor251] == msg.sender
    tokenPrice[stor251].field_0 = stor251
    tokenPrice[stor251].field_256 = arg4
    if tokenPrice[stor251].field_512:
        if tokenPrice[stor251].field_512 == uint255(tokenPrice[stor251].field_512) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            tokenPrice[stor251][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            tokenPrice[stor251].field_512 = 0
            idx = 0
            while (uint255(tokenPrice[stor251].field_512) * 0.5) + 31 / 32 > idx:
                tokenPrice[stor251][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if tokenPrice[stor251].field_512 == tokenPrice[stor251].field_513 < 32:
            revert with 0, 34
        if arg3.length:
            tokenPrice[stor251][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            tokenPrice[stor251].field_512 = 0
            idx = 0
            while tokenPrice[stor251].field_513 + 31 / 32 > idx:
                tokenPrice[stor251][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    if tokenPrice[stor251].field_768:
        if tokenPrice[stor251].field_768 == uint255(tokenPrice[stor251].field_768) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            tokenPrice[stor251][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            tokenPrice[stor251].field_768 = 0
            idx = 0
            while (uint255(tokenPrice[stor251].field_768) * 0.5) + 31 / 32 > idx:
                tokenPrice[stor251][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if tokenPrice[stor251].field_768 == tokenPrice[stor251].field_769 < 32:
            revert with 0, 34
        if arg2.length:
            tokenPrice[stor251][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            tokenPrice[stor251].field_768 = 0
            idx = 0
            while tokenPrice[stor251].field_769 + 31 / 32 > idx:
                tokenPrice[stor251][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    tokenPrice[stor251].field_1024 = uint8(arg5)
    return stor251
}

function name() {
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor101.length):
            if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor101.length):
                if 31 < uint255(stor101.length) * 0.5:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor101.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(uint255(stor101.length) * 0.5) + 192 len ceil32(uint255(stor101.length) * 0.5)] = mem[128 len ceil32(uint255(stor101.length) * 0.5)]
        if ceil32(uint255(stor101.length) * 0.5) > uint255(stor101.length) * 0.5:
            mem[(uint255(stor101.length) * 0.5) + ceil32(uint255(stor101.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)], mem[(2 * ceil32(uint255(stor101.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor101.length) * 0.5)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 0, 34
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor101.length):
            if 31 < uint255(stor101.length) * 0.5:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while (uint255(stor101.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() {
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor102.length):
            if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor102.length):
                if 31 < uint255(stor102.length) * 0.5:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor102.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(uint255(stor102.length) * 0.5) + 192 len ceil32(uint255(stor102.length) * 0.5)] = mem[128 len ceil32(uint255(stor102.length) * 0.5)]
        if ceil32(uint255(stor102.length) * 0.5) > uint255(stor102.length) * 0.5:
            mem[(uint255(stor102.length) * 0.5) + ceil32(uint255(stor102.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)], mem[(2 * ceil32(uint255(stor102.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor102.length) * 0.5)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 0, 34
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor102.length):
            if 31 < uint255(stor102.length) * 0.5:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while (uint255(stor102.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 103
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if not bool(stor253.length):
        if bool(stor253.length) == stor253.length.field_1 < 32:
            revert with 0, 34
        if bool(stor253.length):
            if bool(stor253.length) == uint255(stor253.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor253.length):
                if 31 >= uint255(stor253.length) * 0.5:
                    mem[128] = 256 * stor253.length.field_8
                else:
                    mem[128] = uint256(stor253.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor253.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor253[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor253.length) == stor253.length.field_1 < 32:
                revert with 0, 34
            if not stor253.length.field_1:
                if stor253.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor253.length.field_1) + 224 len ceil32(stor253.length.field_1)] = mem[128 len ceil32(stor253.length.field_1)]
                    mem[ceil32(stor253.length.field_1) + stor253.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor253.length.field_1) + stor253.length.field_1 + 225] = 32
                    mem[ceil32(stor253.length.field_1) + stor253.length.field_1 + 257] = mem[ceil32(stor253.length.field_1) + 192]
                    mem[ceil32(stor253.length.field_1) + stor253.length.field_1 + 289 len ceil32(mem[ceil32(stor253.length.field_1) + 192])] = mem[ceil32(stor253.length.field_1) + 224 len ceil32(mem[ceil32(stor253.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor253.length.field_1) + 192]) > mem[ceil32(stor253.length.field_1) + 192]:
                        mem[mem[ceil32(stor253.length.field_1) + 192] + ceil32(stor253.length.field_1) + stor253.length.field_1 + 289] = 0
                    return Array(len=mem[ceil32(stor253.length.field_1) + 192], data=mem[ceil32(stor253.length.field_1) + stor253.length.field_1 + 289 len ceil32(mem[ceil32(stor253.length.field_1) + 192])]), 
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
                mem[ceil32(stor253.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor253.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor253.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor253.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor253.length.field_1) + ceil32(s) + 192 len ceil32(stor253.length.field_1)] = mem[128 len ceil32(stor253.length.field_1)]
                if ceil32(stor253.length.field_1) > stor253.length.field_1:
                    mem[stor253.length.field_1 + ceil32(stor253.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor253.length.field_1) + ceil32(s) + stor253.length.field_1 + 192 len ceil32(mem[ceil32(stor253.length.field_1) + 128])] = mem[ceil32(stor253.length.field_1) + 160 len ceil32(mem[ceil32(stor253.length.field_1) + 128])]
                mem[mem[ceil32(stor253.length.field_1) + 128] + ceil32(stor253.length.field_1) + ceil32(s) + stor253.length.field_1 + 192] = 32
                mem[mem[ceil32(stor253.length.field_1) + 128] + ceil32(stor253.length.field_1) + ceil32(s) + stor253.length.field_1 + 224] = mem[ceil32(stor253.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor253.length.field_1) + 128] + ceil32(stor253.length.field_1) + ceil32(s) + stor253.length.field_1 + 256 len ceil32(mem[ceil32(stor253.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor253.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor253.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor253.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor253.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor253.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor253.length.field_1) + 128] + ceil32(stor253.length.field_1) + ceil32(s) + stor253.length.field_1 + 256 len ceil32(mem[ceil32(stor253.length.field_1) + ceil32(s) + 160])]), 
                mem[mem[ceil32(stor253.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor253.length.field_1) + 128] + ceil32(stor253.length.field_1) + ceil32(s) + stor253.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor253.length.field_1) + 128] + ceil32(stor253.length.field_1) + ceil32(s) + stor253.length.field_1 + 224 len ceil32(mem[ceil32(stor253.length.field_1) + ceil32(s) + 160]) + 32], 
            if 31 >= stor253.length.field_1:
                mem[128] = 256 * stor253.length.field_8
            else:
                mem[128] = uint256(stor253.field_0)
                idx = 128
                s = 0
                while stor253.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor253[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        if stor253.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor253.length.field_1) + 224 len ceil32(stor253.length.field_1)] = mem[128 len ceil32(stor253.length.field_1)]
            mem[ceil32(stor253.length.field_1) + stor253.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor253.length.field_1) + stor253.length.field_1 + 225] = 32
            mem[ceil32(stor253.length.field_1) + stor253.length.field_1 + 257] = mem[ceil32(stor253.length.field_1) + 192]
            mem[ceil32(stor253.length.field_1) + stor253.length.field_1 + 289 len ceil32(mem[ceil32(stor253.length.field_1) + 192])] = mem[ceil32(stor253.length.field_1) + 224 len ceil32(mem[ceil32(stor253.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor253.length.field_1) + 192]) > mem[ceil32(stor253.length.field_1) + 192]:
                mem[mem[ceil32(stor253.length.field_1) + 192] + ceil32(stor253.length.field_1) + stor253.length.field_1 + 289] = 0
            return Array(len=mem[ceil32(stor253.length.field_1) + 192], data=mem[ceil32(stor253.length.field_1) + stor253.length.field_1 + 289 len ceil32(mem[ceil32(stor253.length.field_1) + 192])]), 
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
        mem[ceil32(stor253.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor253.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor253.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor253.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor253.length.field_1) + ceil32(s) + 192 len ceil32(stor253.length.field_1)] = mem[128 len ceil32(stor253.length.field_1)]
        if ceil32(stor253.length.field_1) > stor253.length.field_1:
            mem[stor253.length.field_1 + ceil32(stor253.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor253.length.field_1) + ceil32(s) + stor253.length.field_1 + 192 len ceil32(mem[ceil32(stor253.length.field_1) + 128])] = mem[ceil32(stor253.length.field_1) + 160 len ceil32(mem[ceil32(stor253.length.field_1) + 128])]
        mem[mem[ceil32(stor253.length.field_1) + 128] + ceil32(stor253.length.field_1) + ceil32(s) + stor253.length.field_1 + 192] = 32
        mem[mem[ceil32(stor253.length.field_1) + 128] + ceil32(stor253.length.field_1) + ceil32(s) + stor253.length.field_1 + 224] = mem[ceil32(stor253.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor253.length.field_1) + 128] + ceil32(stor253.length.field_1) + ceil32(s) + stor253.length.field_1 + 256 len ceil32(mem[ceil32(stor253.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor253.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor253.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor253.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor253.length.field_1) + ceil32(s) + 160]:
            mem[mem[ceil32(stor253.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor253.length.field_1) + 128] + ceil32(stor253.length.field_1) + ceil32(s) + stor253.length.field_1 + 256] = 0
        return Array(len=mem[ceil32(stor253.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor253.length.field_1) + 128] + ceil32(stor253.length.field_1) + ceil32(s) + stor253.length.field_1 + 256 len ceil32(mem[ceil32(stor253.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor253.length) == uint255(stor253.length) * 0.5 < 32:
        revert with 0, 34
    mem[96] = uint255(stor253.length) * 0.5
    if bool(stor253.length):
        if bool(stor253.length) == uint255(stor253.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor253.length):
            if uint255(stor253.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor253.length) * 0.5) + 224 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
                mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 257] = mem[ceil32(uint255(stor253.length) * 0.5) + 192]
                mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])] = mem[ceil32(uint255(stor253.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192]) > mem[ceil32(uint255(stor253.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 192] + ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(uint255(stor253.length) * 0.5) + 192], data=mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor253.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor253.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
                if ceil32(uint255(stor253.length) * 0.5) <= uint255(stor253.length) * 0.5:
                    mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                        _3686 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3686)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3686)]
                        if ceil32(_3686) > _3686:
                            mem[_3686 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3686) + 32], 
                    _3687 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3687)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3687)]
                    if ceil32(_3687) > _3687:
                        mem[_3687 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3687) + 32], 
                mem[(uint255(stor253.length) * 0.5) + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                    _3688 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3688)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3688)]
                    if ceil32(_3688) > _3688:
                        mem[_3688 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3688) + 32], 
                _3689 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3689)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3689)]
                if ceil32(_3689) > _3689:
                    mem[_3689 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3689) + 32], 
            mem[ceil32(uint255(stor253.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor253.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
            if ceil32(uint255(stor253.length) * 0.5) <= uint255(stor253.length) * 0.5:
                mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                    _3690 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3690)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3690)]
                    if ceil32(_3690) > _3690:
                        mem[_3690 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3690) + 32], 
                _3691 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3691)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3691)]
                if ceil32(_3691) > _3691:
                    mem[_3691 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3691) + 32], 
            mem[(uint255(stor253.length) * 0.5) + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                _3692 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3692)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3692)]
                if ceil32(_3692) > _3692:
                    mem[_3692 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3692) + 32], 
            _3693 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3693)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3693)]
            if ceil32(_3693) > _3693:
                mem[_3693 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3693) + 32], 
        if 31 >= uint255(stor253.length) * 0.5:
            mem[128] = 256 * stor253.length.field_8
            if uint255(stor253.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor253.length) * 0.5) + 224 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
                mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 257] = mem[ceil32(uint255(stor253.length) * 0.5) + 192]
                mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])] = mem[ceil32(uint255(stor253.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192]) > mem[ceil32(uint255(stor253.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 192] + ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(uint255(stor253.length) * 0.5) + 192], data=mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor253.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor253.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
                if ceil32(uint255(stor253.length) * 0.5) <= uint255(stor253.length) * 0.5:
                    mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                        _3694 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3694)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3694)]
                        if ceil32(_3694) > _3694:
                            mem[_3694 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3694) + 32], 
                    _3695 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3695)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3695)]
                    if ceil32(_3695) > _3695:
                        mem[_3695 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3695) + 32], 
                mem[(uint255(stor253.length) * 0.5) + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                    _3696 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3696)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3696)]
                    if ceil32(_3696) > _3696:
                        mem[_3696 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3696) + 32], 
                _3697 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3697)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3697)]
                if ceil32(_3697) > _3697:
                    mem[_3697 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3697) + 32], 
            mem[ceil32(uint255(stor253.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor253.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
            if ceil32(uint255(stor253.length) * 0.5) <= uint255(stor253.length) * 0.5:
                mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                    _3698 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3698)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3698)]
                    if ceil32(_3698) > _3698:
                        mem[_3698 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3698) + 32], 
                _3699 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3699)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3699)]
                if ceil32(_3699) > _3699:
                    mem[_3699 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3699) + 32], 
            mem[(uint255(stor253.length) * 0.5) + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                _3700 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3700)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3700)]
                if ceil32(_3700) > _3700:
                    mem[_3700 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3700) + 32], 
            _3701 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3701)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3701)]
            if ceil32(_3701) > _3701:
                mem[_3701 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3701) + 32], 
        mem[0] = 253
        mem[128] = uint256(stor253.field_0)
        idx = 128
        s = 0
        while (uint255(stor253.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor253[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint255(stor253.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor253.length) * 0.5) + 224 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
            mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 257] = mem[ceil32(uint255(stor253.length) * 0.5) + 192]
            mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])] = mem[ceil32(uint255(stor253.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192]) > mem[ceil32(uint255(stor253.length) * 0.5) + 192]:
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 192] + ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289] = 0
            return Array(len=mem[ceil32(uint255(stor253.length) * 0.5) + 192], data=mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])]), 
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
        mem[ceil32(uint255(stor253.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor253.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
            if ceil32(uint255(stor253.length) * 0.5) <= uint255(stor253.length) * 0.5:
                mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                    _4406 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4406)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4406)]
                    if ceil32(_4406) > _4406:
                        mem[_4406 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4406) + 32], 
                _4407 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4407)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4407)]
                if ceil32(_4407) > _4407:
                    mem[_4407 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4407) + 32], 
            mem[(uint255(stor253.length) * 0.5) + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                _4408 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4408)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4408)]
                if ceil32(_4408) > _4408:
                    mem[_4408 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4408) + 32], 
            _4409 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4409)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4409)]
            if ceil32(_4409) > _4409:
                mem[_4409 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4409) + 32], 
        mem[ceil32(uint255(stor253.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor253.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
        if ceil32(uint255(stor253.length) * 0.5) <= uint255(stor253.length) * 0.5:
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                _4410 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4410)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4410)]
                if ceil32(_4410) > _4410:
                    mem[_4410 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4410) + 32], 
            _4411 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4411)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4411)]
            if ceil32(_4411) > _4411:
                mem[_4411 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4411) + 32], 
        mem[(uint255(stor253.length) * 0.5) + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
        mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
            _4412 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4412)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4412)]
            if ceil32(_4412) > _4412:
                mem[_4412 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4412) + 32], 
        _4413 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4413)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4413)]
        if ceil32(_4413) > _4413:
            mem[_4413 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4413) + 32], 
    if bool(stor253.length) == stor253.length.field_1 < 32:
        revert with 0, 34
    if not stor253.length.field_1:
        if uint255(stor253.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor253.length) * 0.5) + 224 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
            mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 257] = mem[ceil32(uint255(stor253.length) * 0.5) + 192]
            mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])] = mem[ceil32(uint255(stor253.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192]) > mem[ceil32(uint255(stor253.length) * 0.5) + 192]:
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 192] + ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289] = 0
            return Array(len=mem[ceil32(uint255(stor253.length) * 0.5) + 192], data=mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])]), 
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
        mem[ceil32(uint255(stor253.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor253.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
            if ceil32(uint255(stor253.length) * 0.5) <= uint255(stor253.length) * 0.5:
                mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                    _3702 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3702)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3702)]
                    if ceil32(_3702) > _3702:
                        mem[_3702 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3702) + 32], 
                _3703 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3703)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3703)]
                if ceil32(_3703) > _3703:
                    mem[_3703 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3703) + 32], 
            mem[(uint255(stor253.length) * 0.5) + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                _3704 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3704)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3704)]
                if ceil32(_3704) > _3704:
                    mem[_3704 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3704) + 32], 
            _3705 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3705)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3705)]
            if ceil32(_3705) > _3705:
                mem[_3705 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3705) + 32], 
        mem[ceil32(uint255(stor253.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor253.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
        if ceil32(uint255(stor253.length) * 0.5) <= uint255(stor253.length) * 0.5:
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                _3706 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3706)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3706)]
                if ceil32(_3706) > _3706:
                    mem[_3706 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3706) + 32], 
            _3707 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3707)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3707)]
            if ceil32(_3707) > _3707:
                mem[_3707 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3707) + 32], 
        mem[(uint255(stor253.length) * 0.5) + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
        mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
            _3708 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3708)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3708)]
            if ceil32(_3708) > _3708:
                mem[_3708 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3708) + 32], 
        _3709 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3709)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3709)]
        if ceil32(_3709) > _3709:
            mem[_3709 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3709) + 32], 
    if 31 >= stor253.length.field_1:
        mem[128] = 256 * stor253.length.field_8
        if uint255(stor253.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor253.length) * 0.5) + 224 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
            mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 257] = mem[ceil32(uint255(stor253.length) * 0.5) + 192]
            mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])] = mem[ceil32(uint255(stor253.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192]) > mem[ceil32(uint255(stor253.length) * 0.5) + 192]:
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 192] + ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289] = 0
            return Array(len=mem[ceil32(uint255(stor253.length) * 0.5) + 192], data=mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])]), 
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
        mem[ceil32(uint255(stor253.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor253.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
            if ceil32(uint255(stor253.length) * 0.5) <= uint255(stor253.length) * 0.5:
                mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                    _3710 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3710)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3710)]
                    if ceil32(_3710) > _3710:
                        mem[_3710 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3710) + 32], 
                _3711 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3711)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3711)]
                if ceil32(_3711) > _3711:
                    mem[_3711 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3711) + 32], 
            mem[(uint255(stor253.length) * 0.5) + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                _3712 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3712)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3712)]
                if ceil32(_3712) > _3712:
                    mem[_3712 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3712) + 32], 
            _3713 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3713)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3713)]
            if ceil32(_3713) > _3713:
                mem[_3713 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3713) + 32], 
        mem[ceil32(uint255(stor253.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor253.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
        if ceil32(uint255(stor253.length) * 0.5) <= uint255(stor253.length) * 0.5:
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                _3714 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3714)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3714)]
                if ceil32(_3714) > _3714:
                    mem[_3714 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3714) + 32], 
            _3715 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3715)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3715)]
            if ceil32(_3715) > _3715:
                mem[_3715 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3715) + 32], 
        mem[(uint255(stor253.length) * 0.5) + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
        mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
            _3716 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3716)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3716)]
            if ceil32(_3716) > _3716:
                mem[_3716 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3716) + 32], 
        _3717 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_3717)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_3717)]
        if ceil32(_3717) > _3717:
            mem[_3717 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_3717) + 32], 
    mem[0] = 253
    mem[128] = uint256(stor253.field_0)
    idx = 128
    s = 0
    while stor253.length.field_1 + 96 > idx:
        mem[idx + 32] = stor253[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if uint255(stor253.length) * 0.5 <= 0:
        return ''
    if not arg1:
        mem[ceil32(uint255(stor253.length) * 0.5) + 224 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
        mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 225] = 32
        mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 257] = mem[ceil32(uint255(stor253.length) * 0.5) + 192]
        mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])] = mem[ceil32(uint255(stor253.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])]
        if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192]) > mem[ceil32(uint255(stor253.length) * 0.5) + 192]:
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 192] + ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289] = 0
        return Array(len=mem[ceil32(uint255(stor253.length) * 0.5) + 192], data=mem[ceil32(uint255(stor253.length) * 0.5) + (uint255(stor253.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 192])]), 
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
    mem[ceil32(uint255(stor253.length) * 0.5) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor253.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
        if ceil32(uint255(stor253.length) * 0.5) <= uint255(stor253.length) * 0.5:
            mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
                _4414 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4414)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4414)]
                if ceil32(_4414) > _4414:
                    mem[_4414 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4414) + 32], 
            _4415 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4415)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4415)]
            if ceil32(_4415) > _4415:
                mem[_4415 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4415) + 32], 
        mem[(uint255(stor253.length) * 0.5) + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
        mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
            _4416 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4416)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4416)]
            if ceil32(_4416) > _4416:
                mem[_4416 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4416) + 32], 
        _4417 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4417)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4417)]
        if ceil32(_4417) > _4417:
            mem[_4417 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4417) + 32], 
    mem[ceil32(uint255(stor253.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
            revert with 0, 50
        mem[t + ceil32(uint255(stor253.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor253.length) * 0.5)] = mem[128 len ceil32(uint255(stor253.length) * 0.5)]
    if ceil32(uint255(stor253.length) * 0.5) <= uint255(stor253.length) * 0.5:
        mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
        mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
            _4418 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4418)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4418)]
            if ceil32(_4418) > _4418:
                mem[_4418 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4418) + 32], 
        _4419 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4419)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4419)]
        if ceil32(_4419) > _4419:
            mem[_4419 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4419) + 32], 
    mem[(uint255(stor253.length) * 0.5) + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192] = 0
    mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])] = mem[ceil32(uint255(stor253.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128])]
    mem[64] = mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192
    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 192] = 32
    if ceil32(mem[ceil32(uint255(stor253.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor253.length) * 0.5) + 128]:
        _4420 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4420)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4420)]
        if ceil32(_4420) > _4420:
            mem[_4420 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4420) + 32], 
    _4421 = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 160]
    mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256 len ceil32(_4421)] = mem[ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + 192 len ceil32(_4421)]
    if ceil32(_4421) > _4421:
        mem[_4421 + mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 256] = 0
    return 32, mem[mem[ceil32(uint255(stor253.length) * 0.5) + 128] + ceil32(uint255(stor253.length) * 0.5) + ceil32(s) + (uint255(stor253.length) * 0.5) + 224 len ceil32(_4421) + 32], 
}



}
