contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const sub_049157bb(?) = 0

const sub_5c17e370(?) = 0

const sub_d95ae162(?) = 0

const sub_e68b7961(?) = 0


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
address stor7;
uint256 stor8;
mapping of uint8 stor9;
address developerAddress;
address owner;
uint256 sub_7943b75e;
uint256 sub_15f731fe;
mapping of uint8 stor14;
uint256 sub_78c5939b;
array of struct stor16;
uint8 sub_2ecd28ab; offset 160
address sub_b6a77f95Address;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_15f731fe(?) payable {
    return sub_15f731fe
}

function totalSupply() payable {
    return sub_7943b75e
}

function sub_2ecd28ab(?) payable {
    return bool(sub_2ecd28ab)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function sub_745fdbb8(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function sub_78c5939b(?) payable {
    return sub_78c5939b
}

function sub_7943b75e(?) payable {
    return sub_7943b75e
}

function owner() payable {
    return owner
}

function sub_b6a77f95(?) payable {
    return sub_b6a77f95Address
}

function developer() payable {
    return developerAddress
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function enableMinting() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2ecd28ab = 1
    emit 0x1ab1d89b: bool(sub_2ecd28ab), 1
}

function disableMinting() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2ecd28ab = 0
    emit 0x1ab1d89b: bool(sub_2ecd28ab), 0
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 and stor8 > -1 / arg2:
        revert with 0, 17
    return stor7, arg2 * stor8 / 100
}

function renounceDeveloper() payable {
    if developerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: caller is not the developer'
    developerAddress = 0
    emit 0x2cfca82a: developerAddress, 0
}

function setRoyaltyInfo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
    stor8 = arg2
    emit 0x37b26188: address(arg1), arg2
}

function sub_4a886ad2(?) payable {
    require calldata.size - 4 >= 32
    if developerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: caller is not the developer'
    sub_78c5939b = arg1
    emit 0x8d9cfb0d: sub_78c5939b, arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setOriginalContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if developerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: caller is not the developer'
    sub_b6a77f95Address = arg1
    emit 0x3236dd65: sub_b6a77f95Address, arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function transferDeveloper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if developerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: caller is not the developer'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: new developer is the zero address'
    developerAddress = arg1
    emit 0x2cfca82a: developerAddress, arg1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return bool(stor9[Mask(32, 224, arg1)])
}

function approve(address arg1, uint256 arg2) payable {
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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

function name() payable {
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
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
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
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
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
        mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() payable {
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
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
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
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 0, 34
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
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function sub_389c88a1(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not sub_2ecd28ab:
        revert with 0, 'Minter not active'
    if sub_7943b75e > !('cd', 4).length:
        revert with 0, 17
    if sub_7943b75e + ('cd', 4).length >= sub_78c5939b:
        revert with 0, 'Can not mint that many'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _342 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_b6a77f95Address)
        staticcall sub_b6a77f95Address.0x6352211e with:
                gas gas_remaining wei
               args _342
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _345 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _346 = mem[_345]
        require mem[_345] == mem[_345 + 12 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 14
        if stor14[mem[(32 * idx) + 128]]:
            sub_15f731fe++
        else:
            if address(_346) != msg.sender:
                sub_15f731fe++
            else:
                if idx >= mem[96]:
                    revert with 0, 50
                _351 = mem[(32 * idx) + 128]
                _352 = mem[64]
                mem[mem[64] + 32] = block.timestamp
                mem[mem[64] + 64] = address(msg.sender)
                mem[mem[64] + 84] = _351
                mem[mem[64] + 116] = block.difficulty
                _353 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _355 = sha3(mem[_353 + 32 len mem[_353]])
                mem[_352 + 148] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor12]:
                    revert with 0, 'ERC721: token already minted'
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_7943b75e
                mem[32] = 2
                ownerOf[stor12] = msg.sender
                emit Transfer(0, msg.sender, sub_7943b75e);
                if not ext_code.size(msg.sender):
                    if not _355 % 5:
                        mem[64] = _352 + 244
                        mem[_352 + 180] = 1
                        mem[_352 + 212] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if bool(stor6[stor12].field_0):
                            if bool(stor6[stor12].field_0) == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            bool(stor6[stor12].field_0) = 0
                            uint255(stor6[stor12].field_1) = 1
                            uint8(stor6[stor12].field_248) = 48
                            s = sha3(sha3(sub_7943b75e, 6))
                            while sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor6[stor12].field_0) == stor6[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            bool(stor6[stor12].field_0) = 0
                            uint255(stor6[stor12].field_1) = 1
                            uint8(stor6[stor12].field_248) = 48
                            s = sha3(sha3(sub_7943b75e, 6))
                            while sha3(sha3(sub_7943b75e, 6)) + (stor6[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        t = 0
                        s = _355 % 5
                        while s:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            s = s / 10
                            continue 
                        if t > test266151307():
                            revert with 0, 65
                        mem[_352 + 180] = t
                        mem[64] = _352 + ceil32(t) + 212
                        if not t:
                            u = t
                            s = _355 % 5
                            while s:
                                if 48 > !(s % 10):
                                    revert with 0, 17
                                if not u:
                                    revert with 0, 17
                                if u - 1 >= mem[_352 + 180]:
                                    revert with 0, 50
                                mem[u + _352 + 211 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                u = u - 1
                                s = s / 10
                                continue 
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 6
                            _727 = mem[_352 + 180]
                            if bool(stor6[stor12].field_0):
                                if bool(stor6[stor12].field_0) == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sub_7943b75e, 6)
                                if not _727:
                                    stor6[stor12].field_0 = 0
                                    s = sha3(sha3(sub_7943b75e, 6))
                                    while sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor6[stor12].field_0 = (2 * _727) + 1
                                    t = sha3(sha3(sub_7943b75e, 6))
                                    s = _352 + 212
                                    while _352 + _727 + 212 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(sub_7943b75e, 6)) + (Mask(251, 0, _727 + 31) >> 5)
                                    while sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor6[stor12].field_0) == stor6[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sub_7943b75e, 6)
                                if not _727:
                                    stor6[stor12].field_0 = 0
                                    s = sha3(sha3(sub_7943b75e, 6))
                                    while sha3(sha3(sub_7943b75e, 6)) + (stor6[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor6[stor12].field_0 = (2 * _727) + 1
                                    t = sha3(sha3(sub_7943b75e, 6))
                                    s = _352 + 212
                                    while _352 + _727 + 212 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(sub_7943b75e, 6)) + (Mask(251, 0, _727 + 31) >> 5)
                                    while sha3(sha3(sub_7943b75e, 6)) + (stor6[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_352 + 212 len t] = call.data[calldata.size len t]
                            u = t
                            s = _355 % 5
                            while s:
                                if 48 > !(s % 10):
                                    revert with 0, 17
                                if not u:
                                    revert with 0, 17
                                if u - 1 >= mem[_352 + 180]:
                                    revert with 0, 50
                                mem[u + _352 + 211 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                u = u - 1
                                s = s / 10
                                continue 
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 6
                            _730 = mem[_352 + 180]
                            if bool(stor6[stor12].field_0):
                                if bool(stor6[stor12].field_0) == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sub_7943b75e, 6)
                                if not _730:
                                    stor6[stor12].field_0 = 0
                                    s = sha3(sha3(sub_7943b75e, 6))
                                    while sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor6[stor12].field_0 = (2 * _730) + 1
                                    t = sha3(sha3(sub_7943b75e, 6))
                                    s = _352 + 212
                                    while _352 + _730 + 212 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(sub_7943b75e, 6)) + (Mask(251, 0, _730 + 31) >> 5)
                                    while sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor6[stor12].field_0) == stor6[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sub_7943b75e, 6)
                                if not _730:
                                    stor6[stor12].field_0 = 0
                                    s = sha3(sha3(sub_7943b75e, 6))
                                    while sha3(sha3(sub_7943b75e, 6)) + (stor6[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor6[stor12].field_0 = (2 * _730) + 1
                                    t = sha3(sha3(sub_7943b75e, 6))
                                    s = _352 + 212
                                    while _352 + _730 + 212 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(sub_7943b75e, 6)) + (Mask(251, 0, _730 + 31) >> 5)
                                    while sha3(sha3(sub_7943b75e, 6)) + (stor6[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                else:
                    mem[_352 + 180] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_352 + 184] = msg.sender
                    mem[_352 + 216] = 0
                    mem[_352 + 248] = sub_7943b75e
                    mem[_352 + 280] = 128
                    mem[_352 + 312] = 0
                    s = 0
                    while s < 0:
                        mem[s + _352 + 344] = mem[s + _352 + 180]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_7943b75e, 128, 0
                    mem[_352 + 180] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if not _355 % 5:
                        mem[64] = _352 + ceil32(return_data.size) + 244
                        mem[_352 + ceil32(return_data.size) + 180] = 1
                        mem[_352 + ceil32(return_data.size) + 212] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if bool(stor6[stor12].field_0):
                            if bool(stor6[stor12].field_0) == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            bool(stor6[stor12].field_0) = 0
                            uint255(stor6[stor12].field_1) = 1
                            uint8(stor6[stor12].field_248) = 48
                            s = sha3(sha3(sub_7943b75e, 6))
                            while sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor6[stor12].field_0) == stor6[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            bool(stor6[stor12].field_0) = 0
                            uint255(stor6[stor12].field_1) = 1
                            uint8(stor6[stor12].field_248) = 48
                            s = sha3(sha3(sub_7943b75e, 6))
                            while sha3(sha3(sub_7943b75e, 6)) + (stor6[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        t = 0
                        s = _355 % 5
                        while s:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            s = s / 10
                            continue 
                        if t > test266151307():
                            revert with 0, 65
                        mem[_352 + ceil32(return_data.size) + 180] = t
                        mem[64] = _352 + ceil32(return_data.size) + ceil32(t) + 212
                        if not t:
                            u = t
                            s = _355 % 5
                            while s:
                                if 48 > !(s % 10):
                                    revert with 0, 17
                                if not u:
                                    revert with 0, 17
                                if u - 1 >= mem[_352 + ceil32(return_data.size) + 180]:
                                    revert with 0, 50
                                mem[u + _352 + ceil32(return_data.size) + 211 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                u = u - 1
                                s = s / 10
                                continue 
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            if bool(stor6[stor12].field_0):
                                if bool(stor6[stor12].field_0) == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not mem[_352 + ceil32(return_data.size) + 180]:
                                    stor6[stor12].field_0 = 0
                                    s = sha3(sha3(sub_7943b75e, 6))
                                    while sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    sub_7943b75e++
                                    if sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32) >= mem[96]:
                                        revert with 0, 50
                                    mem[0] = mem[(32 * sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32)) + 128]
                                    mem[32] = 14
                                    uint8(stor14[mem[(32 * ('array', ('div', 0.03125, ('add', 31, ('mask_shl', 256, -1, -1, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor12', 12)), ('name', 'stor6', 6))))))), ('map', ('stor', ('name', 'stor12', 12)), ('name', 'stor6', 6)))) + 128]].field_0) = 1
                                    if sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32) == -1:
                                        revert with 0, 17
                                    s = sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32) + 1
                                    continue 
                                stor6[stor12].field_0 = (2 * mem[_352 + ceil32(return_data.size) + 180]) + 1
                                t = sha3(sha3(sub_7943b75e, 6))
                                s = _352 + ceil32(return_data.size) + 212
                                while _352 + ceil32(return_data.size) + mem[_352 + ceil32(return_data.size) + 180] + 212 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(sub_7943b75e, 6)) + (Mask(251, 0, mem[_352 + ceil32(return_data.size) + 180] + 31) >> 5)
                                while sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor6[stor12].field_0) == stor6[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not mem[_352 + ceil32(return_data.size) + 180]:
                                    stor6[stor12].field_0 = 0
                                    s = sha3(sha3(sub_7943b75e, 6))
                                    while sha3(sha3(sub_7943b75e, 6)) + (stor6[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor6[stor12].field_0 = (2 * mem[_352 + ceil32(return_data.size) + 180]) + 1
                                    t = sha3(sha3(sub_7943b75e, 6))
                                    s = _352 + ceil32(return_data.size) + 212
                                    while _352 + ceil32(return_data.size) + mem[_352 + ceil32(return_data.size) + 180] + 212 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(sub_7943b75e, 6)) + (Mask(251, 0, mem[_352 + ceil32(return_data.size) + 180] + 31) >> 5)
                                    while sha3(sha3(sub_7943b75e, 6)) + (stor6[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_352 + ceil32(return_data.size) + 212 len t] = call.data[calldata.size len t]
                            u = t
                            s = _355 % 5
                            while s:
                                if 48 > !(s % 10):
                                    revert with 0, 17
                                if not u:
                                    revert with 0, 17
                                if u - 1 >= mem[_352 + ceil32(return_data.size) + 180]:
                                    revert with 0, 50
                                mem[u + _352 + ceil32(return_data.size) + 211 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                u = u - 1
                                s = s / 10
                                continue 
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            if bool(stor6[stor12].field_0):
                                if bool(stor6[stor12].field_0) == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not mem[_352 + ceil32(return_data.size) + 180]:
                                    stor6[stor12].field_0 = 0
                                    s = sha3(sha3(sub_7943b75e, 6))
                                    while sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor6[stor12].field_0 = (2 * mem[_352 + ceil32(return_data.size) + 180]) + 1
                                    t = sha3(sha3(sub_7943b75e, 6))
                                    s = _352 + ceil32(return_data.size) + 212
                                    while _352 + ceil32(return_data.size) + mem[_352 + ceil32(return_data.size) + 180] + 212 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(sub_7943b75e, 6)) + (Mask(251, 0, mem[_352 + ceil32(return_data.size) + 180] + 31) >> 5)
                                    while sha3(sha3(sub_7943b75e, 6)) + ((uint255(stor6[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor6[stor12].field_0) == stor6[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not mem[_352 + ceil32(return_data.size) + 180]:
                                    stor6[stor12].field_0 = 0
                                    s = sha3(sha3(sub_7943b75e, 6))
                                    while sha3(sha3(sub_7943b75e, 6)) + (stor6[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor6[stor12].field_0 = (2 * mem[_352 + ceil32(return_data.size) + 180]) + 1
                                    t = sha3(sha3(sub_7943b75e, 6))
                                    s = _352 + ceil32(return_data.size) + 212
                                    while _352 + ceil32(return_data.size) + mem[_352 + ceil32(return_data.size) + 180] + 212 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(sub_7943b75e, 6)) + (Mask(251, 0, mem[_352 + ceil32(return_data.size) + 180] + 31) >> 5)
                                    while sha3(sha3(sub_7943b75e, 6)) + (stor6[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                sub_7943b75e++
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 14
                stor14[mem[(32 * idx) + 128]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    if developerAddress != msg.sender:
        revert with 0, 'Developer: caller is not the developer'
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor16.length):
                if bool(stor16.length):
                    if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor16.length = 0
                        idx = 0
                        while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                            stor16[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor16.length = 0
                        idx = 0
                        while stor16.length.field_1 % 128 + 31 / 32 > idx:
                            stor16[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129] = 64
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 193] = uint255(stor16.length) * 0.5
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 225 len ceil32(uint255(stor16.length) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)]
                if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
                    mem[(uint255(stor16.length) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 225] = 0
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 161] = ceil32(uint255(stor16.length) * 0.5) + 96
                if bool(stor16.length):
                    if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor16.length) * 0.5
                    if not bool(stor16.length):
                        emit 0xd2877107: Array(len=2 * Mask(256, -1, stor16.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)], 2 * Mask(256, -1, stor16.length), Mask(248, 8, stor16.length)), ceil32(uint255(stor16.length) * 0.5) + 96
                    else:
                        if bool(stor16.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor16.length) * 0.5) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor16.length) * 0.5:
                                mem[idx + (2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len (2 * ceil32(uint255(stor16.length) * 0.5)) + 128]
                else:
                    if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = stor16.length.field_1 % 128
                    if not bool(stor16.length):
                        emit 0xd2877107: Array(len=2 * Mask(256, -1, stor16.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)], stor16.length % 128, Mask(248, 8, stor16.length)), ceil32(uint255(stor16.length) * 0.5) + 96
                    else:
                        if bool(stor16.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor16.length) * 0.5) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor16.length.field_1 % 128:
                                mem[idx + (2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len ceil32(uint255(stor16.length) * 0.5) + ceil32(stor16.length.field_1 % 128) + 128]
            else:
                if 31 >= uint255(stor16.length) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor16.length.field_8)
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while stor16.length.field_1 % 128 + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 193] = uint255(stor16.length) * 0.5
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 225 len ceil32(uint255(stor16.length) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)]
                    if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
                        mem[(uint255(stor16.length) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 161] = ceil32(uint255(stor16.length) * 0.5) + 96
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor16.length) * 0.5
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor16.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)], 2 * Mask(256, -1, stor16.length), Mask(248, 8, stor16.length)), ceil32(uint255(stor16.length) * 0.5) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor16.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor16.length) * 0.5:
                                    mem[idx + (2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len (2 * ceil32(uint255(stor16.length) * 0.5)) + 128]
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = stor16.length.field_1 % 128
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor16.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)], stor16.length % 128, Mask(248, 8, stor16.length)), ceil32(uint255(stor16.length) * 0.5) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor16.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor16.length.field_1 % 128:
                                    mem[idx + (2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len ceil32(uint255(stor16.length) * 0.5) + ceil32(stor16.length.field_1 % 128) + 128]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor16.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(stor16.length) * 0.5) + 97 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while stor16.length.field_1 % 128 + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 193] = uint255(stor16.length) * 0.5
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 225 len ceil32(uint255(stor16.length) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)]
                    if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
                        mem[(uint255(stor16.length) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 161] = ceil32(uint255(stor16.length) * 0.5) + 96
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor16.length) * 0.5
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor16.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)], 2 * Mask(256, -1, stor16.length), Mask(248, 8, stor16.length)), ceil32(uint255(stor16.length) * 0.5) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor16.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor16.length) * 0.5:
                                    mem[idx + (2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len (4 * ceil32(uint255(stor16.length) * 0.5)) + 128]
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = stor16.length.field_1 % 128
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor16.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)], stor16.length % 128, Mask(248, 8, stor16.length)), ceil32(uint255(stor16.length) * 0.5) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor16.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor16.length.field_1 % 128:
                                    mem[idx + (2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len ceil32(uint255(stor16.length) * 0.5) + ceil32(stor16.length.field_1 % 128) + 128]
        else:
            if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                revert with 0, 34
            if not stor16.length.field_1 % 128:
                if bool(stor16.length):
                    if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor16.length = 0
                        idx = 0
                        while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                            stor16[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor16.length = 0
                        idx = 0
                        while stor16.length.field_1 % 128 + 31 / 32 > idx:
                            stor16[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129] = 64
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 193] = uint255(stor16.length) * 0.5
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 225 len ceil32(uint255(stor16.length) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)]
                if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
                    mem[(uint255(stor16.length) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 225] = 0
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 161] = ceil32(uint255(stor16.length) * 0.5) + 96
                if bool(stor16.length):
                    if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor16.length) * 0.5
                    if not bool(stor16.length):
                        emit 0xd2877107: Array(len=2 * Mask(256, -1, stor16.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)], 2 * Mask(256, -1, stor16.length), Mask(248, 8, stor16.length)), ceil32(uint255(stor16.length) * 0.5) + 96
                    else:
                        if bool(stor16.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor16.length) * 0.5) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor16.length) * 0.5:
                                mem[idx + (2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len (2 * ceil32(uint255(stor16.length) * 0.5)) + 128]
                else:
                    if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = stor16.length.field_1 % 128
                    if not bool(stor16.length):
                        emit 0xd2877107: Array(len=2 * Mask(256, -1, stor16.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)], stor16.length % 128, Mask(248, 8, stor16.length)), ceil32(uint255(stor16.length) * 0.5) + 96
                    else:
                        if bool(stor16.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor16.length) * 0.5) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor16.length.field_1 % 128:
                                mem[idx + (2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len ceil32(uint255(stor16.length) * 0.5) + ceil32(stor16.length.field_1 % 128) + 128]
            else:
                if 31 >= stor16.length.field_1 % 128:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor16.length.field_8)
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while stor16.length.field_1 % 128 + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 193] = uint255(stor16.length) * 0.5
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 225 len ceil32(uint255(stor16.length) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)]
                    if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
                        mem[(uint255(stor16.length) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 161] = ceil32(uint255(stor16.length) * 0.5) + 96
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor16.length) * 0.5
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor16.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)], 2 * Mask(256, -1, stor16.length), Mask(248, 8, stor16.length)), ceil32(uint255(stor16.length) * 0.5) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor16.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor16.length) * 0.5:
                                    mem[idx + (2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len (2 * ceil32(uint255(stor16.length) * 0.5)) + 128]
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = stor16.length.field_1 % 128
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor16.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)], stor16.length % 128, Mask(248, 8, stor16.length)), ceil32(uint255(stor16.length) * 0.5) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor16.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor16.length.field_1 % 128:
                                    mem[idx + (2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len ceil32(uint255(stor16.length) * 0.5) + ceil32(stor16.length.field_1 % 128) + 128]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor16.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor16.length.field_1 % 128 + 97 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while stor16.length.field_1 % 128 + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 193] = uint255(stor16.length) * 0.5
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 225 len ceil32(uint255(stor16.length) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)]
                    if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
                        mem[(uint255(stor16.length) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 161] = ceil32(uint255(stor16.length) * 0.5) + 96
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor16.length) * 0.5
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor16.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)], 2 * Mask(256, -1, stor16.length), Mask(248, 8, stor16.length)), ceil32(uint255(stor16.length) * 0.5) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor16.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor16.length) * 0.5:
                                    mem[idx + (2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len (4 * ceil32(uint255(stor16.length) * 0.5)) + 128]
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = stor16.length.field_1 % 128
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor16.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor16.length) * 0.5)], stor16.length % 128, Mask(248, 8, stor16.length)), ceil32(uint255(stor16.length) * 0.5) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor16.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor16.length.field_1 % 128:
                                    mem[idx + (2 * ceil32(uint255(stor16.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor16.length) * 0.5) + 129 len ceil32(uint255(stor16.length) * 0.5) + ceil32(stor16.length.field_1 % 128) + 128]
    else:
        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor16.length):
                if bool(stor16.length):
                    if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor16.length = 0
                        idx = 0
                        while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                            stor16[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor16.length = 0
                        idx = 0
                        while stor16.length.field_1 % 128 + 31 / 32 > idx:
                            stor16[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129] = 64
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 193] = stor16.length.field_1 % 128
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 225 len ceil32(stor16.length.field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)]
                if ceil32(stor16.length.field_1 % 128) > stor16.length.field_1 % 128:
                    mem[stor16.length.field_1 % 128 + ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 225] = 0
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 161] = ceil32(stor16.length.field_1 % 128) + 96
                if bool(stor16.length):
                    if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor16.length) * 0.5
                    if not bool(stor16.length):
                        emit 0xd2877107: Array(len=stor16.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)], 2 * Mask(256, -1, stor16.length), Mask(248, 8, stor16.length)), ceil32(stor16.length.field_1 % 128) + 96
                    else:
                        if bool(stor16.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor16.length.field_1 % 128) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor16.length) * 0.5:
                                mem[idx + (2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len ceil32(stor16.length.field_1 % 128) + ceil32(uint255(stor16.length) * 0.5) + 128]
                else:
                    if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 225] = stor16.length.field_1 % 128
                    if not bool(stor16.length):
                        emit 0xd2877107: Array(len=stor16.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)], stor16.length % 128, Mask(248, 8, stor16.length)), ceil32(stor16.length.field_1 % 128) + 96
                    else:
                        if bool(stor16.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor16.length.field_1 % 128) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor16.length.field_1 % 128:
                                mem[idx + (2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len (2 * ceil32(stor16.length.field_1 % 128)) + 128]
            else:
                if 31 >= uint255(stor16.length) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor16.length.field_8)
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while stor16.length.field_1 % 128 + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 193] = stor16.length.field_1 % 128
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 225 len ceil32(stor16.length.field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)]
                    if ceil32(stor16.length.field_1 % 128) > stor16.length.field_1 % 128:
                        mem[stor16.length.field_1 % 128 + ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 161] = ceil32(stor16.length.field_1 % 128) + 96
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor16.length) * 0.5
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=stor16.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)], 2 * Mask(256, -1, stor16.length), Mask(248, 8, stor16.length)), ceil32(stor16.length.field_1 % 128) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor16.length.field_1 % 128) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor16.length) * 0.5:
                                    mem[idx + (2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len ceil32(stor16.length.field_1 % 128) + ceil32(uint255(stor16.length) * 0.5) + 128]
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 225] = stor16.length.field_1 % 128
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=stor16.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)], stor16.length % 128, Mask(248, 8, stor16.length)), ceil32(stor16.length.field_1 % 128) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor16.length.field_1 % 128) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor16.length.field_1 % 128:
                                    mem[idx + (2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len (2 * ceil32(stor16.length.field_1 % 128)) + 128]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor16.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(stor16.length) * 0.5) + 97 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while stor16.length.field_1 % 128 + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 193] = stor16.length.field_1 % 128
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 225 len ceil32(stor16.length.field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)]
                    if ceil32(stor16.length.field_1 % 128) > stor16.length.field_1 % 128:
                        mem[stor16.length.field_1 % 128 + ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 161] = ceil32(stor16.length.field_1 % 128) + 96
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor16.length) * 0.5
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=stor16.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)], 2 * Mask(256, -1, stor16.length), Mask(248, 8, stor16.length)), ceil32(stor16.length.field_1 % 128) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor16.length.field_1 % 128) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor16.length) * 0.5:
                                    mem[idx + (2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len ceil32(stor16.length.field_1 % 128) + ceil32(uint255(stor16.length) * 0.5) + 128]
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 225] = stor16.length.field_1 % 128
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=stor16.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)], stor16.length % 128, Mask(248, 8, stor16.length)), ceil32(stor16.length.field_1 % 128) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor16.length.field_1 % 128) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor16.length.field_1 % 128:
                                    mem[idx + (2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len (4 * ceil32(stor16.length.field_1 % 128)) + 128]
        else:
            if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                revert with 0, 34
            if not stor16.length.field_1 % 128:
                if bool(stor16.length):
                    if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor16.length = 0
                        idx = 0
                        while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                            stor16[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor16.length = 0
                        idx = 0
                        while stor16.length.field_1 % 128 + 31 / 32 > idx:
                            stor16[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129] = 64
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 193] = stor16.length.field_1 % 128
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 225 len ceil32(stor16.length.field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)]
                if ceil32(stor16.length.field_1 % 128) > stor16.length.field_1 % 128:
                    mem[stor16.length.field_1 % 128 + ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 225] = 0
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 161] = ceil32(stor16.length.field_1 % 128) + 96
                if bool(stor16.length):
                    if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor16.length) * 0.5
                    if not bool(stor16.length):
                        emit 0xd2877107: Array(len=stor16.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)], 2 * Mask(256, -1, stor16.length), Mask(248, 8, stor16.length)), ceil32(stor16.length.field_1 % 128) + 96
                    else:
                        if bool(stor16.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor16.length.field_1 % 128) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor16.length) * 0.5:
                                mem[idx + (2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len ceil32(stor16.length.field_1 % 128) + ceil32(uint255(stor16.length) * 0.5) + 128]
                else:
                    if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 225] = stor16.length.field_1 % 128
                    if not bool(stor16.length):
                        emit 0xd2877107: Array(len=stor16.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)], stor16.length % 128, Mask(248, 8, stor16.length)), ceil32(stor16.length.field_1 % 128) + 96
                    else:
                        if bool(stor16.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor16.length.field_1 % 128) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor16.length.field_1 % 128:
                                mem[idx + (2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len (2 * ceil32(stor16.length.field_1 % 128)) + 128]
            else:
                if 31 >= stor16.length.field_1 % 128:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor16.length.field_8)
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while stor16.length.field_1 % 128 + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 193] = stor16.length.field_1 % 128
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 225 len ceil32(stor16.length.field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)]
                    if ceil32(stor16.length.field_1 % 128) > stor16.length.field_1 % 128:
                        mem[stor16.length.field_1 % 128 + ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 161] = ceil32(stor16.length.field_1 % 128) + 96
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor16.length) * 0.5
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=stor16.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)], 2 * Mask(256, -1, stor16.length), Mask(248, 8, stor16.length)), ceil32(stor16.length.field_1 % 128) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor16.length.field_1 % 128) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor16.length) * 0.5:
                                    mem[idx + (2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len ceil32(stor16.length.field_1 % 128) + ceil32(uint255(stor16.length) * 0.5) + 128]
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 225] = stor16.length.field_1 % 128
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=stor16.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)], stor16.length % 128, Mask(248, 8, stor16.length)), ceil32(stor16.length.field_1 % 128) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor16.length.field_1 % 128) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor16.length.field_1 % 128:
                                    mem[idx + (2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len (2 * ceil32(stor16.length.field_1 % 128)) + 128]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor16.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor16.length.field_1 % 128 + 97 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor16.length = 0
                            idx = 0
                            while stor16.length.field_1 % 128 + 31 / 32 > idx:
                                stor16[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 193] = stor16.length.field_1 % 128
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 225 len ceil32(stor16.length.field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)]
                    if ceil32(stor16.length.field_1 % 128) > stor16.length.field_1 % 128:
                        mem[stor16.length.field_1 % 128 + ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 161] = ceil32(stor16.length.field_1 % 128) + 96
                    if bool(stor16.length):
                        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor16.length) * 0.5
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=stor16.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)], 2 * Mask(256, -1, stor16.length), Mask(248, 8, stor16.length)), ceil32(stor16.length.field_1 % 128) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor16.length.field_1 % 128) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor16.length) * 0.5:
                                    mem[idx + (2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len ceil32(stor16.length.field_1 % 128) + ceil32(uint255(stor16.length) * 0.5) + 128]
                    else:
                        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 225] = stor16.length.field_1 % 128
                        if not bool(stor16.length):
                            emit 0xd2877107: Array(len=stor16.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor16.length.field_1 % 128)], stor16.length % 128, Mask(248, 8, stor16.length)), ceil32(stor16.length.field_1 % 128) + 96
                        else:
                            if bool(stor16.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor16.length.field_1 % 128) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor16.length.field_1 % 128:
                                    mem[idx + (2 * ceil32(stor16.length.field_1 % 128)) + ceil32(ceil32(arg1.length)) + 257] = stor16[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor16.length.field_1 % 128) + 129 len (4 * ceil32(stor16.length.field_1 % 128)) + 128]
}



}
