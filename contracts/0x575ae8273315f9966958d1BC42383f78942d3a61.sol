contract main {




// =====================  Runtime code  =====================


const _INTERFACE_ID_ERC721_VERIFY_FINGERPRINT = 0x8cb5b56b00000000000000000000000000000000000000000000000000000000


address owner;
array of struct stor1;
mapping of struct stor10;
mapping of struct sub_1d53d016;
mapping of struct eggType;
address sub_53bf0ce3Address;
array of uint256 prices;
uint256 stor15;
uint256 stor16;
address petContractAddress;
array of struct stor2;
array of uint8 ownerOf;
mapping of address createrOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
array of struct stor8;
uint256 totalSupply;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0a6d0920(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eggType[arg1].field_0
}

function totalSupply() payable {
    return totalSupply
}

function sub_1d53d016(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint8(sub_1d53d016[arg1].field_1536), sub_1d53d016[arg1].field_1792, sub_1d53d016[arg1].field_2048
}

function creaters(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return createrOf[arg1]
}

function sub_53bf0ce3(?) payable {
    return sub_53bf0ce3Address
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: creater query for nonexistent token'
    return address(ownerOf[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function createrOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not createrOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return createrOf[arg1]
}

function owner() payable {
    return owner
}

function petContract() payable {
    return petContractAddress
}

function prices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 3
    return prices[arg1]
}

function getEggType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eggType[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAcceptedToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_53bf0ce3Address = arg1
}

function sub_a68aa726(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    petContractAddress = address(arg1)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xa0d15100000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x9325454200000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_f4efa6bd(?) payable {
    require calldata.size - 4 >= 96
    require 35 < calldata.size
    require 100 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 3:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    s = 14
    idx = 96
    while 192 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 17
    while 17 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: creater query for nonexistent token'
    if arg1 == address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if address(ownerOf[arg2]) != msg.sender:
        if not stor7[address(stor3[arg2])][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: creater query for nonexistent token'
    emit Approval(address(ownerOf[arg2]), arg1, arg2);
}

function getEggInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[5216] = uint8(sub_1d53d016[arg1].field_0)
    idx = 5216
    s = 0
    while 7776 > idx + 32:
        mem[idx + 32] = stor('map', ('param', 'arg1'), ('name', 'stor11', 11))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[7776] = uint8(sub_1d53d016[arg1].field_768)
    idx = 7776
    s = 0
    while 10336 > idx + 32:
        mem[idx + 32] = uint8(ownerOf[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    idx = 0
    s = 5216
    t = 10336
    while idx < 80:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 7776
    t = 12896
    while idx < 80:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return mem[10336 len 5120], uint8(sub_1d53d016[arg1].field_1536), sub_1d53d016[arg1].field_1792, sub_1d53d016[arg1].field_2048
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: creater query for nonexistent token'
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[address(stor3[arg3])][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: creater query for nonexistent token'
    if address(ownerOf[arg3]) != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: creater query for nonexistent token'
    emit Approval(address(ownerOf[arg3]), 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: creater query for nonexistent token'
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[address(stor3[arg3])][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: creater query for nonexistent token'
    if address(ownerOf[arg3]) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: creater query for nonexistent token'
    emit Approval(address(ownerOf[arg3]), 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
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

function sub_ad65d949(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: creater query for nonexistent token'
    if address(ownerOf[arg1]) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not petContractAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg1] = 0
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: creater query for nonexistent token'
    emit Approval(address(ownerOf[arg1]), 0, arg1);
    if balanceOf[address(msg.sender)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]--
    if balanceOf[stor17] > -2:
        revert with 'NH{q', 17
    balanceOf[stor17]++
    address(ownerOf[arg1]) = petContractAddress
    emit Transfer(msg.sender, petContractAddress, arg1);
    mem[256] = uint8(sub_1d53d016[arg1].field_0)
    idx = 256
    s = 0
    while 2816 > idx + 32:
        mem[idx + 32] = stor('map', ('param', 'arg1'), ('name', 'stor11', 11))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[2816] = uint8(sub_1d53d016[arg1].field_768)
    idx = 2816
    s = 0
    while 5376 > idx + 32:
        mem[idx + 32] = uint8(ownerOf[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[5376] = 0xe5e5752d00000000000000000000000000000000000000000000000000000000
    mem[5380] = msg.sender
    idx = 0
    s = 256
    t = 5412
    while idx < 80:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 2816
    t = 7972
    while idx < 80:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(petContractAddress)
    call petContractAddress.0xe5e5752d with:
         gas gas_remaining wei
        args msg.sender, mem[5412 len 5120], uint8(sub_1d53d016[arg1].field_1536), sub_1d53d016[arg1].field_1792, sub_1d53d016[arg1].field_2048
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: creater query for nonexistent token'
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[address(stor3[arg3])][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: creater query for nonexistent token'
    if address(ownerOf[arg3]) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: creater query for nonexistent token'
    emit Approval(address(ownerOf[arg3]), 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
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

function name() payable {
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

function symbol() payable {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor2.length.field_1):
                if 31 < uint255(stor2.length.field_1):
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor2.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1 % 128:
                if 31 < stor2.length.field_1 % 128:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length.field_1)) + 192 len ceil32(uint255(stor2.length.field_1))] = mem[128 len ceil32(uint255(stor2.length.field_1))]
        if ceil32(uint255(stor2.length.field_1)) > uint255(stor2.length.field_1):
            mem[ceil32(uint255(stor2.length.field_1)) + uint255(stor2.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))], mem[(2 * ceil32(uint255(stor2.length.field_1))) + 192 len 2 * ceil32(uint255(stor2.length.field_1))]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor2.length.field_1):
            if 31 < uint255(stor2.length.field_1):
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while uint255(stor2.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1 % 128:
            if 31 < stor2.length.field_1 % 128:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    mem[ceil32(stor2.length.field_1 % 128) + 192 len ceil32(stor2.length.field_1 % 128)] = mem[128 len ceil32(stor2.length.field_1 % 128)]
    if ceil32(stor2.length.field_1 % 128) > stor2.length.field_1 % 128:
        mem[ceil32(stor2.length.field_1 % 128) + stor2.length.field_1 % 128 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)], mem[(2 * ceil32(stor2.length.field_1 % 128)) + 192 len 2 * ceil32(stor2.length.field_1 % 128)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require address(ownerOf[arg1])
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor10[arg1].field_0):
            if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor10[arg1].field_1):
                if 31 < uint255(stor10[arg1].field_1):
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor10[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor10[arg1].field_1)), data=mem[128 len ceil32(uint255(stor10[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
        else:
            if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1 % 128:
                if 31 < stor10[arg1].field_1 % 128:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor10[arg1].field_1)), data=mem[128 len ceil32(uint255(stor10[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
        mem[ceil32(uint255(stor10[arg1].field_1)) + 192 len ceil32(uint255(stor10[arg1].field_1))] = mem[128 len ceil32(uint255(stor10[arg1].field_1))]
        if ceil32(uint255(stor10[arg1].field_1)) > uint255(stor10[arg1].field_1):
            mem[ceil32(uint255(stor10[arg1].field_1)) + uint255(stor10[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor10[arg1].field_1)), data=mem[128 len ceil32(uint255(stor10[arg1].field_1))], mem[(2 * ceil32(uint255(stor10[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor10[arg1].field_1))]), 
    if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor10[arg1].field_1):
            if 31 < uint255(stor10[arg1].field_1):
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor10[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0 % 128, data=mem[128 len ceil32(stor10[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
    else:
        if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1 % 128:
            if 31 < stor10[arg1].field_1 % 128:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0 % 128, data=mem[128 len ceil32(stor10[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
    mem[ceil32(stor10[arg1].field_1 % 128) + 192 len ceil32(stor10[arg1].field_1 % 128)] = mem[128 len ceil32(stor10[arg1].field_1 % 128)]
    if ceil32(stor10[arg1].field_1 % 128) > stor10[arg1].field_1 % 128:
        mem[ceil32(stor10[arg1].field_1 % 128) + stor10[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor10[arg1].field_0 % 128, data=mem[128 len ceil32(stor10[arg1].field_1 % 128)], mem[(2 * ceil32(stor10[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor10[arg1].field_1 % 128)]), 
}

function getGenome(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 160
    mem[128 len 160] = call.data[calldata.size len 160]
    mem[288] = uint8(sub_1d53d016[arg1].field_0)
    idx = 288
    s = 0
    while 2848 > idx + 32:
        mem[idx + 32] = stor('map', ('param', 'arg1'), ('name', 'stor11', 11))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[0] = arg1
    mem[32] = 11
    mem[64] = 5408
    mem[2848] = uint8(sub_1d53d016[arg1].field_768)
    idx = 2848
    s = 0
    while 5408 > idx + 32:
        mem[idx + 32] = uint8(ownerOf[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    idx = 0
    while idx < 80:
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length.field_1) < 32:
                revert with 'NH{q', 34
            if mem[(32 * idx) + 319 len 1] >= uint255(stor8.length.field_1):
                revert with 'NH{q', 50
        else:
            if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if mem[(32 * idx) + 319 len 1] >= stor8.length.field_1 % 128:
                revert with 'NH{q', 50
        if not bool(stor8.length):
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        else:
            mem[0] = 8
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('field', 3, ('stor', ('array', ('div', ('mask', 8, 0, ('mem', ('range', ('add', 288, ('mul', 32, ('var', 0))), 32))), 32), ('name', 'stor8', 8)))), 0))), ('add', -11, (('field', 3, ('stor', ('array', ('div', ('mask', 8, 0, ('mem', ('range', ('add', 288, ('mul', 32, ('var', 0))), 32))), 32), ('name', 'stor8', 8)))), 0)), ('mask_shl', 5, 0, 0, ('mem', ('range', ('add', 288, ('mask_shl', 251, 0, 5, ('var', 0))), 32)))), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('field', 3, ('stor', ('array', ('div', ('mask', 8, 0, ('mem', ('range', ('add', 288, ('mul', 32, ('var', 0))), 32))), 32), ('name', 'stor8', 8)))), 0))), ('add', -11, (('field', 3, ('stor', ('array', ('div', ('mask', 8, 0, ('mem', ('range', ('add', 288, ('mul', 32, ('var', 0))), 32))), 32), ('name', 'stor8', 8)))), 0)), ('mask_shl', 5, 0, 0, ('mem', ('range', ('add', 288, ('mask_shl', 251, 0, 5, ('var', 0))), 32)))), 0) - 256
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 80
    while idx < 160:
        if idx < 80:
            revert with 'NH{q', 17
        if idx - 80 >= 80:
            revert with 'NH{q', 50
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length.field_1) < 32:
                revert with 'NH{q', 34
            if mem[(32 * idx - 80) + 2879 len 1] >= uint255(stor8.length.field_1):
                revert with 'NH{q', 50
        else:
            if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if mem[(32 * idx - 80) + 2879 len 1] >= stor8.length.field_1 % 128:
                revert with 'NH{q', 50
        if not bool(stor8.length):
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        else:
            mem[0] = 8
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('field', 3, ('stor', ('array', ('div', ('mask', 8, 0, ('mem', ('range', ('add', 2848, ('mul', 32, ('add', -80, ('var', 0)))), 32))), 32), ('name', 'stor8', 8)))), 0))), ('add', -11, (('field', 3, ('stor', ('array', ('div', ('mask', 8, 0, ('mem', ('range', ('add', 2848, ('mul', 32, ('add', -80, ('var', 0)))), 32))), 32), ('name', 'stor8', 8)))), 0)), ('mask_shl', 5, 0, 0, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('add', -80, ('var', 0)))), 32)))), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('field', 3, ('stor', ('array', ('div', ('mask', 8, 0, ('mem', ('range', ('add', 2848, ('mul', 32, ('add', -80, ('var', 0)))), 32))), 32), ('name', 'stor8', 8)))), 0))), ('add', -11, (('field', 3, ('stor', ('array', ('div', ('mask', 8, 0, ('mem', ('range', ('add', 2848, ('mul', 32, ('add', -80, ('var', 0)))), 32))), 32), ('name', 'stor8', 8)))), 0)), ('mask_shl', 5, 0, 0, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('add', -80, ('var', 0)))), 32)))), 0) - 256
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[64] + mem[96] + 64] = 0
    return Array(len=mem[96], data=mem[mem[64] + 64 len ceil32(mem[96])])
}

function sub_367610fe(?) payable {
    require calldata.size - 4 >= 5248
    require cd[4] == address(cd[4])
    require calldata.size - 36 >= 5216
    require 67 < calldata.size
    require 2596 <= calldata.size
    idx = 0
    s = 36
    t = 256
    while idx < 80:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 2627 < calldata.size
    require 5156 <= calldata.size
    require cd[2596] == uint8(cd[2596])
    mem[2816] = cd[2596]
    require cd[2628] == uint8(cd[2628])
    mem[2848] = cd[2628]
    require cd[2660] == uint8(cd[2660])
    mem[2880] = cd[2660]
    require cd[2692] == uint8(cd[2692])
    mem[2912] = cd[2692]
    require cd[2724] == uint8(cd[2724])
    mem[2944] = cd[2724]
    require cd[2756] == uint8(cd[2756])
    mem[2976] = cd[2756]
    require cd[2788] == uint8(cd[2788])
    mem[3008] = cd[2788]
    require cd[2820] == uint8(cd[2820])
    mem[3040] = cd[2820]
    require cd[2852] == uint8(cd[2852])
    mem[3072] = cd[2852]
    require cd[2884] == uint8(cd[2884])
    mem[3104] = cd[2884]
    require cd[2916] == uint8(cd[2916])
    mem[3136] = cd[2916]
    require cd[2948] == uint8(cd[2948])
    mem[3168] = cd[2948]
    require cd[2980] == uint8(cd[2980])
    mem[3200] = cd[2980]
    require cd[3012] == uint8(cd[3012])
    mem[3232] = cd[3012]
    require cd[3044] == uint8(cd[3044])
    mem[3264] = cd[3044]
    require cd[3076] == uint8(cd[3076])
    mem[3296] = cd[3076]
    require cd[3108] == uint8(cd[3108])
    mem[3328] = cd[3108]
    require cd[3140] == uint8(cd[3140])
    mem[3360] = cd[3140]
    require cd[3172] == uint8(cd[3172])
    mem[3392] = cd[3172]
    require cd[3204] == uint8(cd[3204])
    mem[3424] = cd[3204]
    require cd[3236] == uint8(cd[3236])
    mem[3456] = cd[3236]
    require cd[3268] == uint8(cd[3268])
    mem[3488] = cd[3268]
    require cd[3300] == uint8(cd[3300])
    mem[3520] = cd[3300]
    require cd[3332] == uint8(cd[3332])
    mem[3552] = cd[3332]
    require cd[3364] == uint8(cd[3364])
    mem[3584] = cd[3364]
    require cd[3396] == uint8(cd[3396])
    mem[3616] = cd[3396]
    require cd[3428] == uint8(cd[3428])
    mem[3648] = cd[3428]
    require cd[3460] == uint8(cd[3460])
    mem[3680] = cd[3460]
    require cd[3492] == uint8(cd[3492])
    mem[3712] = cd[3492]
    require cd[3524] == uint8(cd[3524])
    mem[3744] = cd[3524]
    require cd[3556] == uint8(cd[3556])
    mem[3776] = cd[3556]
    require cd[3588] == uint8(cd[3588])
    mem[3808] = cd[3588]
    require cd[3620] == uint8(cd[3620])
    mem[3840] = cd[3620]
    require cd[3652] == uint8(cd[3652])
    mem[3872] = cd[3652]
    require cd[3684] == uint8(cd[3684])
    mem[3904] = cd[3684]
    require cd[3716] == uint8(cd[3716])
    mem[3936] = cd[3716]
    require cd[3748] == uint8(cd[3748])
    mem[3968] = cd[3748]
    require cd[3780] == uint8(cd[3780])
    mem[4000] = cd[3780]
    require cd[3812] == uint8(cd[3812])
    mem[4032] = cd[3812]
    require cd[3844] == uint8(cd[3844])
    mem[4064] = cd[3844]
    require cd[3876] == uint8(cd[3876])
    mem[4096] = cd[3876]
    require cd[3908] == uint8(cd[3908])
    mem[4128] = cd[3908]
    require cd[3940] == uint8(cd[3940])
    mem[4160] = cd[3940]
    require cd[3972] == uint8(cd[3972])
    mem[4192] = cd[3972]
    require cd[4004] == uint8(cd[4004])
    mem[4224] = cd[4004]
    require cd[4036] == uint8(cd[4036])
    mem[4256] = cd[4036]
    require cd[4068] == uint8(cd[4068])
    mem[4288] = cd[4068]
    require cd[4100] == uint8(cd[4100])
    mem[4320] = cd[4100]
    require cd[4132] == uint8(cd[4132])
    mem[4352] = cd[4132]
    require cd[4164] == uint8(cd[4164])
    mem[4384] = cd[4164]
    require cd[4196] == uint8(cd[4196])
    mem[4416] = cd[4196]
    require cd[4228] == uint8(cd[4228])
    mem[4448] = cd[4228]
    require cd[4260] == uint8(cd[4260])
    mem[4480] = cd[4260]
    require cd[4292] == uint8(cd[4292])
    mem[4512] = cd[4292]
    require cd[4324] == uint8(cd[4324])
    mem[4544] = cd[4324]
    require cd[4356] == uint8(cd[4356])
    mem[4576] = cd[4356]
    require cd[4388] == uint8(cd[4388])
    mem[4608] = cd[4388]
    require cd[4420] == uint8(cd[4420])
    mem[4640] = cd[4420]
    require cd[4452] == uint8(cd[4452])
    mem[4672] = cd[4452]
    require cd[4484] == uint8(cd[4484])
    mem[4704] = cd[4484]
    require cd[4516] == uint8(cd[4516])
    mem[4736] = cd[4516]
    require cd[4548] == uint8(cd[4548])
    mem[4768] = cd[4548]
    require cd[4580] == uint8(cd[4580])
    mem[4800] = cd[4580]
    require cd[4612] == uint8(cd[4612])
    mem[4832] = cd[4612]
    require cd[4644] == uint8(cd[4644])
    mem[4864] = cd[4644]
    require cd[4676] == uint8(cd[4676])
    mem[4896] = cd[4676]
    require cd[4708] == uint8(cd[4708])
    mem[4928] = cd[4708]
    require cd[4740] == uint8(cd[4740])
    mem[4960] = cd[4740]
    require cd[4772] == uint8(cd[4772])
    mem[4992] = cd[4772]
    require cd[4804] == uint8(cd[4804])
    mem[5024] = cd[4804]
    require cd[4836] == uint8(cd[4836])
    mem[5056] = cd[4836]
    require cd[4868] == uint8(cd[4868])
    mem[5088] = cd[4868]
    require cd[4900] == uint8(cd[4900])
    mem[5120] = cd[4900]
    require cd[4932] == uint8(cd[4932])
    mem[5152] = cd[4932]
    require cd[4964] == uint8(cd[4964])
    mem[5184] = cd[4964]
    require cd[4996] == uint8(cd[4996])
    mem[5216] = cd[4996]
    idx = 76
    s = 5028
    t = 5248
    while idx < 80:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[5156] == uint8(cd[5156])
    require cd[5188] == cd[5188]
    require cd[5220] == cd[5220]
    if petContractAddress != msg.sender:
        revert with 0, 'EggNFT : Only petContract available'
    if totalSupply > -2:
        revert with 'NH{q', 17
    totalSupply++
    if not address(cd[4]):
        revert with 0, 'ERC721: mint to the zero address'
    if address(ownerOf[stor9]):
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(cd[4])] > -2:
        revert with 'NH{q', 17
    balanceOf[address(cd[4])]++
    address(ownerOf[stor9]) = address(cd[4])
    createrOf[stor9] = address(cd[4])
    emit Transfer(0, address(cd[4]), totalSupply);
    s = 0
    idx = 256
    while 2816 > idx:
        sub_1d53d016[stor9].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and sub_1d53d016[stor9].field_0
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 80
    s = sha3(totalSupply, 11)
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-78 * None + 3 / 32) + (None * None + 3 / 32)
    while 3 > idx:
        sub_1d53d016[stor9][idx].field_0 = 0
        idx = idx + 1
        continue 
    s = 0
    idx = 2816
    while 5376 > idx:
        sub_1d53d016[stor9].field_768 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and sub_1d53d016[stor9].field_768
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 80
    s = sha3(totalSupply, 11) + 3
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-78 * None + 3 / 32) + (None * None + 3 / 32) + 3
    while 6 > idx:
        sub_1d53d016[stor9][idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(sub_1d53d016[stor9].field_1536) = uint8(cd[5156])
    emit ItemCreated(address(cd[4]), totalSupply);
    return totalSupply
}

function create(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EggNFT : Only 12 type of eggs exist'
    if arg1 >= 12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EggNFT : Only 12 type of eggs exist'
    mem[256 len 2560] = call.data[calldata.size len 2560]
    mem[96] = 256
    mem[2816 len 2560] = call.data[calldata.size len 2560]
    mem[128] = 2816
    mem[192] = 0
    mem[224] = 0
    mem[160] = 0
    mem[5380] = msg.sender
    mem[5412] = owner
    if arg1 >= 4:
        if arg1 >= 8:
            mem[5444] = stor16
            require ext_code.size(sub_53bf0ce3Address)
            call sub_53bf0ce3Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, owner, stor16
            mem[5376] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 5376] = 0x7299054c00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 5380] = 80
            mem[ceil32(return_data.size) + 5412] = 4
            mem[ceil32(return_data.size) + 5444] = 0
            require ext_code.size(0xd45cdc9f759d94ae7b801fc6f8a7e9bebe7d2145)
            delegate 0xd45cdc9f759d94ae7b801fc6f8a7e9bebe7d2145.random(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 80, 4, 0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 5376 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 5376
            require return_data.size >= 32
            _29 = mem[ceil32(return_data.size) + 5376 len 4], 0
            require mem[ceil32(return_data.size) + 5376 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5407 < ceil32(return_data.size) + return_data.size + 5376
            _30 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5376]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5376] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5376]) + 5377 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5376]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5376]) + 5377
            mem[(2 * ceil32(return_data.size)) + 5376] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5376]
            require _29 + (32 * _30) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _29 + 5408
            t = (2 * ceil32(return_data.size)) + 5408
            while idx < _30:
                require mem[s] == mem[s + 31 len 1]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64]] = 0x7299054c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 80
            mem[mem[64] + 36] = 4
            mem[mem[64] + 68] = 1
            require ext_code.size(0xd45cdc9f759d94ae7b801fc6f8a7e9bebe7d2145)
            delegate 0xd45cdc9f759d94ae7b801fc6f8a7e9bebe7d2145.random(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 80, 4, 1
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _95 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _98 = mem[_95]
            require mem[_95] <= test266151307()
            require _95 + mem[_95] + 31 < _95 + return_data.size
            _101 = mem[_95 + mem[_95]]
            if mem[_95 + mem[_95]] > test266151307():
                revert with 'NH{q', 65
            if _95 + ceil32(return_data.size) + floor32(mem[_95 + mem[_95]]) + 1 > test266151307() or floor32(mem[_95 + mem[_95]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _95 + ceil32(return_data.size) + floor32(mem[_95 + mem[_95]]) + 1
            mem[_95 + ceil32(return_data.size)] = _101
            require _98 + (32 * _101) + 32 <= return_data.size
            idx = 0
            s = _95 + _98 + 32
            t = _95 + ceil32(return_data.size) + 32
            while idx < _101:
                require mem[s] == mem[s + 31 len 1]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            while idx < 80:
                if idx >= mem[(2 * ceil32(return_data.size)) + 5376]:
                    revert with 'NH{q', 50
                if idx >= 80:
                    revert with 'NH{q', 50
                mem[(32 * idx) + mem[96]] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 5439 len 1]
                if idx >= mem[_95 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if idx >= 80:
                    revert with 'NH{q', 50
                mem[(32 * idx) + mem[128]] = mem[(32 * idx) + _95 + ceil32(return_data.size) + 63 len 1]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[5444] = stor15
            require ext_code.size(sub_53bf0ce3Address)
            call sub_53bf0ce3Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, owner, stor15
            mem[5376] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[256] = arg1 % 4
            mem[288] = arg1 % 4
            mem[2816] = arg1 % 4
            mem[2848] = arg1 % 4
            mem[ceil32(return_data.size) + 5376] = 0x7299054c00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 5380] = 78
            mem[ceil32(return_data.size) + 5412] = 4
            mem[ceil32(return_data.size) + 5444] = 0
            require ext_code.size(0xd45cdc9f759d94ae7b801fc6f8a7e9bebe7d2145)
            delegate 0xd45cdc9f759d94ae7b801fc6f8a7e9bebe7d2145.random(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 78, 4, 0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 5376 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 5376
            require return_data.size >= 32
            _43 = mem[ceil32(return_data.size) + 5376 len 4], 0
            require mem[ceil32(return_data.size) + 5376 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5407 < ceil32(return_data.size) + return_data.size + 5376
            _44 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5376]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5376] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5376]) + 5377 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5376]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5376]) + 5377
            mem[(2 * ceil32(return_data.size)) + 5376] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 5376 len 4], 0 + 5376]
            require _43 + (32 * _44) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _43 + 5408
            t = (2 * ceil32(return_data.size)) + 5408
            while idx < _44:
                require mem[s] == mem[s + 31 len 1]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64]] = 0x7299054c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 78
            mem[mem[64] + 36] = 4
            mem[mem[64] + 68] = 1
            require ext_code.size(0xd45cdc9f759d94ae7b801fc6f8a7e9bebe7d2145)
            delegate 0xd45cdc9f759d94ae7b801fc6f8a7e9bebe7d2145.random(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 78, 4, 1
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _99 = mem[_96]
            require mem[_96] <= test266151307()
            require _96 + mem[_96] + 31 < _96 + return_data.size
            _102 = mem[_96 + mem[_96]]
            if mem[_96 + mem[_96]] > test266151307():
                revert with 'NH{q', 65
            if _96 + ceil32(return_data.size) + floor32(mem[_96 + mem[_96]]) + 1 > test266151307() or floor32(mem[_96 + mem[_96]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _96 + ceil32(return_data.size) + floor32(mem[_96 + mem[_96]]) + 1
            mem[_96 + ceil32(return_data.size)] = _102
            require _99 + (32 * _102) + 32 <= return_data.size
            idx = 0
            s = _96 + _99 + 32
            t = _96 + ceil32(return_data.size) + 32
            while idx < _102:
                require mem[s] == mem[s + 31 len 1]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            while idx < 78:
                if idx >= mem[(2 * ceil32(return_data.size)) + 5376]:
                    revert with 'NH{q', 50
                if idx > -3:
                    revert with 'NH{q', 17
                if idx + 2 >= 80:
                    revert with 'NH{q', 50
                mem[(32 * idx + 2) + mem[96]] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 5439 len 1]
                if idx >= mem[_96 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if idx > -3:
                    revert with 'NH{q', 17
                if idx + 2 >= 80:
                    revert with 'NH{q', 50
                mem[(32 * idx + 2) + mem[128]] = mem[(32 * idx) + _96 + ceil32(return_data.size) + 63 len 1]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        mem[5444] = prices.length
        require ext_code.size(sub_53bf0ce3Address)
        call sub_53bf0ce3Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, owner, prices.length
        mem[5376] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[256] = arg1 % 4
        mem[288] = arg1 % 4
        mem[320] = arg1 % 4
        mem[2816] = arg1 % 4
        mem[2848] = arg1 % 4
        mem[2880] = arg1 % 4
        mem[ceil32(return_data.size) + 5376] = 78
        mem[ceil32(return_data.size) + 5408 len 2496] = call.data[calldata.size len 2496]
        mem[ceil32(return_data.size) + 7904] = 0x7299054c00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 7908] = 77
        mem[ceil32(return_data.size) + 7940] = 4
        mem[ceil32(return_data.size) + 7972] = 0
        require ext_code.size(0xd45cdc9f759d94ae7b801fc6f8a7e9bebe7d2145)
        delegate 0xd45cdc9f759d94ae7b801fc6f8a7e9bebe7d2145.random(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 77, 4, 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 7904 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 7904
        require return_data.size >= 32
        _52 = mem[ceil32(return_data.size) + 7904 len 4], 0
        require mem[ceil32(return_data.size) + 7904 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 7904 len 4], 0 + 7935 < ceil32(return_data.size) + return_data.size + 7904
        _54 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 7904 len 4], 0 + 7904]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 7904 len 4], 0 + 7904] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 7904 len 4], 0 + 7904]) + 7905 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 7904 len 4], 0 + 7904]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 7904 len 4], 0 + 7904]) + 7905
        mem[(2 * ceil32(return_data.size)) + 7904] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 7904 len 4], 0 + 7904]
        require _52 + (32 * _54) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _52 + 7936
        t = (2 * ceil32(return_data.size)) + 7936
        while idx < _54:
            require mem[s] == mem[s + 31 len 1]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _91 = mem[64]
        mem[mem[64] + 32 len 2496] = call.data[calldata.size len 2496]
        mem[mem[64] + 2528] = 0x7299054c00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 2532] = 77
        mem[mem[64] + 2564] = 4
        mem[mem[64] + 2596] = 1
        require ext_code.size(0xd45cdc9f759d94ae7b801fc6f8a7e9bebe7d2145)
        delegate 0xd45cdc9f759d94ae7b801fc6f8a7e9bebe7d2145.random(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 77, 4, 1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 2528 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 2528
        require return_data.size >= 32
        _103 = mem[_91 + 2528 len 4], 0
        require mem[_91 + 2528 len 4], 0 <= test266151307()
        require _91 + mem[_91 + 2528 len 4], 0 + 2559 < _91 + return_data.size + 2528
        _104 = mem[_91 + mem[_91 + 2528 len 4], 0 + 2528]
        if mem[_91 + mem[_91 + 2528 len 4], 0 + 2528] > test266151307():
            revert with 'NH{q', 65
        if _91 + ceil32(return_data.size) + floor32(mem[_91 + mem[_91 + 2528 len 4], 0 + 2528]) + 2529 > test266151307() or floor32(mem[_91 + mem[_91 + 2528 len 4], 0 + 2528]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _91 + ceil32(return_data.size) + floor32(mem[_91 + mem[_91 + 2528 len 4], 0 + 2528]) + 2529
        mem[_91 + ceil32(return_data.size) + 2528] = _104
        require _103 + (32 * _104) + 32 <= return_data.size
        idx = 0
        s = _91 + _103 + 2560
        t = _91 + ceil32(return_data.size) + 2560
        while idx < _104:
            require mem[s] == mem[s + 31 len 1]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        while idx < 77:
            if idx >= mem[(2 * ceil32(return_data.size)) + 7904]:
                revert with 'NH{q', 50
            if idx > -4:
                revert with 'NH{q', 17
            if idx + 3 >= 80:
                revert with 'NH{q', 50
            mem[(32 * idx + 3) + mem[96]] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 7967 len 1]
            if idx >= mem[_91 + ceil32(return_data.size) + 2528]:
                revert with 'NH{q', 50
            if idx > -4:
                revert with 'NH{q', 17
            if idx + 3 >= 80:
                revert with 'NH{q', 50
            mem[(32 * idx + 3) + mem[128]] = mem[(32 * idx) + _91 + ceil32(return_data.size) + 2591 len 1]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    uint8(eggType[stor9].field_0) = arg1
    Mask(248, 0, eggType[stor9].field_8) = 0
    if totalSupply > -2:
        revert with 'NH{q', 17
    totalSupply++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if address(ownerOf[stor9]):
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    address(ownerOf[stor9]) = msg.sender
    createrOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, totalSupply);
    mem[0] = totalSupply
    mem[32] = 11
    s = 0
    idx = mem[96]
    while mem[96] + 2560 > idx:
        sub_1d53d016[stor9].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and sub_1d53d016[stor9].field_0
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 80
    s = sha3(totalSupply, 11)
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-78 * None + 3 / 32) + (None * None + 3 / 32)
    while 3 > idx:
        sub_1d53d016[stor9][idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[0] = totalSupply
    mem[32] = 11
    s = 0
    idx = mem[128]
    while mem[128] + 2560 > idx:
        sub_1d53d016[stor9].field_768 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and sub_1d53d016[stor9].field_768
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 80
    s = sha3(totalSupply, 11) + 3
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-78 * None + 3 / 32) + (None * None + 3 / 32) + 3
    while 6 > idx:
        sub_1d53d016[stor9][idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(sub_1d53d016[stor9].field_1536) = mem[191 len 1]
    emit ItemCreated(msg.sender, totalSupply);
    return totalSupply
}



}
