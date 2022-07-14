contract main {




// =====================  Runtime code  =====================


#
#  - getLine4(uint256 arg1)
#  - tokenURI(uint256 arg1)
#
mapping of address ownerOf;
array of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor3;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor5;
array of uint256 tokenByIndex;
mapping of uint256 stor7;
array of struct stor8;
array of struct stor9;
array of struct stor10;
array of struct stor12;
array of struct stor13;
array of struct stor14;
array of struct stor15;
array of struct stor16;
array of struct stor17;
array of struct stor18;
array of struct stor19;
array of struct stor20;
array of struct stor21;
uint256 sub_a162de16;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_a162de16(?) payable {
    return sub_a162de16
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor3[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor3[stor0[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function claim() payable {
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor22]:
        revert with 0, 'ERC721: token already minted'
    stor7[stor22] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = sub_a162de16
    if msg.sender:
        tokenOfOwnerByIndex[address(msg.sender)][stor1[address(msg.sender)]] = sub_a162de16
        stor5[stor22] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor7[stor22] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor7[stor22]] = tokenByIndex[tokenByIndex.length]
        stor7[stor6[stor6.length]] = stor7[stor22]
        stor7[stor22] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor22] = msg.sender
    emit Transfer(0, msg.sender, sub_a162de16);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, sub_a162de16, 128, 0
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
    if sub_a162de16 == -1:
        revert with 'NH{q', 17
    sub_a162de16++
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not stor3[stor0[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor7[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor5[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor5[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor1[address(arg1)] - 1]
                stor5[stor4[address(arg1)][stor1[address(arg1)] - 1]] = stor5[arg3]
            stor5[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor1[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor1[address(arg2)]] = arg3
            stor5[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor7[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor7[arg3]] = tokenByIndex[tokenByIndex.length]
        stor7[stor6[stor6.length]] = stor7[arg3]
        stor7[arg3] = 0
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not stor3[stor0[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor7[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor5[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor5[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor1[address(arg1)] - 1]
                stor5[stor4[address(arg1)][stor1[address(arg1)] - 1]] = stor5[arg3]
            stor5[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor1[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor1[address(arg2)]] = arg3
            stor5[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor7[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor7[arg3]] = tokenByIndex[tokenByIndex.length]
        stor7[stor6[stor6.length]] = stor7[arg3]
        stor7[arg3] = 0
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
            if not stor3[stor0[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor7[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor5[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor5[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor1[address(arg1)] - 1]
                stor5[stor4[address(arg1)][stor1[address(arg1)] - 1]] = stor5[arg3]
            stor5[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor1[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor1[address(arg2)]] = arg3
            stor5[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor7[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor7[arg3]] = tokenByIndex[tokenByIndex.length]
        stor7[stor6[stor6.length]] = stor7[arg3]
        stor7[arg3] = 0
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

function getLine1(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'Line1'
    mem[64] = (32 * stor8.length) + 192
    mem[160] = stor8.length
    s = 192
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if stor8[idx].field_0:
            if stor8[idx].field_0 == stor8[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor8[idx].field_1) + 32
            mem[_124] = stor8[idx].field_1
            if stor8[idx].field_0:
                if stor8[idx].field_0 == stor8[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor8[idx].field_1:
                    if 31 >= stor8[idx].field_1:
                        mem[_124 + 32] = 256 * stor8[idx].field_8
                    else:
                        mem[0] = sha3(8) + idx
                        mem[_124 + 32] = stor8[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor8[idx].field_1 > t:
                            mem[t + 32] = balanceOf[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor8[idx].field_0 == stor8[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor8[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor8[idx].field_1:
                mem[_124 + 32] = 256 * stor8[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(8) + idx
            mem[_124 + 32] = stor8[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor8[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor8[idx].field_0 == stor8[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor8[idx].field_1) + 32
        mem[_126] = stor8[idx].field_1
        if stor8[idx].field_0:
            if stor8[idx].field_0 == stor8[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor8[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor8[idx].field_1:
                mem[_126 + 32] = 256 * stor8[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(8) + idx
            mem[_126 + 32] = stor8[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor8[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor8[idx].field_0 == stor8[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor8[idx].field_1:
            if 31 >= stor8[idx].field_1:
                mem[_126 + 32] = 256 * stor8[idx].field_8
            else:
                mem[0] = sha3(8) + idx
                mem[_126 + 32] = stor8[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor8[idx].field_1 > t:
                    mem[t + 32] = balanceOf[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _584 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        _586 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = mem[96] + _923
                mem[64] = mem[64] + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[mem[64] + mem[96] + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = mem[96] + _923
            mem[64] = mem[64] + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = mem[96] + _941
            mem[64] = mem[64] + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[mem[64] + mem[96] + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = mem[96] + _924
            mem[64] = mem[64] + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[mem[64] + mem[96] + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = mem[96] + _924
        mem[64] = mem[64] + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = mem[96] + _942
        mem[64] = mem[64] + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[mem[64] + mem[96] + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = mem[96] + _942
    mem[64] = mem[64] + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function getLine2(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'Line2'
    mem[64] = (32 * stor9.length) + 192
    mem[160] = stor9.length
    s = 192
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if stor9[idx].field_0:
            if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor9[idx].field_1) + 32
            mem[_124] = stor9[idx].field_1
            if stor9[idx].field_0:
                if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor9[idx].field_1:
                    if 31 >= stor9[idx].field_1:
                        mem[_124 + 32] = 256 * stor9[idx].field_8
                    else:
                        mem[0] = sha3(9) + idx
                        mem[_124 + 32] = stor9[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor9[idx].field_1 > t:
                            mem[t + 32] = balanceOf[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor9[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor9[idx].field_1:
                mem[_124 + 32] = 256 * stor9[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(9) + idx
            mem[_124 + 32] = stor9[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor9[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor9[idx].field_0 == stor9[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor9[idx].field_1) + 32
        mem[_126] = stor9[idx].field_1
        if stor9[idx].field_0:
            if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor9[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor9[idx].field_1:
                mem[_126 + 32] = 256 * stor9[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(9) + idx
            mem[_126 + 32] = stor9[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor9[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor9[idx].field_0 == stor9[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[idx].field_1:
            if 31 >= stor9[idx].field_1:
                mem[_126 + 32] = 256 * stor9[idx].field_8
            else:
                mem[0] = sha3(9) + idx
                mem[_126 + 32] = stor9[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor9[idx].field_1 > t:
                    mem[t + 32] = balanceOf[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _584 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        _586 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = mem[96] + _923
                mem[64] = mem[64] + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[mem[64] + mem[96] + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = mem[96] + _923
            mem[64] = mem[64] + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = mem[96] + _941
            mem[64] = mem[64] + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[mem[64] + mem[96] + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = mem[96] + _924
            mem[64] = mem[64] + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[mem[64] + mem[96] + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = mem[96] + _924
        mem[64] = mem[64] + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = mem[96] + _942
        mem[64] = mem[64] + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[mem[64] + mem[96] + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = mem[96] + _942
    mem[64] = mem[64] + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function sub_a83c998f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'Line9'
    mem[64] = (32 * stor16.length) + 192
    mem[160] = stor16.length
    s = 192
    idx = 0
    while idx < stor16.length:
        mem[0] = 16
        if stor16[idx].field_0:
            if stor16[idx].field_0 == stor16[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor16[idx].field_1) + 32
            mem[_124] = stor16[idx].field_1
            if stor16[idx].field_0:
                if stor16[idx].field_0 == stor16[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor16[idx].field_1:
                    if 31 >= stor16[idx].field_1:
                        mem[_124 + 32] = 256 * stor16[idx].field_8
                    else:
                        mem[0] = sha3(16) + idx
                        mem[_124 + 32] = stor16[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor16[idx].field_1 > t:
                            mem[t + 32] = balanceOf[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor16[idx].field_0 == stor16[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor16[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor16[idx].field_1:
                mem[_124 + 32] = 256 * stor16[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(16) + idx
            mem[_124 + 32] = stor16[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor16[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor16[idx].field_0 == stor16[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor16[idx].field_1) + 32
        mem[_126] = stor16[idx].field_1
        if stor16[idx].field_0:
            if stor16[idx].field_0 == stor16[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor16[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor16[idx].field_1:
                mem[_126 + 32] = 256 * stor16[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(16) + idx
            mem[_126 + 32] = stor16[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor16[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor16[idx].field_0 == stor16[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor16[idx].field_1:
            if 31 >= stor16[idx].field_1:
                mem[_126 + 32] = 256 * stor16[idx].field_8
            else:
                mem[0] = sha3(16) + idx
                mem[_126 + 32] = stor16[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor16[idx].field_1 > t:
                    mem[t + 32] = balanceOf[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _584 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        _586 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = mem[96] + _923
                mem[64] = mem[64] + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[mem[64] + mem[96] + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = mem[96] + _923
            mem[64] = mem[64] + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = mem[96] + _941
            mem[64] = mem[64] + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[mem[64] + mem[96] + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = mem[96] + _924
            mem[64] = mem[64] + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[mem[64] + mem[96] + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = mem[96] + _924
        mem[64] = mem[64] + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = mem[96] + _942
        mem[64] = mem[64] + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[mem[64] + mem[96] + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = mem[96] + _942
    mem[64] = mem[64] + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function sub_e8d7d36f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'Line8'
    mem[64] = (32 * stor15.length) + 192
    mem[160] = stor15.length
    s = 192
    idx = 0
    while idx < stor15.length:
        mem[0] = 15
        if stor15[idx].field_0:
            if stor15[idx].field_0 == stor15[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor15[idx].field_1) + 32
            mem[_124] = stor15[idx].field_1
            if stor15[idx].field_0:
                if stor15[idx].field_0 == stor15[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor15[idx].field_1:
                    if 31 >= stor15[idx].field_1:
                        mem[_124 + 32] = 256 * stor15[idx].field_8
                    else:
                        mem[0] = sha3(15) + idx
                        mem[_124 + 32] = stor15[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor15[idx].field_1 > t:
                            mem[t + 32] = balanceOf[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor15[idx].field_0 == stor15[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor15[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor15[idx].field_1:
                mem[_124 + 32] = 256 * stor15[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(15) + idx
            mem[_124 + 32] = stor15[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor15[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor15[idx].field_0 == stor15[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor15[idx].field_1) + 32
        mem[_126] = stor15[idx].field_1
        if stor15[idx].field_0:
            if stor15[idx].field_0 == stor15[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor15[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor15[idx].field_1:
                mem[_126 + 32] = 256 * stor15[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(15) + idx
            mem[_126 + 32] = stor15[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor15[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor15[idx].field_0 == stor15[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor15[idx].field_1:
            if 31 >= stor15[idx].field_1:
                mem[_126 + 32] = 256 * stor15[idx].field_8
            else:
                mem[0] = sha3(15) + idx
                mem[_126 + 32] = stor15[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor15[idx].field_1 > t:
                    mem[t + 32] = balanceOf[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _584 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        _586 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = mem[96] + _923
                mem[64] = mem[64] + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[mem[64] + mem[96] + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = mem[96] + _923
            mem[64] = mem[64] + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = mem[96] + _941
            mem[64] = mem[64] + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[mem[64] + mem[96] + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = mem[96] + _924
            mem[64] = mem[64] + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[mem[64] + mem[96] + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = mem[96] + _924
        mem[64] = mem[64] + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = mem[96] + _942
        mem[64] = mem[64] + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[mem[64] + mem[96] + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = mem[96] + _942
    mem[64] = mem[64] + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function sub_3641767f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 6
    mem[128] = 'Line13'
    mem[64] = (32 * stor20.length) + 192
    mem[160] = stor20.length
    s = 192
    idx = 0
    while idx < stor20.length:
        mem[0] = 20
        if stor20[idx].field_0:
            if stor20[idx].field_0 == stor20[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor20[idx].field_1) + 32
            mem[_124] = stor20[idx].field_1
            if stor20[idx].field_0:
                if stor20[idx].field_0 == stor20[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor20[idx].field_1:
                    if 31 >= stor20[idx].field_1:
                        mem[_124 + 32] = 256 * stor20[idx].field_8
                    else:
                        mem[0] = sha3(20) + idx
                        mem[_124 + 32] = stor20[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor20[idx].field_1 > t:
                            mem[t + 32] = balanceOf[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor20[idx].field_0 == stor20[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor20[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor20[idx].field_1:
                mem[_124 + 32] = 256 * stor20[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(20) + idx
            mem[_124 + 32] = stor20[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor20[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor20[idx].field_0 == stor20[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor20[idx].field_1) + 32
        mem[_126] = stor20[idx].field_1
        if stor20[idx].field_0:
            if stor20[idx].field_0 == stor20[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor20[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor20[idx].field_1:
                mem[_126 + 32] = 256 * stor20[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(20) + idx
            mem[_126 + 32] = stor20[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor20[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor20[idx].field_0 == stor20[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor20[idx].field_1:
            if 31 >= stor20[idx].field_1:
                mem[_126 + 32] = 256 * stor20[idx].field_8
            else:
                mem[0] = sha3(20) + idx
                mem[_126 + 32] = stor20[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor20[idx].field_1 > t:
                    mem[t + 32] = balanceOf[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _584 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        _586 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = mem[96] + _923
                mem[64] = mem[64] + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[mem[64] + mem[96] + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = mem[96] + _923
            mem[64] = mem[64] + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = mem[96] + _941
            mem[64] = mem[64] + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[mem[64] + mem[96] + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = mem[96] + _924
            mem[64] = mem[64] + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[mem[64] + mem[96] + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = mem[96] + _924
        mem[64] = mem[64] + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = mem[96] + _942
        mem[64] = mem[64] + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[mem[64] + mem[96] + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = mem[96] + _942
    mem[64] = mem[64] + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function sub_5b54cf00(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 6
    mem[128] = 'Line14'
    mem[64] = (32 * stor21.length) + 192
    mem[160] = stor21.length
    s = 192
    idx = 0
    while idx < stor21.length:
        mem[0] = 21
        if stor21[idx].field_0:
            if stor21[idx].field_0 == stor21[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor21[idx].field_1) + 32
            mem[_124] = stor21[idx].field_1
            if stor21[idx].field_0:
                if stor21[idx].field_0 == stor21[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor21[idx].field_1:
                    if 31 >= stor21[idx].field_1:
                        mem[_124 + 32] = 256 * stor21[idx].field_8
                    else:
                        mem[0] = sha3(21) + idx
                        mem[_124 + 32] = stor21[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor21[idx].field_1 > t:
                            mem[t + 32] = balanceOf[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor21[idx].field_0 == stor21[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor21[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor21[idx].field_1:
                mem[_124 + 32] = 256 * stor21[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(21) + idx
            mem[_124 + 32] = stor21[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor21[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor21[idx].field_0 == stor21[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor21[idx].field_1) + 32
        mem[_126] = stor21[idx].field_1
        if stor21[idx].field_0:
            if stor21[idx].field_0 == stor21[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor21[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor21[idx].field_1:
                mem[_126 + 32] = 256 * stor21[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(21) + idx
            mem[_126 + 32] = stor21[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor21[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor21[idx].field_0 == stor21[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor21[idx].field_1:
            if 31 >= stor21[idx].field_1:
                mem[_126 + 32] = 256 * stor21[idx].field_8
            else:
                mem[0] = sha3(21) + idx
                mem[_126 + 32] = stor21[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor21[idx].field_1 > t:
                    mem[t + 32] = balanceOf[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _584 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        _586 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = mem[96] + _923
                mem[64] = mem[64] + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[mem[64] + mem[96] + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = mem[96] + _923
            mem[64] = mem[64] + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = mem[96] + _941
            mem[64] = mem[64] + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[mem[64] + mem[96] + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = mem[96] + _924
            mem[64] = mem[64] + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[mem[64] + mem[96] + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = mem[96] + _924
        mem[64] = mem[64] + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = mem[96] + _942
        mem[64] = mem[64] + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[mem[64] + mem[96] + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = mem[96] + _942
    mem[64] = mem[64] + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function sub_716a51df(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 6
    mem[128] = 'Line10'
    mem[64] = (32 * stor17.length) + 192
    mem[160] = stor17.length
    s = 192
    idx = 0
    while idx < stor17.length:
        mem[0] = 17
        if stor17[idx].field_0:
            if stor17[idx].field_0 == stor17[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor17[idx].field_1) + 32
            mem[_124] = stor17[idx].field_1
            if stor17[idx].field_0:
                if stor17[idx].field_0 == stor17[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[idx].field_1:
                    if 31 >= stor17[idx].field_1:
                        mem[_124 + 32] = 256 * stor17[idx].field_8
                    else:
                        mem[0] = sha3(17) + idx
                        mem[_124 + 32] = stor17[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor17[idx].field_1 > t:
                            mem[t + 32] = balanceOf[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor17[idx].field_0 == stor17[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor17[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor17[idx].field_1:
                mem[_124 + 32] = 256 * stor17[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(17) + idx
            mem[_124 + 32] = stor17[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor17[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor17[idx].field_0 == stor17[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor17[idx].field_1) + 32
        mem[_126] = stor17[idx].field_1
        if stor17[idx].field_0:
            if stor17[idx].field_0 == stor17[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor17[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor17[idx].field_1:
                mem[_126 + 32] = 256 * stor17[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(17) + idx
            mem[_126 + 32] = stor17[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor17[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor17[idx].field_0 == stor17[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor17[idx].field_1:
            if 31 >= stor17[idx].field_1:
                mem[_126 + 32] = 256 * stor17[idx].field_8
            else:
                mem[0] = sha3(17) + idx
                mem[_126 + 32] = stor17[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor17[idx].field_1 > t:
                    mem[t + 32] = balanceOf[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _584 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        _586 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = mem[96] + _923
                mem[64] = mem[64] + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[mem[64] + mem[96] + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = mem[96] + _923
            mem[64] = mem[64] + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = mem[96] + _941
            mem[64] = mem[64] + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[mem[64] + mem[96] + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = mem[96] + _924
            mem[64] = mem[64] + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[mem[64] + mem[96] + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = mem[96] + _924
        mem[64] = mem[64] + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = mem[96] + _942
        mem[64] = mem[64] + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[mem[64] + mem[96] + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = mem[96] + _942
    mem[64] = mem[64] + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function sub_8995c2cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 6
    mem[128] = 'Line12'
    mem[64] = (32 * stor19.length) + 192
    mem[160] = stor19.length
    s = 192
    idx = 0
    while idx < stor19.length:
        mem[0] = 19
        if stor19[idx].field_0:
            if stor19[idx].field_0 == stor19[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor19[idx].field_1) + 32
            mem[_124] = stor19[idx].field_1
            if stor19[idx].field_0:
                if stor19[idx].field_0 == stor19[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[idx].field_1:
                    if 31 >= stor19[idx].field_1:
                        mem[_124 + 32] = 256 * stor19[idx].field_8
                    else:
                        mem[0] = sha3(19) + idx
                        mem[_124 + 32] = stor19[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor19[idx].field_1 > t:
                            mem[t + 32] = balanceOf[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor19[idx].field_0 == stor19[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor19[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor19[idx].field_1:
                mem[_124 + 32] = 256 * stor19[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(19) + idx
            mem[_124 + 32] = stor19[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor19[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor19[idx].field_0 == stor19[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor19[idx].field_1) + 32
        mem[_126] = stor19[idx].field_1
        if stor19[idx].field_0:
            if stor19[idx].field_0 == stor19[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor19[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor19[idx].field_1:
                mem[_126 + 32] = 256 * stor19[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(19) + idx
            mem[_126 + 32] = stor19[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor19[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor19[idx].field_0 == stor19[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor19[idx].field_1:
            if 31 >= stor19[idx].field_1:
                mem[_126 + 32] = 256 * stor19[idx].field_8
            else:
                mem[0] = sha3(19) + idx
                mem[_126 + 32] = stor19[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor19[idx].field_1 > t:
                    mem[t + 32] = balanceOf[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _584 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        _586 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = mem[96] + _923
                mem[64] = mem[64] + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[mem[64] + mem[96] + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = mem[96] + _923
            mem[64] = mem[64] + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = mem[96] + _941
            mem[64] = mem[64] + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[mem[64] + mem[96] + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = mem[96] + _924
            mem[64] = mem[64] + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[mem[64] + mem[96] + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = mem[96] + _924
        mem[64] = mem[64] + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = mem[96] + _942
        mem[64] = mem[64] + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[mem[64] + mem[96] + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = mem[96] + _942
    mem[64] = mem[64] + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function sub_b8f0da0e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 6
    mem[128] = 'Line11'
    mem[64] = (32 * stor18.length) + 192
    mem[160] = stor18.length
    s = 192
    idx = 0
    while idx < stor18.length:
        mem[0] = 18
        if stor18[idx].field_0:
            if stor18[idx].field_0 == stor18[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor18[idx].field_1) + 32
            mem[_124] = stor18[idx].field_1
            if stor18[idx].field_0:
                if stor18[idx].field_0 == stor18[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor18[idx].field_1:
                    if 31 >= stor18[idx].field_1:
                        mem[_124 + 32] = 256 * stor18[idx].field_8
                    else:
                        mem[0] = sha3(18) + idx
                        mem[_124 + 32] = stor18[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor18[idx].field_1 > t:
                            mem[t + 32] = balanceOf[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor18[idx].field_0 == stor18[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor18[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor18[idx].field_1:
                mem[_124 + 32] = 256 * stor18[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(18) + idx
            mem[_124 + 32] = stor18[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor18[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor18[idx].field_0 == stor18[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor18[idx].field_1) + 32
        mem[_126] = stor18[idx].field_1
        if stor18[idx].field_0:
            if stor18[idx].field_0 == stor18[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor18[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor18[idx].field_1:
                mem[_126 + 32] = 256 * stor18[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(18) + idx
            mem[_126 + 32] = stor18[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor18[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor18[idx].field_0 == stor18[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor18[idx].field_1:
            if 31 >= stor18[idx].field_1:
                mem[_126 + 32] = 256 * stor18[idx].field_8
            else:
                mem[0] = sha3(18) + idx
                mem[_126 + 32] = stor18[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor18[idx].field_1 > t:
                    mem[t + 32] = balanceOf[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _584 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        _586 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = mem[96] + _923
                mem[64] = mem[64] + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[mem[64] + mem[96] + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = mem[96] + _923
            mem[64] = mem[64] + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = mem[96] + _941
            mem[64] = mem[64] + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[mem[64] + mem[96] + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = mem[96] + _924
            mem[64] = mem[64] + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[mem[64] + mem[96] + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = mem[96] + _924
        mem[64] = mem[64] + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = mem[96] + _942
        mem[64] = mem[64] + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[mem[64] + mem[96] + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = mem[96] + _942
    mem[64] = mem[64] + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function getLine3(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'Line3'
    mem[64] = (32 * stor10.length) + 192
    mem[160] = stor10.length
    s = 192
    idx = 0
    while idx < stor10.length:
        mem[0] = 10
        if stor10[idx].field_0:
            if stor10[idx].field_0 == stor10[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor10[idx].field_1) + 32
            mem[_124] = stor10[idx].field_1
            if stor10[idx].field_0:
                if stor10[idx].field_0 == stor10[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor10[idx].field_1:
                    if 31 >= stor10[idx].field_1:
                        mem[_124 + 32] = 256 * stor10[idx].field_8
                    else:
                        mem[0] = sha3(10) + idx
                        mem[_124 + 32] = stor10[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor10[idx].field_1 > t:
                            mem[t + 32] = balanceOf[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor10[idx].field_0 == stor10[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor10[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor10[idx].field_1:
                mem[_124 + 32] = 256 * stor10[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(10) + idx
            mem[_124 + 32] = stor10[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor10[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor10[idx].field_0 == stor10[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor10[idx].field_1) + 32
        mem[_126] = stor10[idx].field_1
        if stor10[idx].field_0:
            if stor10[idx].field_0 == stor10[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor10[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor10[idx].field_1:
                mem[_126 + 32] = 256 * stor10[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(10) + idx
            mem[_126 + 32] = stor10[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor10[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor10[idx].field_0 == stor10[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[idx].field_1:
            if 31 >= stor10[idx].field_1:
                mem[_126 + 32] = 256 * stor10[idx].field_8
            else:
                mem[0] = sha3(10) + idx
                mem[_126 + 32] = stor10[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor10[idx].field_1 > t:
                    mem[t + 32] = balanceOf[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _584 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        _586 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = mem[96] + _923
                mem[64] = mem[64] + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[mem[64] + mem[96] + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = mem[96] + _923
            mem[64] = mem[64] + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = mem[96] + _941
            mem[64] = mem[64] + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[mem[64] + mem[96] + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = mem[96] + _924
            mem[64] = mem[64] + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[mem[64] + mem[96] + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = mem[96] + _924
        mem[64] = mem[64] + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = mem[96] + _942
        mem[64] = mem[64] + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[mem[64] + mem[96] + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = mem[96] + _942
    mem[64] = mem[64] + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function getLine6(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'Line6'
    mem[64] = (32 * stor13.length) + 192
    mem[160] = stor13.length
    s = 192
    idx = 0
    while idx < stor13.length:
        mem[0] = 13
        if stor13[idx].field_0:
            if stor13[idx].field_0 == stor13[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor13[idx].field_1) + 32
            mem[_124] = stor13[idx].field_1
            if stor13[idx].field_0:
                if stor13[idx].field_0 == stor13[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor13[idx].field_1:
                    if 31 >= stor13[idx].field_1:
                        mem[_124 + 32] = 256 * stor13[idx].field_8
                    else:
                        mem[0] = sha3(13) + idx
                        mem[_124 + 32] = stor13[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor13[idx].field_1 > t:
                            mem[t + 32] = balanceOf[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor13[idx].field_0 == stor13[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor13[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor13[idx].field_1:
                mem[_124 + 32] = 256 * stor13[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(13) + idx
            mem[_124 + 32] = stor13[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor13[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor13[idx].field_0 == stor13[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor13[idx].field_1) + 32
        mem[_126] = stor13[idx].field_1
        if stor13[idx].field_0:
            if stor13[idx].field_0 == stor13[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor13[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor13[idx].field_1:
                mem[_126 + 32] = 256 * stor13[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(13) + idx
            mem[_126 + 32] = stor13[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor13[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor13[idx].field_0 == stor13[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor13[idx].field_1:
            if 31 >= stor13[idx].field_1:
                mem[_126 + 32] = 256 * stor13[idx].field_8
            else:
                mem[0] = sha3(13) + idx
                mem[_126 + 32] = stor13[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor13[idx].field_1 > t:
                    mem[t + 32] = balanceOf[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _584 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        _586 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = mem[96] + _923
                mem[64] = mem[64] + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[mem[64] + mem[96] + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = mem[96] + _923
            mem[64] = mem[64] + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = mem[96] + _941
            mem[64] = mem[64] + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[mem[64] + mem[96] + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = mem[96] + _924
            mem[64] = mem[64] + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[mem[64] + mem[96] + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = mem[96] + _924
        mem[64] = mem[64] + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = mem[96] + _942
        mem[64] = mem[64] + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[mem[64] + mem[96] + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = mem[96] + _942
    mem[64] = mem[64] + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function getLine5(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'Line5'
    mem[64] = (32 * stor12.length) + 192
    mem[160] = stor12.length
    s = 192
    idx = 0
    while idx < stor12.length:
        mem[0] = 12
        if stor12[idx].field_0:
            if stor12[idx].field_0 == stor12[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor12[idx].field_1) + 32
            mem[_124] = stor12[idx].field_1
            if stor12[idx].field_0:
                if stor12[idx].field_0 == stor12[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor12[idx].field_1:
                    if 31 >= stor12[idx].field_1:
                        mem[_124 + 32] = 256 * stor12[idx].field_8
                    else:
                        mem[0] = sha3(12) + idx
                        mem[_124 + 32] = stor12[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor12[idx].field_1 > t:
                            mem[t + 32] = balanceOf[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor12[idx].field_0 == stor12[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor12[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor12[idx].field_1:
                mem[_124 + 32] = 256 * stor12[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(12) + idx
            mem[_124 + 32] = stor12[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor12[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor12[idx].field_0 == stor12[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor12[idx].field_1) + 32
        mem[_126] = stor12[idx].field_1
        if stor12[idx].field_0:
            if stor12[idx].field_0 == stor12[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor12[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor12[idx].field_1:
                mem[_126 + 32] = 256 * stor12[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(12) + idx
            mem[_126 + 32] = stor12[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor12[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor12[idx].field_0 == stor12[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor12[idx].field_1:
            if 31 >= stor12[idx].field_1:
                mem[_126 + 32] = 256 * stor12[idx].field_8
            else:
                mem[0] = sha3(12) + idx
                mem[_126 + 32] = stor12[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor12[idx].field_1 > t:
                    mem[t + 32] = balanceOf[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _584 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        _586 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = mem[96] + _923
                mem[64] = mem[64] + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[mem[64] + mem[96] + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = mem[96] + _923
            mem[64] = mem[64] + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = mem[96] + _941
            mem[64] = mem[64] + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[mem[64] + mem[96] + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = mem[96] + _924
            mem[64] = mem[64] + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[mem[64] + mem[96] + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = mem[96] + _924
        mem[64] = mem[64] + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = mem[96] + _942
        mem[64] = mem[64] + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[mem[64] + mem[96] + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = mem[96] + _942
    mem[64] = mem[64] + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function getLine7(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'Line7'
    mem[64] = (32 * stor14.length) + 192
    mem[160] = stor14.length
    s = 192
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        if stor14[idx].field_0:
            if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor14[idx].field_1) + 32
            mem[_124] = stor14[idx].field_1
            if stor14[idx].field_0:
                if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor14[idx].field_1:
                    if 31 >= stor14[idx].field_1:
                        mem[_124 + 32] = 256 * stor14[idx].field_8
                    else:
                        mem[0] = sha3(14) + idx
                        mem[_124 + 32] = stor14[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor14[idx].field_1 > t:
                            mem[t + 32] = balanceOf[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor14[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor14[idx].field_1:
                mem[_124 + 32] = 256 * stor14[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(14) + idx
            mem[_124 + 32] = stor14[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor14[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor14[idx].field_0 == stor14[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor14[idx].field_1) + 32
        mem[_126] = stor14[idx].field_1
        if stor14[idx].field_0:
            if stor14[idx].field_0 == stor14[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor14[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor14[idx].field_1:
                mem[_126 + 32] = 256 * stor14[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(14) + idx
            mem[_126 + 32] = stor14[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor14[u].field_1 > t:
                mem[t + 32] = balanceOf[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor14[idx].field_0 == stor14[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor14[idx].field_1:
            if 31 >= stor14[idx].field_1:
                mem[_126 + 32] = 256 * stor14[idx].field_8
            else:
                mem[0] = sha3(14) + idx
                mem[_126 + 32] = stor14[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor14[idx].field_1 > t:
                    mem[t + 32] = balanceOf[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _584 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        _586 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = mem[96] + _923
                mem[64] = mem[64] + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[mem[64] + mem[96] + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = mem[96] + _923
            mem[64] = mem[64] + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = mem[96] + _941
            mem[64] = mem[64] + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[mem[64] + mem[96] + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = mem[96] + _924
            mem[64] = mem[64] + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[mem[64] + mem[96] + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = mem[96] + _924
        mem[64] = mem[64] + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = mem[96] + _942
        mem[64] = mem[64] + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[mem[64] + mem[96] + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = mem[96] + _942
    mem[64] = mem[64] + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function pluck(uint256 arg1, string arg2, string[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + floor32(arg3.length) + 98 > test266151307() or floor32(arg3.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(arg2.length)) + floor32(arg3.length) + 98
    mem[ceil32(ceil32(arg2.length)) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = ceil32(ceil32(arg2.length)) + 129
    while idx < arg3.length:
        require cd[s] <= test266151307()
        require arg3 + cd[s] + 67 < calldata.size
        if cd[(arg3 + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _119 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1
        mem[_119] = cd[(arg3 + cd[s] + 36)]
        require arg3 + cd[s] + cd[(arg3 + cd[s] + 36)] + 68 <= calldata.size
        mem[_119 + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[_119 + cd[(arg3 + cd[s] + 36)] + 32] = 0
        mem[t] = _119
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not arg1:
        _116 = mem[64]
        mem[64] = mem[64] + 64
        mem[_116] = 1
        mem[_116 + 32] = '0'
        _117 = mem[64]
        _118 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = '0'
        mem[mem[64] + mem[96] + 33] = 0
        if ceil32(mem[96]) <= mem[96]:
            _572 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + _118 + 33
            _579 = mem[_572]
            mem[_117 + _118 + 65 len ceil32(mem[_572])] = mem[_572 + 32 len ceil32(mem[_572])]
            if ceil32(_579) <= _579:
                mem[_117 + _118 + 33] = _579
                mem[64] = _117 + _118 + _579 + 65
                if not mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 'NH{q', 18
                if sha3(mem[_117 + _118 + 65 len _579]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 'NH{q', 50
                _945 = mem[(32 * sha3(mem[_117 + _118 + 65 len _579]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
                mem[_117 + _118 + _579 + 65] = 32
                _978 = mem[_945]
                mem[_117 + _118 + _579 + 97] = mem[_945]
                mem[_117 + _118 + _579 + 129 len ceil32(_978)] = mem[_945 + 32 len ceil32(_978)]
                if ceil32(_978) > _978:
                    mem[_117 + _118 + _579 + _978 + 129] = 0
                return 32, mem[_117 + _118 + _579 + 97 len ceil32(_978) + 32]
            mem[_117 + _118 + _579 + 65] = 0
            mem[_117 + _118 + 33] = _579
            mem[64] = _117 + _118 + _579 + 65
            if not mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 18
            if sha3(mem[_117 + _118 + 65 len _579]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 50
            _954 = mem[(32 * sha3(mem[_117 + _118 + 65 len _579]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
            mem[_117 + _118 + _579 + 65] = 32
            _984 = mem[_954]
            mem[_117 + _118 + _579 + 97] = mem[_954]
            mem[_117 + _118 + _579 + 129 len ceil32(_984)] = mem[_954 + 32 len ceil32(_984)]
            if ceil32(_984) > _984:
                mem[_117 + _118 + _579 + _984 + 129] = 0
            return 32, mem[_117 + _118 + _579 + 97 len ceil32(_984) + 32]
        _574 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + _118 + 33
        _580 = mem[_574]
        mem[_117 + _118 + 65 len ceil32(mem[_574])] = mem[_574 + 32 len ceil32(mem[_574])]
        if ceil32(_580) <= _580:
            mem[_117 + _118 + 33] = _580
            mem[64] = _117 + _118 + _580 + 65
            if not mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 18
            if sha3(mem[_117 + _118 + 65 len _580]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 50
            _949 = mem[(32 * sha3(mem[_117 + _118 + 65 len _580]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
            mem[_117 + _118 + _580 + 65] = 32
            _980 = mem[_949]
            mem[_117 + _118 + _580 + 97] = mem[_949]
            mem[_117 + _118 + _580 + 129 len ceil32(_980)] = mem[_949 + 32 len ceil32(_980)]
            if ceil32(_980) > _980:
                mem[_117 + _118 + _580 + _980 + 129] = 0
            return 32, mem[_117 + _118 + _580 + 97 len ceil32(_980) + 32]
        mem[_117 + _118 + _580 + 65] = 0
        mem[_117 + _118 + 33] = _580
        mem[64] = _117 + _118 + _580 + 65
        if not mem[ceil32(ceil32(arg2.length)) + 97]:
            revert with 'NH{q', 18
        if sha3(mem[_117 + _118 + 65 len _580]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
            revert with 'NH{q', 50
        _958 = mem[(32 * sha3(mem[_117 + _118 + 65 len _580]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
        mem[_117 + _118 + _580 + 65] = 32
        _986 = mem[_958]
        mem[_117 + _118 + _580 + 97] = mem[_958]
        mem[_117 + _118 + _580 + 129 len ceil32(_986)] = mem[_958 + 32 len ceil32(_986)]
        if ceil32(_986) > _986:
            mem[_117 + _118 + _580 + _986 + 129] = 0
        return 32, mem[_117 + _118 + _580 + 97 len ceil32(_986) + 32]
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
    _230 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_230]:
                revert with 'NH{q', 50
            mem[t + _230 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _565 = mem[64]
        _569 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _911 = mem[_230]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_230])] = mem[_230 + 32 len ceil32(mem[_230])]
            if ceil32(_911) <= _911:
                _1215 = mem[64]
                mem[mem[64]] = mem[96] + _911
                mem[64] = mem[64] + _569 + _911 + 32
                _1247 = mem[_1215]
                mem[_565 + _569 + _911 + 64 len ceil32(mem[_1215])] = mem[_1215 + 32 len ceil32(mem[_1215])]
                if ceil32(_1247) <= _1247:
                    mem[_565 + _569 + _911 + 32] = _1247
                    mem[64] = _565 + _569 + _911 + _1247 + 64
                    if not mem[ceil32(ceil32(arg2.length)) + 97]:
                        revert with 'NH{q', 18
                    if sha3(mem[_565 + _569 + _911 + 64 len _1247]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                        revert with 'NH{q', 50
                    _1519 = mem[(32 * sha3(mem[_565 + _569 + _911 + 64 len _1247]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
                    mem[_565 + _569 + _911 + _1247 + 64] = 32
                    _1559 = mem[_1519]
                    mem[_565 + _569 + _911 + _1247 + 96] = mem[_1519]
                    mem[_565 + _569 + _911 + _1247 + 128 len ceil32(_1559)] = mem[_1519 + 32 len ceil32(_1559)]
                    if ceil32(_1559) > _1559:
                        mem[_565 + _569 + _911 + _1247 + _1559 + 128] = 0
                    return 32, mem[_565 + _569 + _911 + _1247 + 96 len ceil32(_1559) + 32]
                mem[_565 + _569 + _911 + _1247 + 64] = 0
                mem[_565 + _569 + _911 + 32] = _1247
                mem[64] = _565 + _569 + _911 + _1247 + 64
                if not mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 'NH{q', 18
                if sha3(mem[_565 + _569 + _911 + 64 len _1247]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 'NH{q', 50
                _1536 = mem[(32 * sha3(mem[_565 + _569 + _911 + 64 len _1247]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
                mem[_565 + _569 + _911 + _1247 + 64] = 32
                _1567 = mem[_1536]
                mem[_565 + _569 + _911 + _1247 + 96] = mem[_1536]
                mem[_565 + _569 + _911 + _1247 + 128 len ceil32(_1567)] = mem[_1536 + 32 len ceil32(_1567)]
                if ceil32(_1567) > _1567:
                    mem[_565 + _569 + _911 + _1247 + _1567 + 128] = 0
                return 32, mem[_565 + _569 + _911 + _1247 + 96 len ceil32(_1567) + 32]
            mem[mem[64] + mem[96] + _911 + 32] = 0
            _1220 = mem[64]
            mem[mem[64]] = mem[96] + _911
            mem[64] = mem[64] + _569 + _911 + 32
            _1251 = mem[_1220]
            mem[_565 + _569 + _911 + 64 len ceil32(mem[_1220])] = mem[_1220 + 32 len ceil32(mem[_1220])]
            if ceil32(_1251) <= _1251:
                mem[_565 + _569 + _911 + 32] = _1251
                mem[64] = _565 + _569 + _911 + _1251 + 64
                if not mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 'NH{q', 18
                if sha3(mem[_565 + _569 + _911 + 64 len _1251]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 'NH{q', 50
                _1521 = mem[(32 * sha3(mem[_565 + _569 + _911 + 64 len _1251]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
                mem[_565 + _569 + _911 + _1251 + 64] = 32
                _1560 = mem[_1521]
                mem[_565 + _569 + _911 + _1251 + 96] = mem[_1521]
                mem[_565 + _569 + _911 + _1251 + 128 len ceil32(_1560)] = mem[_1521 + 32 len ceil32(_1560)]
                if ceil32(_1560) > _1560:
                    mem[_565 + _569 + _911 + _1251 + _1560 + 128] = 0
                return 32, mem[_565 + _569 + _911 + _1251 + 96 len ceil32(_1560) + 32]
            mem[_565 + _569 + _911 + _1251 + 64] = 0
            mem[_565 + _569 + _911 + 32] = _1251
            mem[64] = _565 + _569 + _911 + _1251 + 64
            if not mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 18
            if sha3(mem[_565 + _569 + _911 + 64 len _1251]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 50
            _1538 = mem[(32 * sha3(mem[_565 + _569 + _911 + 64 len _1251]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
            mem[_565 + _569 + _911 + _1251 + 64] = 32
            _1568 = mem[_1538]
            mem[_565 + _569 + _911 + _1251 + 96] = mem[_1538]
            mem[_565 + _569 + _911 + _1251 + 128 len ceil32(_1568)] = mem[_1538 + 32 len ceil32(_1568)]
            if ceil32(_1568) > _1568:
                mem[_565 + _569 + _911 + _1251 + _1568 + 128] = 0
            return 32, mem[_565 + _569 + _911 + _1251 + 96 len ceil32(_1568) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _929 = mem[_230]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_230])] = mem[_230 + 32 len ceil32(mem[_230])]
        if ceil32(_929) <= _929:
            _1216 = mem[64]
            mem[mem[64]] = mem[96] + _929
            mem[64] = mem[64] + _569 + _929 + 32
            _1248 = mem[_1216]
            mem[_565 + _569 + _929 + 64 len ceil32(mem[_1216])] = mem[_1216 + 32 len ceil32(mem[_1216])]
            if ceil32(_1248) <= _1248:
                mem[_565 + _569 + _929 + 32] = _1248
                mem[64] = _565 + _569 + _929 + _1248 + 64
                if not mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 'NH{q', 18
                if sha3(mem[_565 + _569 + _929 + 64 len _1248]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 'NH{q', 50
                _1523 = mem[(32 * sha3(mem[_565 + _569 + _929 + 64 len _1248]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
                mem[_565 + _569 + _929 + _1248 + 64] = 32
                _1561 = mem[_1523]
                mem[_565 + _569 + _929 + _1248 + 96] = mem[_1523]
                mem[_565 + _569 + _929 + _1248 + 128 len ceil32(_1561)] = mem[_1523 + 32 len ceil32(_1561)]
                if ceil32(_1561) > _1561:
                    mem[_565 + _569 + _929 + _1248 + _1561 + 128] = 0
                return 32, mem[_565 + _569 + _929 + _1248 + 96 len ceil32(_1561) + 32]
            mem[_565 + _569 + _929 + _1248 + 64] = 0
            mem[_565 + _569 + _929 + 32] = _1248
            mem[64] = _565 + _569 + _929 + _1248 + 64
            if not mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 18
            if sha3(mem[_565 + _569 + _929 + 64 len _1248]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 50
            _1540 = mem[(32 * sha3(mem[_565 + _569 + _929 + 64 len _1248]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
            mem[_565 + _569 + _929 + _1248 + 64] = 32
            _1569 = mem[_1540]
            mem[_565 + _569 + _929 + _1248 + 96] = mem[_1540]
            mem[_565 + _569 + _929 + _1248 + 128 len ceil32(_1569)] = mem[_1540 + 32 len ceil32(_1569)]
            if ceil32(_1569) > _1569:
                mem[_565 + _569 + _929 + _1248 + _1569 + 128] = 0
            return 32, mem[_565 + _569 + _929 + _1248 + 96 len ceil32(_1569) + 32]
        mem[mem[64] + mem[96] + _929 + 32] = 0
        _1222 = mem[64]
        mem[mem[64]] = _565 + _569 + _929 - mem[64]
        mem[64] = _565 + _569 + _929 + 32
        _1252 = mem[_1222]
        mem[_565 + _569 + _929 + 64 len ceil32(mem[_1222])] = mem[_1222 + 32 len ceil32(mem[_1222])]
        if ceil32(_1252) <= _1252:
            mem[_565 + _569 + _929 + 32] = _1252
            mem[64] = _565 + _569 + _929 + _1252 + 64
            if not mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 18
            if sha3(mem[_565 + _569 + _929 + 64 len _1252]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 50
            _1525 = mem[(32 * sha3(mem[_565 + _569 + _929 + 64 len _1252]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
            mem[_565 + _569 + _929 + _1252 + 64] = 32
            _1562 = mem[_1525]
            mem[_565 + _569 + _929 + _1252 + 96] = mem[_1525]
            mem[_565 + _569 + _929 + _1252 + 128 len ceil32(_1562)] = mem[_1525 + 32 len ceil32(_1562)]
            if ceil32(_1562) > _1562:
                mem[_565 + _569 + _929 + _1252 + _1562 + 128] = 0
            return 32, mem[_565 + _569 + _929 + _1252 + 96 len ceil32(_1562) + 32]
        mem[_565 + _569 + _929 + _1252 + 64] = 0
        mem[_565 + _569 + _929 + 32] = _1252
        mem[64] = _565 + _569 + _929 + _1252 + 64
        if not mem[ceil32(ceil32(arg2.length)) + 97]:
            revert with 'NH{q', 18
        if sha3(mem[_565 + _569 + _929 + 64 len _1252]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
            revert with 'NH{q', 50
        _1542 = mem[(32 * sha3(mem[_565 + _569 + _929 + 64 len _1252]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
        mem[_565 + _569 + _929 + _1252 + 64] = 32
        _1570 = mem[_1542]
        mem[_565 + _569 + _929 + _1252 + 96] = mem[_1542]
        mem[_565 + _569 + _929 + _1252 + 128 len ceil32(_1570)] = mem[_1542 + 32 len ceil32(_1570)]
        if ceil32(_1570) > _1570:
            mem[_565 + _569 + _929 + _1252 + _1570 + 128] = 0
        return 32, mem[_565 + _569 + _929 + _1252 + 96 len ceil32(_1570) + 32]
    mem[_230 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_230]:
            revert with 'NH{q', 50
        mem[t + _230 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _566 = mem[64]
    _570 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _912 = mem[_230]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_230])] = mem[_230 + 32 len ceil32(mem[_230])]
        if ceil32(_912) <= _912:
            _1217 = mem[64]
            mem[mem[64]] = mem[96] + _912
            mem[64] = mem[64] + _570 + _912 + 32
            _1249 = mem[_1217]
            mem[_566 + _570 + _912 + 64 len ceil32(mem[_1217])] = mem[_1217 + 32 len ceil32(mem[_1217])]
            if ceil32(_1249) <= _1249:
                mem[_566 + _570 + _912 + 32] = _1249
                mem[64] = _566 + _570 + _912 + _1249 + 64
                if not mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 'NH{q', 18
                if sha3(mem[_566 + _570 + _912 + 64 len _1249]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 'NH{q', 50
                _1527 = mem[(32 * sha3(mem[_566 + _570 + _912 + 64 len _1249]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
                mem[_566 + _570 + _912 + _1249 + 64] = 32
                _1563 = mem[_1527]
                mem[_566 + _570 + _912 + _1249 + 96] = mem[_1527]
                mem[_566 + _570 + _912 + _1249 + 128 len ceil32(_1563)] = mem[_1527 + 32 len ceil32(_1563)]
                if ceil32(_1563) > _1563:
                    mem[_566 + _570 + _912 + _1249 + _1563 + 128] = 0
                return 32, mem[_566 + _570 + _912 + _1249 + 96 len ceil32(_1563) + 32]
            mem[_566 + _570 + _912 + _1249 + 64] = 0
            mem[_566 + _570 + _912 + 32] = _1249
            mem[64] = _566 + _570 + _912 + _1249 + 64
            if not mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 18
            if sha3(mem[_566 + _570 + _912 + 64 len _1249]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 50
            _1544 = mem[(32 * sha3(mem[_566 + _570 + _912 + 64 len _1249]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
            mem[_566 + _570 + _912 + _1249 + 64] = 32
            _1571 = mem[_1544]
            mem[_566 + _570 + _912 + _1249 + 96] = mem[_1544]
            mem[_566 + _570 + _912 + _1249 + 128 len ceil32(_1571)] = mem[_1544 + 32 len ceil32(_1571)]
            if ceil32(_1571) > _1571:
                mem[_566 + _570 + _912 + _1249 + _1571 + 128] = 0
            return 32, mem[_566 + _570 + _912 + _1249 + 96 len ceil32(_1571) + 32]
        mem[mem[64] + mem[96] + _912 + 32] = 0
        _1224 = mem[64]
        mem[mem[64]] = _566 + _570 + _912 - mem[64]
        mem[64] = _566 + _570 + _912 + 32
        _1253 = mem[_1224]
        mem[_566 + _570 + _912 + 64 len ceil32(mem[_1224])] = mem[_1224 + 32 len ceil32(mem[_1224])]
        if ceil32(_1253) <= _1253:
            mem[_566 + _570 + _912 + 32] = _1253
            mem[64] = _566 + _570 + _912 + _1253 + 64
            if not mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 18
            if sha3(mem[_566 + _570 + _912 + 64 len _1253]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 50
            _1529 = mem[(32 * sha3(mem[_566 + _570 + _912 + 64 len _1253]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
            mem[_566 + _570 + _912 + _1253 + 64] = 32
            _1564 = mem[_1529]
            mem[_566 + _570 + _912 + _1253 + 96] = mem[_1529]
            mem[_566 + _570 + _912 + _1253 + 128 len ceil32(_1564)] = mem[_1529 + 32 len ceil32(_1564)]
            if ceil32(_1564) > _1564:
                mem[_566 + _570 + _912 + _1253 + _1564 + 128] = 0
            return 32, mem[_566 + _570 + _912 + _1253 + 96 len ceil32(_1564) + 32]
        mem[_566 + _570 + _912 + _1253 + 64] = 0
        mem[_566 + _570 + _912 + 32] = _1253
        mem[64] = _566 + _570 + _912 + _1253 + 64
        if not mem[ceil32(ceil32(arg2.length)) + 97]:
            revert with 'NH{q', 18
        if sha3(mem[_566 + _570 + _912 + 64 len _1253]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
            revert with 'NH{q', 50
        _1546 = mem[(32 * sha3(mem[_566 + _570 + _912 + 64 len _1253]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
        mem[_566 + _570 + _912 + _1253 + 64] = 32
        _1572 = mem[_1546]
        mem[_566 + _570 + _912 + _1253 + 96] = mem[_1546]
        mem[_566 + _570 + _912 + _1253 + 128 len ceil32(_1572)] = mem[_1546 + 32 len ceil32(_1572)]
        if ceil32(_1572) > _1572:
            mem[_566 + _570 + _912 + _1253 + _1572 + 128] = 0
        return 32, mem[_566 + _570 + _912 + _1253 + 96 len ceil32(_1572) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _930 = mem[_230]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[_230])] = mem[_230 + 32 len ceil32(mem[_230])]
    if ceil32(_930) <= _930:
        _1218 = mem[64]
        mem[mem[64]] = mem[96] + _930
        mem[64] = mem[64] + _570 + _930 + 32
        _1250 = mem[_1218]
        mem[_566 + _570 + _930 + 64 len ceil32(mem[_1218])] = mem[_1218 + 32 len ceil32(mem[_1218])]
        if ceil32(_1250) <= _1250:
            mem[_566 + _570 + _930 + 32] = _1250
            mem[64] = _566 + _570 + _930 + _1250 + 64
            if not mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 18
            if sha3(mem[_566 + _570 + _930 + 64 len _1250]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 50
            _1531 = mem[(32 * sha3(mem[_566 + _570 + _930 + 64 len _1250]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
            mem[_566 + _570 + _930 + _1250 + 64] = 32
            _1565 = mem[_1531]
            mem[_566 + _570 + _930 + _1250 + 96] = mem[_1531]
            mem[_566 + _570 + _930 + _1250 + 128 len ceil32(_1565)] = mem[_1531 + 32 len ceil32(_1565)]
            if ceil32(_1565) > _1565:
                mem[_566 + _570 + _930 + _1250 + _1565 + 128] = 0
            return 32, mem[_566 + _570 + _930 + _1250 + 96 len ceil32(_1565) + 32]
        mem[_566 + _570 + _930 + _1250 + 64] = 0
        mem[_566 + _570 + _930 + 32] = _1250
        mem[64] = _566 + _570 + _930 + _1250 + 64
        if not mem[ceil32(ceil32(arg2.length)) + 97]:
            revert with 'NH{q', 18
        if sha3(mem[_566 + _570 + _930 + 64 len _1250]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
            revert with 'NH{q', 50
        _1548 = mem[(32 * sha3(mem[_566 + _570 + _930 + 64 len _1250]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
        mem[_566 + _570 + _930 + _1250 + 64] = 32
        _1573 = mem[_1548]
        mem[_566 + _570 + _930 + _1250 + 96] = mem[_1548]
        mem[_566 + _570 + _930 + _1250 + 128 len ceil32(_1573)] = mem[_1548 + 32 len ceil32(_1573)]
        if ceil32(_1573) > _1573:
            mem[_566 + _570 + _930 + _1250 + _1573 + 128] = 0
        return 32, mem[_566 + _570 + _930 + _1250 + 96 len ceil32(_1573) + 32]
    mem[mem[64] + mem[96] + _930 + 32] = 0
    _1226 = mem[64]
    mem[mem[64]] = mem[96] + _930
    mem[64] = mem[64] + _570 + _930 + 32
    _1254 = mem[_1226]
    mem[_566 + _570 + _930 + 64 len ceil32(mem[_1226])] = mem[_1226 + 32 len ceil32(mem[_1226])]
    if ceil32(_1254) <= _1254:
        mem[_566 + _570 + _930 + 32] = _1254
        mem[64] = _566 + _570 + _930 + _1254 + 64
        if not mem[ceil32(ceil32(arg2.length)) + 97]:
            revert with 'NH{q', 18
        if sha3(mem[_566 + _570 + _930 + 64 len _1254]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
            revert with 'NH{q', 50
        _1533 = mem[(32 * sha3(mem[_566 + _570 + _930 + 64 len _1254]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
        mem[_566 + _570 + _930 + _1254 + 64] = 32
        _1566 = mem[_1533]
        mem[_566 + _570 + _930 + _1254 + 96] = mem[_1533]
        mem[_566 + _570 + _930 + _1254 + 128 len ceil32(_1566)] = mem[_1533 + 32 len ceil32(_1566)]
        if ceil32(_1566) > _1566:
            mem[_566 + _570 + _930 + _1254 + _1566 + 128] = 0
        return 32, mem[_566 + _570 + _930 + _1254 + 96 len ceil32(_1566) + 32]
    mem[_566 + _570 + _930 + _1254 + 64] = 0
    mem[_566 + _570 + _930 + 32] = _1254
    mem[64] = _566 + _570 + _930 + _1254 + 64
    if not mem[ceil32(ceil32(arg2.length)) + 97]:
        revert with 'NH{q', 18
    if sha3(mem[_566 + _570 + _930 + 64 len _1254]) % mem[ceil32(ceil32(arg2.length)) + 97] >= mem[ceil32(ceil32(arg2.length)) + 97]:
        revert with 'NH{q', 50
    _1550 = mem[(32 * sha3(mem[_566 + _570 + _930 + 64 len _1254]) % mem[ceil32(ceil32(arg2.length)) + 97]) + ceil32(ceil32(arg2.length)) + 129]
    mem[_566 + _570 + _930 + _1254 + 64] = 32
    _1574 = mem[_1550]
    mem[_566 + _570 + _930 + _1254 + 96] = mem[_1550]
    mem[_566 + _570 + _930 + _1254 + 128 len ceil32(_1574)] = mem[_1550 + 32 len ceil32(_1574)]
    if ceil32(_1574) > _1574:
        mem[_566 + _570 + _930 + _1254 + _1574 + 128] = 0
    return 32, mem[_566 + _570 + _930 + _1254 + 96 len ceil32(_1574) + 32]
}



}
