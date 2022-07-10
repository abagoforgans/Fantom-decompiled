contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
address adminAddress;
uint256 totalSupply;
uint256 oldSupply;
uint256 minted;
mapping of uint256 balanceOf;
mapping of address ownerOf;
mapping of address approved;
mapping of uint8 stor8;

function oldSupply() payable {
    return oldSupply
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return approved[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function minted() payable {
    return minted
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function owner() payable {
    return adminAddress
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor8[arg1][arg2])
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor8[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ownerOf[arg2] != msg.sender:
        if not stor8[stor6[arg2]][msg.sender]:
            revert with 0, 'NOT_APPROVED'
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000)
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'NOT_OWNER'
    require ownerOf[arg2] == msg.sender
    if not balanceOf[address(msg.sender)]:
        revert with 0, 17
    balanceOf[address(msg.sender)]--
    if balanceOf[address(arg1)] == -1:
        revert with 0, 17
    balanceOf[address(arg1)]++
    approved[arg2] = 0
    ownerOf[arg2] = arg1
    emit Transfer(msg.sender, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor8[stor6[arg3]][msg.sender]:
                revert with 0, 'NOT_APPROVED'
    require ownerOf[arg3] == ownerOf[arg3]
    if not balanceOf[stor6[arg3]]:
        revert with 0, 17
    balanceOf[stor6[arg3]]--
    if balanceOf[address(arg2)] == -1:
        revert with 0, 17
    balanceOf[address(arg2)]++
    approved[arg3] = 0
    ownerOf[arg3] = arg2
    emit Transfer(msg.sender, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor8[stor6[arg3]][msg.sender]:
                revert with 0, 'NOT_APPROVED'
    require ownerOf[arg3] == ownerOf[arg3]
    if not balanceOf[stor6[arg3]]:
        revert with 0, 17
    balanceOf[stor6[arg3]]--
    if balanceOf[address(arg2)] == -1:
        revert with 0, 17
    balanceOf[address(arg2)]++
    approved[arg3] = 0
    ownerOf[arg3] = arg2
    emit Transfer(msg.sender, arg2, arg3);
    if ext_code.size(arg2):
        mem[ceil32(ceil32(arg4.length)) + 293 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) <= arg4.length:
            mem[ceil32(ceil32(arg4.length)) + 97] = ceil32(arg4.length) + 164
            mem[ceil32(ceil32(arg4.length)) + 133 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(ceil32(arg4.length)) + 129 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
            mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 293 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, arg3, 128, arg4.length, mem[ceil32(ceil32(arg4.length)) + 293 len floor32(ceil32(arg4.length) + 195) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(2 * ceil32(arg4.length)) + ceil32(ceil32(arg4.length)) + 457] = 0
            staticcall arg2.mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 293 len 4] with:
                    gas gas_remaining wei
                   args mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 297 len (2 * ceil32(arg4.length)) + 160]
        else:
            mem[arg4.length + ceil32(ceil32(arg4.length)) + 293] = 0
            mem[ceil32(ceil32(arg4.length)) + 97] = ceil32(arg4.length) + 164
            mem[ceil32(ceil32(arg4.length)) + 133 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(ceil32(arg4.length)) + 129 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
            mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 293 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, arg3, 128, arg4.length, mem[ceil32(ceil32(arg4.length)) + 293 len floor32(ceil32(arg4.length) + 195) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(2 * ceil32(arg4.length)) + ceil32(ceil32(arg4.length)) + 457] = 0
            staticcall arg2 with:
                 funct Mask(32, -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256, 0) >> -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256
                    gas gas_remaining wei
                   args Mask(8 * -ceil32(arg4.length) + arg4.length + 28, 0, 0), mem[ceil32(ceil32(arg4.length)) + arg4.length + 325 len (4 * ceil32(arg4.length)) + -arg4.length + 132]
        if not return_data.size:
            require arg4.length >= 32
            require mem[128] == Mask(32, 224, mem[128])
            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'NOT_ERC721_RECEIVER'
        else:
            mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 325] == Mask(32, 224, mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 325])
            if Mask(32, 224, mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 325]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'NOT_ERC721_RECEIVER'
}



}
