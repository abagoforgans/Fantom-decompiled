contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, '', 0
    return approved[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, '', 0
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, '', 0
    return balanceOf[address(arg1)]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ownerOf[arg2] != msg.sender:
        if not stor4[stor1[arg2]][msg.sender]:
            revert with 0, '', 0
    if not ownerOf[arg2]:
        revert with 0, '', 0
    if ownerOf[arg2] == arg1:
        revert with 0, '', 0
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 0, 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 0, 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '', 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 0, 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '', 0
}



}
