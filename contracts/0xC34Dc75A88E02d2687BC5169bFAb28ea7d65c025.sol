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
uint256 sub_7042351f;
uint256 sub_42568bbf;
uint256 sub_676d572a;
uint256 cap;
address sub_639a47f6Address;
address stor17;
address stor18;
uint256 sub_021dbadf;
uint256 sub_4e413cdd;
uint256 sub_7836cf84;
uint256 stor22;

function sub_021dbadf(?) {
    return sub_021dbadf
}

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

function sub_42568bbf(?) {
    return sub_42568bbf
}

function sub_4e413cdd(?) {
    return sub_4e413cdd
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

function sub_639a47f6(?) {
    return sub_639a47f6Address
}

function sub_676d572a(?) {
    return sub_676d572a
}

function sub_7042351f(?) {
    return sub_7042351f
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_7836cf84(?) {
    return sub_7836cf84
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

function sub_6a2e2a73(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4e413cdd = arg1
}

function sub_af093925(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_42568bbf = arg1
}

function sub_d2ab7a30(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7836cf84 = arg1
}

function sub_e2f5b68b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_676d572a = arg1
}

function sub_eb9eb42b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7042351f = arg1
}

function sub_f10b9e8c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_021dbadf = arg1
}

function sub_696b39f3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = address(arg1)
}

function sub_a19c2310(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = address(arg1)
}

function sub_bccd4345(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_639a47f6Address = address(arg1)
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

function sub_e0c6067c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require tokenByIndex.length < cap
    require 1 == sub_7836cf84
    call sub_639a47f6Address with:
       value sub_7042351f wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor22]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor22] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor22
    if address(arg1):
        if address(arg1):
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor22
            stor7[stor22] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor22] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor22]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor22]
        stor9[stor22] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor22] = address(arg1)
    emit Transfer(0, address(arg1), stor22);
    if ext_code.size(address(arg1)):
        require ext_code.size(address(arg1))
        call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, stor22, 128, 0
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
    stor22++
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

function sub_0809286b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require 1 == sub_021dbadf
    require tokenByIndex.length < cap
    if sub_42568bbf > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    mem[100] = msg.sender
    mem[132] = sub_639a47f6Address
    mem[164] = 10^18 * sub_42568bbf
    require ext_code.size(stor17)
    call stor17.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_639a47f6Address, 10^18 * sub_42568bbf
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Could not transfer tokens from your address to this contract'
    mem[ceil32(return_data.size) + 96] = 0
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor22]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor22] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor22
    if address(arg1):
        if address(arg1):
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor22
            stor7[stor22] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor22] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor22]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor22]
        stor9[stor22] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor22] = address(arg1)
    emit Transfer(0, address(arg1), stor22);
    if ext_code.size(address(arg1)):
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = stor22
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 260] = 0
        mem[ceil32(return_data.size) + 292 len 0] = None
        require ext_code.size(address(arg1))
        call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, stor22, 128, 0
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
    stor22++
}

function sub_ff405416(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require 1 == sub_4e413cdd
    require tokenByIndex.length < cap
    if sub_676d572a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    mem[100] = msg.sender
    mem[132] = sub_639a47f6Address
    mem[164] = 10^18 * sub_676d572a
    require ext_code.size(stor18)
    call stor18.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_639a47f6Address, 10^18 * sub_676d572a
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Could not transfer tokens from your address to this contract'
    mem[ceil32(return_data.size) + 96] = 0
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor22]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor22] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor22
    if address(arg1):
        if address(arg1):
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor22
            stor7[stor22] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor22] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor22]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor22]
        stor9[stor22] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor22] = address(arg1)
    emit Transfer(0, address(arg1), stor22);
    if ext_code.size(address(arg1)):
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = stor22
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 260] = 0
        mem[ceil32(return_data.size) + 292 len 0] = None
        require ext_code.size(address(arg1))
        call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, stor22, 128, 0
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
    stor22++
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



}
