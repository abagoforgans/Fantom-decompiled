contract main {




// =====================  Runtime code  =====================


const CANNOT_TRANSFER_TO_ZERO_ADDRESS = '018002', 0

const NOT_CURRENT_OWNER = '018001', 0


address owner;
mapping of uint8 stor1;
mapping of address ownerOf;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 tokenByIndex;
mapping of uint256 stor7;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor9;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor1[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0, '003002', 0
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, '005007', 0
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 'NH{q', 50
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0, '005007', 0
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0, '003002', 0
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, '003001', 0
    return tokenOfOwnerByIndex[address(arg1)]
}

function owner() payable {
    return owner
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '018001', 0
    if not arg1:
        revert with 0, '018002', 0
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0, '003003', 0
    if not ownerOf[arg2]:
        revert with 0, '003002', 0
    if arg1 == ownerOf[arg2]:
        revert with 0, '003008', 0
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '018001', 0
    if not arg1:
        revert with 0, '003001', 0
    if ownerOf[arg2]:
        revert with 0, '003006', 0
    if ownerOf[arg2]:
        revert with 0, '003006', 0
    ownerOf[arg2] = arg1
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    if tokenOfOwnerByIndex[address(arg1)] < 1:
        revert with 'NH{q', 17
    stor9[arg2] = tokenOfOwnerByIndex[address(arg1)] - 1
    emit Transfer(0, arg1, arg2);
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    stor7[arg2] = tokenByIndex.length - 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '018001', 0
    if not ownerOf[arg1]:
        revert with 0, '003002', 0
    if approved[arg1]:
        approved[arg1] = 0
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, '003007', 0
    ownerOf[arg1] = 0
    if tokenOfOwnerByIndex[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    if tokenOfOwnerByIndex[stor2[arg1]] - 1 != stor9[arg1]:
        if tokenOfOwnerByIndex[stor2[arg1]] - 1 >= tokenOfOwnerByIndex[stor2[arg1]]:
            revert with 'NH{q', 50
        if stor9[arg1] >= tokenOfOwnerByIndex[stor2[arg1]]:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[stor2[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][tokenOfOwnerByIndex[stor2[arg1]]]
        stor9[stor8[stor2[arg1]][stor8[stor2[arg1]]]] = stor9[arg1]
    if not tokenOfOwnerByIndex[stor2[arg1]]:
        revert with 'NH{q', 49
    tokenOfOwnerByIndex[stor2[arg1]][tokenOfOwnerByIndex[stor2[arg1]]] = 0
    tokenOfOwnerByIndex[stor2[arg1]]--
    emit Transfer(ownerOf[arg1], 0, arg1);
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor7[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor7[arg1]] = tokenByIndex[tokenByIndex.length]
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    stor7[stor6[stor6.length]] = stor7[arg1]
    stor7[arg1] = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, '003004', 0
    if not ownerOf[arg3]:
        revert with 0, '003002', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '003007', 0
    if not arg2:
        revert with 0, '003001', 0
    if approved[arg3]:
        approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '003007', 0
    ownerOf[arg3] = 0
    if tokenOfOwnerByIndex[stor2[arg3]] < 1:
        revert with 'NH{q', 17
    if tokenOfOwnerByIndex[stor2[arg3]] - 1 != stor9[arg3]:
        if tokenOfOwnerByIndex[stor2[arg3]] - 1 >= tokenOfOwnerByIndex[stor2[arg3]]:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenOfOwnerByIndex[stor2[arg3]]:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[stor2[arg3]][stor9[arg3]] = tokenOfOwnerByIndex[stor2[arg3]][tokenOfOwnerByIndex[stor2[arg3]]]
        stor9[stor8[stor2[arg3]][stor8[stor2[arg3]]]] = stor9[arg3]
    if not tokenOfOwnerByIndex[stor2[arg3]]:
        revert with 'NH{q', 49
    tokenOfOwnerByIndex[stor2[arg3]][tokenOfOwnerByIndex[stor2[arg3]]] = 0
    tokenOfOwnerByIndex[stor2[arg3]]--
    if ownerOf[arg3]:
        revert with 0, '003006', 0
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if tokenOfOwnerByIndex[address(arg2)] < 1:
        revert with 'NH{q', 17
    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
    emit Transfer(ownerOf[arg3], arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, '003004', 0
    if not ownerOf[arg3]:
        revert with 0, '003002', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '003007', 0
    if not arg2:
        revert with 0, '003001', 0
    if approved[arg3]:
        approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '003007', 0
    ownerOf[arg3] = 0
    if tokenOfOwnerByIndex[stor2[arg3]] < 1:
        revert with 'NH{q', 17
    if tokenOfOwnerByIndex[stor2[arg3]] - 1 != stor9[arg3]:
        if tokenOfOwnerByIndex[stor2[arg3]] - 1 >= tokenOfOwnerByIndex[stor2[arg3]]:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenOfOwnerByIndex[stor2[arg3]]:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[stor2[arg3]][stor9[arg3]] = tokenOfOwnerByIndex[stor2[arg3]][tokenOfOwnerByIndex[stor2[arg3]]]
        stor9[stor8[stor2[arg3]][stor8[stor2[arg3]]]] = stor9[arg3]
    if not tokenOfOwnerByIndex[stor2[arg3]]:
        revert with 'NH{q', 49
    tokenOfOwnerByIndex[stor2[arg3]][tokenOfOwnerByIndex[stor2[arg3]]] = 0
    tokenOfOwnerByIndex[stor2[arg3]]--
    if ownerOf[arg3]:
        revert with 0, '003006', 0
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if tokenOfOwnerByIndex[address(arg2)] < 1:
        revert with 'NH{q', 17
    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '003005', 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, '003004', 0
    if not ownerOf[arg3]:
        revert with 0, '003002', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '003007', 0
    if not arg2:
        revert with 0, '003001', 0
    if approved[arg3]:
        approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '003007', 0
    ownerOf[arg3] = 0
    if tokenOfOwnerByIndex[stor2[arg3]] < 1:
        revert with 'NH{q', 17
    if tokenOfOwnerByIndex[stor2[arg3]] - 1 != stor9[arg3]:
        if tokenOfOwnerByIndex[stor2[arg3]] - 1 >= tokenOfOwnerByIndex[stor2[arg3]]:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenOfOwnerByIndex[stor2[arg3]]:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[stor2[arg3]][stor9[arg3]] = tokenOfOwnerByIndex[stor2[arg3]][tokenOfOwnerByIndex[stor2[arg3]]]
        stor9[stor8[stor2[arg3]][stor8[stor2[arg3]]]] = stor9[arg3]
    if not tokenOfOwnerByIndex[stor2[arg3]]:
        revert with 'NH{q', 49
    tokenOfOwnerByIndex[stor2[arg3]][tokenOfOwnerByIndex[stor2[arg3]]] = 0
    tokenOfOwnerByIndex[stor2[arg3]]--
    if ownerOf[arg3]:
        revert with 0, '003006', 0
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if tokenOfOwnerByIndex[address(arg2)] < 1:
        revert with 'NH{q', 17
    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '003005', 0
}



}
