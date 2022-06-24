contract main {




// =====================  Runtime code  =====================


#
#  - ownerClaim()
#  - claim()
#  - tokenURI(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
mapping of struct stor7;
array of struct stor166;
uint256 next_monster;
mapping of struct stor182;
mapping of struct stor183;
mapping of uint256 sub_a6e0502c;
mapping of uint256 sub_c454ca2d;
mapping of uint256 sub_a1d06bdd;
mapping of uint256 sub_ff96b17a;
mapping of uint256 sub_48ac6aad;
mapping of uint256 sub_247194b0;
mapping of uint256 sub_d5573112;
mapping of uint256 hit;
mapping of uint256 sub_4552e7c1;
mapping of uint256 sub_e43919ab;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_247194b0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_247194b0[arg1]
}

function next_monster() {
    return next_monster
}

function sub_4552e7c1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_4552e7c1[arg1]
}

function sub_48ac6aad(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_48ac6aad[arg1]
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

function sub_a1d06bdd(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_a1d06bdd[arg1]
}

function sub_a6e0502c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_a6e0502c[arg1]
}

function sub_c454ca2d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_c454ca2d[arg1]
}

function sub_d5573112(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_d5573112[arg1]
}

function sub_e43919ab(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_e43919ab[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function hit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return hit[arg1]
}

function sub_ff96b17a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_ff96b17a[arg1]
}

function _fallback() payable {
    revert
}

function divide(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if var52002 >= 8:
        return Array(len=30, data=call.data[calldata.size len 960])
    # nil
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
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

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
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

function sub_6fd7468c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor7[arg1].field_0):
        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor7[arg1].field_0):
            if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor7[arg1].field_1):
                if 31 < uint255(stor7[arg1].field_1):
                    mem[128] = stor7[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor7[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor7[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor7[arg1].field_1)), data=mem[128 len ceil32(uint255(stor7[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor7[arg1].field_8)
        else:
            if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor7[arg1].field_1 % 128:
                if 31 < stor7[arg1].field_1 % 128:
                    mem[128] = stor7[arg1].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor7[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor7[arg1].field_1)), data=mem[128 len ceil32(uint255(stor7[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor7[arg1].field_8)
        mem[ceil32(uint255(stor7[arg1].field_1)) + 192 len ceil32(uint255(stor7[arg1].field_1))] = mem[128 len ceil32(uint255(stor7[arg1].field_1))]
        if ceil32(uint255(stor7[arg1].field_1)) > uint255(stor7[arg1].field_1):
            mem[ceil32(uint255(stor7[arg1].field_1)) + uint255(stor7[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor7[arg1].field_1)), data=mem[128 len ceil32(uint255(stor7[arg1].field_1))], mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor7[arg1].field_1))]), 
    if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor7[arg1].field_0):
        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor7[arg1].field_1):
            if 31 < uint255(stor7[arg1].field_1):
                mem[128] = stor7[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor7[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor7[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0 % 128, data=mem[128 len ceil32(stor7[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7[arg1].field_8)
    else:
        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor7[arg1].field_1 % 128:
            if 31 < stor7[arg1].field_1 % 128:
                mem[128] = stor7[arg1].field_0
                idx = 128
                s = 0
                while stor7[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor7[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0 % 128, data=mem[128 len ceil32(stor7[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7[arg1].field_8)
    mem[ceil32(stor7[arg1].field_1 % 128) + 192 len ceil32(stor7[arg1].field_1 % 128)] = mem[128 len ceil32(stor7[arg1].field_1 % 128)]
    if ceil32(stor7[arg1].field_1 % 128) > stor7[arg1].field_1 % 128:
        mem[ceil32(stor7[arg1].field_1 % 128) + stor7[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor7[arg1].field_0 % 128, data=mem[128 len ceil32(stor7[arg1].field_1 % 128)], mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor7[arg1].field_1 % 128)]), 
}

function sub_3c8c014d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor183[arg1].field_0):
        if bool(stor183[arg1].field_0) == uint255(stor183[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor183[arg1].field_0):
            if bool(stor183[arg1].field_0) == uint255(stor183[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor183[arg1].field_1):
                if 31 < uint255(stor183[arg1].field_1):
                    mem[128] = stor183[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor183[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor183[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor183[arg1].field_1)), data=mem[128 len ceil32(uint255(stor183[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor183[arg1].field_8)
        else:
            if bool(stor183[arg1].field_0) == stor183[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor183[arg1].field_1 % 128:
                if 31 < stor183[arg1].field_1 % 128:
                    mem[128] = stor183[arg1].field_0
                    idx = 128
                    s = 0
                    while stor183[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor183[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor183[arg1].field_1)), data=mem[128 len ceil32(uint255(stor183[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor183[arg1].field_8)
        mem[ceil32(uint255(stor183[arg1].field_1)) + 192 len ceil32(uint255(stor183[arg1].field_1))] = mem[128 len ceil32(uint255(stor183[arg1].field_1))]
        if ceil32(uint255(stor183[arg1].field_1)) > uint255(stor183[arg1].field_1):
            mem[ceil32(uint255(stor183[arg1].field_1)) + uint255(stor183[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor183[arg1].field_1)), data=mem[128 len ceil32(uint255(stor183[arg1].field_1))], mem[(2 * ceil32(uint255(stor183[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor183[arg1].field_1))]), 
    if bool(stor183[arg1].field_0) == stor183[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor183[arg1].field_0):
        if bool(stor183[arg1].field_0) == uint255(stor183[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor183[arg1].field_1):
            if 31 < uint255(stor183[arg1].field_1):
                mem[128] = stor183[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor183[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor183[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor183[arg1].field_0 % 128, data=mem[128 len ceil32(stor183[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor183[arg1].field_8)
    else:
        if bool(stor183[arg1].field_0) == stor183[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor183[arg1].field_1 % 128:
            if 31 < stor183[arg1].field_1 % 128:
                mem[128] = stor183[arg1].field_0
                idx = 128
                s = 0
                while stor183[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor183[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor183[arg1].field_0 % 128, data=mem[128 len ceil32(stor183[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor183[arg1].field_8)
    mem[ceil32(stor183[arg1].field_1 % 128) + 192 len ceil32(stor183[arg1].field_1 % 128)] = mem[128 len ceil32(stor183[arg1].field_1 % 128)]
    if ceil32(stor183[arg1].field_1 % 128) > stor183[arg1].field_1 % 128:
        mem[ceil32(stor183[arg1].field_1 % 128) + stor183[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor183[arg1].field_0 % 128, data=mem[128 len ceil32(stor183[arg1].field_1 % 128)], mem[(2 * ceil32(stor183[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor183[arg1].field_1 % 128)]), 
}

function sub_e4579b71(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor182[arg1].field_0):
        if bool(stor182[arg1].field_0) == uint255(stor182[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor182[arg1].field_0):
            if bool(stor182[arg1].field_0) == uint255(stor182[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor182[arg1].field_1):
                if 31 < uint255(stor182[arg1].field_1):
                    mem[128] = stor182[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor182[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor182[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor182[arg1].field_1)), data=mem[128 len ceil32(uint255(stor182[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor182[arg1].field_8)
        else:
            if bool(stor182[arg1].field_0) == stor182[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor182[arg1].field_1 % 128:
                if 31 < stor182[arg1].field_1 % 128:
                    mem[128] = stor182[arg1].field_0
                    idx = 128
                    s = 0
                    while stor182[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor182[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor182[arg1].field_1)), data=mem[128 len ceil32(uint255(stor182[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor182[arg1].field_8)
        mem[ceil32(uint255(stor182[arg1].field_1)) + 192 len ceil32(uint255(stor182[arg1].field_1))] = mem[128 len ceil32(uint255(stor182[arg1].field_1))]
        if ceil32(uint255(stor182[arg1].field_1)) > uint255(stor182[arg1].field_1):
            mem[ceil32(uint255(stor182[arg1].field_1)) + uint255(stor182[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor182[arg1].field_1)), data=mem[128 len ceil32(uint255(stor182[arg1].field_1))], mem[(2 * ceil32(uint255(stor182[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor182[arg1].field_1))]), 
    if bool(stor182[arg1].field_0) == stor182[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor182[arg1].field_0):
        if bool(stor182[arg1].field_0) == uint255(stor182[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor182[arg1].field_1):
            if 31 < uint255(stor182[arg1].field_1):
                mem[128] = stor182[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor182[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor182[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor182[arg1].field_0 % 128, data=mem[128 len ceil32(stor182[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor182[arg1].field_8)
    else:
        if bool(stor182[arg1].field_0) == stor182[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor182[arg1].field_1 % 128:
            if 31 < stor182[arg1].field_1 % 128:
                mem[128] = stor182[arg1].field_0
                idx = 128
                s = 0
                while stor182[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor182[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor182[arg1].field_0 % 128, data=mem[128 len ceil32(stor182[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor182[arg1].field_8)
    mem[ceil32(stor182[arg1].field_1 % 128) + 192 len ceil32(stor182[arg1].field_1 % 128)] = mem[128 len ceil32(stor182[arg1].field_1 % 128)]
    if ceil32(stor182[arg1].field_1 % 128) > stor182[arg1].field_1 % 128:
        mem[ceil32(stor182[arg1].field_1 % 128) + stor182[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor182[arg1].field_0 % 128, data=mem[128 len ceil32(stor182[arg1].field_1 % 128)], mem[(2 * ceil32(stor182[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor182[arg1].field_1 % 128)]), 
}

function getPrefix(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sha3(block.timestamp, arg1) % 15 >= 15:
        revert with 'NH{q', 50
    if bool(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_0):
        if bool(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_0) == uint255(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_0):
            if bool(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_0) == uint255(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1):
                if 31 >= uint255(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1):
                    mem[224] = 256 * Mask(248, 0, stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_8)
                else:
                    mem[224] = stor[sha3((('map', 'timestamp', ('param', 'arg1')) % 15) + 166)]
                    idx = 224
                    s = 0
                    while uint255(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1) + 192 > idx:
                        mem[idx + 32] = stor[s + sha3((('map', 'timestamp', ('param', 'arg1')) % 15) + 166) + 1]
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_0) == stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1 % 128:
                if 31 >= stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1 % 128:
                    mem[224] = 256 * Mask(248, 0, stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_8)
                else:
                    mem[224] = stor[sha3((('map', 'timestamp', ('param', 'arg1')) % 15) + 166)]
                    idx = 224
                    s = 0
                    while stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1 % 128 + 192 > idx:
                        mem[idx + 32] = stor[s + sha3((('map', 'timestamp', ('param', 'arg1')) % 15) + 166) + 1]
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint255(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1)), data=mem[224 len ceil32(uint255(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1))]), 
    if bool(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_0) == stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_0):
        if bool(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_0) == uint255(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1):
            if 31 >= uint255(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1):
                mem[224] = 256 * Mask(248, 0, stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_8)
            else:
                mem[224] = stor[sha3((('map', 'timestamp', ('param', 'arg1')) % 15) + 166)]
                idx = 224
                s = 0
                while uint255(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1) + 192 > idx:
                    mem[idx + 32] = stor[s + sha3((('map', 'timestamp', ('param', 'arg1')) % 15) + 166) + 1]
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_0) == stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1 % 128:
            if 31 >= stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1 % 128:
                mem[224] = 256 * Mask(248, 0, stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_8)
            else:
                mem[224] = stor[sha3((('map', 'timestamp', ('param', 'arg1')) % 15) + 166)]
                idx = 224
                s = 0
                while stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1 % 128 + 192 > idx:
                    mem[idx + 32] = stor[s + sha3((('map', 'timestamp', ('param', 'arg1')) % 15) + 166) + 1]
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_0 % 128, data=mem[224 len ceil32(stor166[('map', 'timestamp', ('param', 'arg1')) % 15].field_1 % 128)]), 
}



}
