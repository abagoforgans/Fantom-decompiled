contract main {




// =====================  Runtime code  =====================


const MINT_PRICE = 10^18

const MINT_PER_TX = 10

const MAX_MINT = 999


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
uint8 stor7; offset 160
uint128 stor7; offset 160
address owner;
uint256 sub_7d6aab0a;
array of uint256 stor9;
mapping of uint8 stor10;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sale() {
    return bool(uint8(stor7.field_160))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_7d6aab0a(?) {
    return sub_7d6aab0a
}

function redeemable(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
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

function remaining() {
    if 999 < sub_7d6aab0a:
        revert with 'NH{q', 17
    return (-sub_7d6aab0a + 999)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function switchSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor7.field_160) = Mask(96, 0, not bool(uint8(stor7.field_160)))
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require bool(stor10[arg1]) == 1
    stor10[arg1] = 0
    emit Redeemed(msg.sender, arg1);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
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
    if ext_code.size(arg2) <= 0:
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if bool(stor6[arg1].field_0):
        if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor6[arg1].field_0):
            if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor6[arg1].field_1):
                if 31 < uint255(stor6[arg1].field_1):
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor6[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor6[arg1].field_1)), data=mem[128 len ceil32(uint255(stor6[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
        else:
            if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor6[arg1].field_1 % 128:
                if 31 < stor6[arg1].field_1 % 128:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor6[arg1].field_1)), data=mem[128 len ceil32(uint255(stor6[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
        mem[ceil32(uint255(stor6[arg1].field_1)) + 224 len ceil32(uint255(stor6[arg1].field_1))] = mem[128 len ceil32(uint255(stor6[arg1].field_1))]
        if ceil32(uint255(stor6[arg1].field_1)) > uint255(stor6[arg1].field_1):
            mem[ceil32(uint255(stor6[arg1].field_1)) + uint255(stor6[arg1].field_1) + 224] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor6[arg1].field_1)), data=mem[128 len ceil32(uint255(stor6[arg1].field_1))], mem[(2 * ceil32(uint255(stor6[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor6[arg1].field_1))]), 
    if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor6[arg1].field_0):
        if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor6[arg1].field_1):
            if 31 < uint255(stor6[arg1].field_1):
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor6[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
    else:
        if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_1 % 128:
            if 31 < stor6[arg1].field_1 % 128:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
    mem[ceil32(stor6[arg1].field_1 % 128) + 224 len ceil32(stor6[arg1].field_1 % 128)] = mem[128 len ceil32(stor6[arg1].field_1 % 128)]
    if ceil32(stor6[arg1].field_1 % 128) > stor6[arg1].field_1 % 128:
        mem[ceil32(stor6[arg1].field_1 % 128) + stor6[arg1].field_1 % 128 + 224] = 0
    return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)], mem[(2 * ceil32(stor6[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor6[arg1].field_1 % 128)]), 
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor7.field_160):
        revert with 0, 'Sale is not active at the moment'
    if arg1 > 10:
        revert with 0, 'Don't be greedy'
    if 10^18 * arg1 != msg.value:
        revert with 0, 'nice try guy'
    require sub_7d6aab0a < 999
    idx = 0
    while idx < arg1:
        sub_7d6aab0a++
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        ownerOf[stor8] = msg.sender
        emit Transfer(0, msg.sender, sub_7d6aab0a);
        mem[32] = 10
        stor10[stor8] = 1
        if 1 >= stor9.length:
            revert with 'NH{q', 50
        mem[0] = 9
        if bool(stor9.field_256):
            if bool(stor9.field_256) == uint255(stor9.field_257) < 32:
                revert with 'NH{q', 34
            _359 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor9.field_257)) + 32
            mem[_359] = uint255(stor9.field_257)
            if bool(stor9.field_256):
                if bool(stor9.field_256) == uint255(stor9.field_257) < 32:
                    revert with 'NH{q', 34
                if uint255(stor9.field_257):
                    if 31 >= uint255(stor9.field_257):
                        mem[_359 + 32] = 256 * Mask(248, 0, stor9.field_264)
                    else:
                        mem[_359 + 32] = stor9[1].field_0
                        s = _359 + 32
                        t = sha3(sha3(9) + 1)
                        while _359 + uint255(stor9.field_257) > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
            else:
                if bool(stor9.field_256) == stor9.field_257 % 128 < 32:
                    revert with 'NH{q', 34
                if stor9.field_257 % 128:
                    if 31 >= stor9.field_257 % 128:
                        mem[_359 + 32] = 256 * Mask(248, 0, stor9.field_264)
                    else:
                        mem[_359 + 32] = stor9[1].field_0
                        s = _359 + 32
                        t = sha3(sha3(9) + 1)
                        while _359 + stor9.field_257 % 128 > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
            if not ownerOf[stor8]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[32] = 6
            if bool(stor6[stor8].field_0):
                if bool(stor6[stor8].field_0) == uint255(stor6[stor8].field_1) < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(sub_7d6aab0a, 6)
                if not uint255(stor9.field_257):
                    stor6[stor8].field_0 = 0
                    s = sha3(sha3(sub_7d6aab0a, 6))
                    while sha3(sha3(sub_7d6aab0a, 6)) + (uint255(stor6[stor8].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor6[stor8].field_0 = (2 * uint255(stor9.field_257)) + 1
                    t = sha3(sha3(sub_7d6aab0a, 6))
                    s = _359 + 32
                    while _359 + uint255(stor9.field_257) + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(sub_7d6aab0a, 6)) + (Mask(251, 0, uint255(stor9.field_257) + 31) >> 5)
                    while sha3(sha3(sub_7d6aab0a, 6)) + (uint255(stor6[stor8].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor6[stor8].field_0) == stor6[stor8].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(sub_7d6aab0a, 6)
                if not uint255(stor9.field_257):
                    stor6[stor8].field_0 = 0
                    s = sha3(sha3(sub_7d6aab0a, 6))
                    while sha3(sha3(sub_7d6aab0a, 6)) + (stor6[stor8].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor6[stor8].field_0 = (2 * uint255(stor9.field_257)) + 1
                    t = sha3(sha3(sub_7d6aab0a, 6))
                    s = _359 + 32
                    while _359 + uint255(stor9.field_257) + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(sub_7d6aab0a, 6)) + (Mask(251, 0, uint255(stor9.field_257) + 31) >> 5)
                    while sha3(sha3(sub_7d6aab0a, 6)) + (stor6[stor8].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        else:
            if bool(stor9.field_256) == stor9.field_257 % 128 < 32:
                revert with 'NH{q', 34
            _360 = mem[64]
            mem[64] = mem[64] + ceil32(stor9.field_257 % 128) + 32
            mem[_360] = stor9.field_257 % 128
            if bool(stor9.field_256):
                if bool(stor9.field_256) == uint255(stor9.field_257) < 32:
                    revert with 'NH{q', 34
                if uint255(stor9.field_257):
                    if 31 >= uint255(stor9.field_257):
                        mem[_360 + 32] = 256 * Mask(248, 0, stor9.field_264)
                    else:
                        mem[_360 + 32] = stor9[1].field_0
                        s = _360 + 32
                        t = sha3(sha3(9) + 1)
                        while _360 + uint255(stor9.field_257) > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
            else:
                if bool(stor9.field_256) == stor9.field_257 % 128 < 32:
                    revert with 'NH{q', 34
                if stor9.field_257 % 128:
                    if 31 >= stor9.field_257 % 128:
                        mem[_360 + 32] = 256 * Mask(248, 0, stor9.field_264)
                    else:
                        mem[_360 + 32] = stor9[1].field_0
                        s = _360 + 32
                        t = sha3(sha3(9) + 1)
                        while _360 + stor9.field_257 % 128 > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
            if not ownerOf[stor8]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[32] = 6
            if bool(stor6[stor8].field_0):
                if bool(stor6[stor8].field_0) == uint255(stor6[stor8].field_1) < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(sub_7d6aab0a, 6)
                if not stor9.field_257 % 128:
                    stor6[stor8].field_0 = 0
                    s = sha3(sha3(sub_7d6aab0a, 6))
                    while sha3(sha3(sub_7d6aab0a, 6)) + (uint255(stor6[stor8].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor6[stor8].field_0 = (2 * stor9.field_257 % 128) + 1
                    t = sha3(sha3(sub_7d6aab0a, 6))
                    s = _360 + 32
                    while _360 + stor9.field_257 % 128 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(sub_7d6aab0a, 6)) + (Mask(251, 0, stor9.field_257 % 128 + 31) >> 5)
                    while sha3(sha3(sub_7d6aab0a, 6)) + (uint255(stor6[stor8].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor6[stor8].field_0) == stor6[stor8].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(sub_7d6aab0a, 6)
                if not stor9.field_257 % 128:
                    stor6[stor8].field_0 = 0
                    s = sha3(sha3(sub_7d6aab0a, 6))
                    while sha3(sha3(sub_7d6aab0a, 6)) + (stor6[stor8].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor6[stor8].field_0 = (2 * stor9.field_257 % 128) + 1
                    t = sha3(sha3(sub_7d6aab0a, 6))
                    s = _360 + 32
                    while _360 + stor9.field_257 % 128 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(sub_7d6aab0a, 6)) + (Mask(251, 0, stor9.field_257 % 128 + 31) >> 5)
                    while sha3(sha3(sub_7d6aab0a, 6)) + (stor6[stor8].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        emit Mint(msg.sender, sub_7d6aab0a);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
