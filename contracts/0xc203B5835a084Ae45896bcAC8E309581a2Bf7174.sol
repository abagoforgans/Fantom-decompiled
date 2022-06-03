contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor151;
array of struct stor152;
array of struct stor153;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor157;
mapping of address creator;
mapping of uint8 stor159;
uint256 stor160;
uint256 stor161;
address stor162;
mapping of struct stor163;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
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

function owner() payable {
    return owner
}

function getCreator(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return creator[arg1]
}

function sub_e55e29ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor159[address(arg1)])
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor157[address(arg1)][address(arg2)])
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

function sub_023f7c9e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor161 = arg1
}

function changeFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor160 = arg1
}

function sub_99512ada(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor162 = address(arg1)
}

function addApprovedArtist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor159[address(arg1)] = 1
}

function removeApprovedArtist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor159[address(arg1)] = 0
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and stor160 > -1 / arg2:
        revert with 'NH{q', 17
    if not stor161:
        revert with 'NH{q', 18
    return creator[arg1], arg2 * stor160 / stor161
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor157[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x2a55205a00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_ad406016(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor162)
    staticcall stor162.0x126ff871 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'InviteHandler: doesnt have an invite'
    stor159[address(arg1)] = 1
    require ext_code.size(stor162)
    call stor162.0xd510bc45 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        if not stor157[stor154[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor157[stor154[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor154[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor154[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
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
            if not stor157[stor154[arg3]][address(msg.sender)]:
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

function mint(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor159[address(msg.sender)]:
        revert with 0, 'ERC721Upgradeable: must be approved to mint'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor151]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor151] = arg1
    creator[stor151] = arg1
    emit Transfer(0, arg1, stor151);
    if not ownerOf[stor151]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor163[stor151].field_0:
        if stor163[stor151].field_0 == stor163[stor151].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor163[stor151][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor163[stor151].field_0 = 0
            idx = 0
            while stor163[stor151].field_1 + 31 / 32 > idx:
                stor163[stor151][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor163[stor151].field_0 == stor163[stor151].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor163[stor151][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor163[stor151].field_0 = 0
            idx = 0
            while stor163[stor151].field_1 + 31 / 32 > idx:
                stor163[stor151][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor151++
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
            if not stor157[stor154[arg3]][address(msg.sender)]:
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

function initialize() payable {
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if not uint8(stor0.field_8):
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0, 'Initializable: contract is already initialized'
                    if not uint8(stor0.field_8):
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if not uint8(stor0.field_8):
                            Mask(248, 0, stor0.field_8) = 1
                            uint8(stor0.field_0) = 1
    if bool(stor152.length):
        if bool(stor152.length) == stor152.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor152.length) = 0
        stor152.length.field_1 = 23
        stor152.length.field_8 = 'Ovre Non-Fungible Token' / 256
        idx = 0
        while stor152.length.field_1 + 31 / 32 > idx:
            stor152[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor152.length) == stor152.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor152.length) = 0
        stor152.length.field_1 = 23
        stor152.length.field_8 = 'Ovre Non-Fungible Token' / 256
        idx = 0
        while stor152.length.field_1 + 31 / 32 > idx:
            stor152[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor153.length):
        if bool(stor153.length) == stor153.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor153.length) = 0
        stor153.length.field_1 = 4
        stor153.length.field_8 = 'OVRE' / 256
        idx = 0
        while stor153.length.field_1 + 31 / 32 > idx:
            stor153[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor153.length) == stor153.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor153.length) = 0
        stor153.length.field_1 = 4
        stor153.length.field_8 = 'OVRE' / 256
        idx = 0
        while stor153.length.field_1 + 31 / 32 > idx:
            stor153[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor160 = 5
    stor161 = 100
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        Mask(248, 0, stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            Mask(248, 0, stor0.field_8) = 0
            Mask(248, 0, stor0.field_8) = 0
            Mask(248, 0, stor0.field_8) = 0
}

function name() payable {
    if bool(stor152.length):
        if bool(stor152.length) == stor152.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor152.length):
            if bool(stor152.length) == stor152.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor152.length.field_1:
                if 31 < stor152.length.field_1:
                    mem[128] = uint256(stor152.field_0)
                    idx = 128
                    s = 0
                    while stor152.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor152[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor152.length.field_1), data=mem[128 len ceil32(stor152.length.field_1)])
                mem[128] = 256 * stor152.length.field_8
        else:
            if bool(stor152.length) == stor152.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor152.length.field_1:
                if 31 < stor152.length.field_1:
                    mem[128] = uint256(stor152.field_0)
                    idx = 128
                    s = 0
                    while stor152.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor152[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor152.length.field_1), data=mem[128 len ceil32(stor152.length.field_1)])
                mem[128] = 256 * stor152.length.field_8
        mem[ceil32(stor152.length.field_1) + 192 len ceil32(stor152.length.field_1)] = mem[128 len ceil32(stor152.length.field_1)]
        if ceil32(stor152.length.field_1) > stor152.length.field_1:
            mem[ceil32(stor152.length.field_1) + stor152.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor152.length.field_1), data=mem[128 len ceil32(stor152.length.field_1)], mem[(2 * ceil32(stor152.length.field_1)) + 192 len 2 * ceil32(stor152.length.field_1)]), 
    if bool(stor152.length) == stor152.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor152.length):
        if bool(stor152.length) == stor152.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor152.length.field_1:
            if 31 < stor152.length.field_1:
                mem[128] = uint256(stor152.field_0)
                idx = 128
                s = 0
                while stor152.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor152[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1)])
            mem[128] = 256 * stor152.length.field_8
    else:
        if bool(stor152.length) == stor152.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor152.length.field_1:
            if 31 < stor152.length.field_1:
                mem[128] = uint256(stor152.field_0)
                idx = 128
                s = 0
                while stor152.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor152[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1)])
            mem[128] = 256 * stor152.length.field_8
    mem[ceil32(stor152.length.field_1) + 192 len ceil32(stor152.length.field_1)] = mem[128 len ceil32(stor152.length.field_1)]
    if ceil32(stor152.length.field_1) > stor152.length.field_1:
        mem[ceil32(stor152.length.field_1) + stor152.length.field_1 + 192] = 0
    return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1)], mem[(2 * ceil32(stor152.length.field_1)) + 192 len 2 * ceil32(stor152.length.field_1)]), 
}

function symbol() payable {
    if bool(stor153.length):
        if bool(stor153.length) == stor153.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor153.length):
            if bool(stor153.length) == stor153.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor153.length.field_1:
                if 31 < stor153.length.field_1:
                    mem[128] = uint256(stor153.field_0)
                    idx = 128
                    s = 0
                    while stor153.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor153[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor153.length.field_1), data=mem[128 len ceil32(stor153.length.field_1)])
                mem[128] = 256 * stor153.length.field_8
        else:
            if bool(stor153.length) == stor153.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor153.length.field_1:
                if 31 < stor153.length.field_1:
                    mem[128] = uint256(stor153.field_0)
                    idx = 128
                    s = 0
                    while stor153.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor153[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor153.length.field_1), data=mem[128 len ceil32(stor153.length.field_1)])
                mem[128] = 256 * stor153.length.field_8
        mem[ceil32(stor153.length.field_1) + 192 len ceil32(stor153.length.field_1)] = mem[128 len ceil32(stor153.length.field_1)]
        if ceil32(stor153.length.field_1) > stor153.length.field_1:
            mem[ceil32(stor153.length.field_1) + stor153.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor153.length.field_1), data=mem[128 len ceil32(stor153.length.field_1)], mem[(2 * ceil32(stor153.length.field_1)) + 192 len 2 * ceil32(stor153.length.field_1)]), 
    if bool(stor153.length) == stor153.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor153.length):
        if bool(stor153.length) == stor153.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor153.length.field_1:
            if 31 < stor153.length.field_1:
                mem[128] = uint256(stor153.field_0)
                idx = 128
                s = 0
                while stor153.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor153[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor153.length % 128, data=mem[128 len ceil32(stor153.length.field_1)])
            mem[128] = 256 * stor153.length.field_8
    else:
        if bool(stor153.length) == stor153.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor153.length.field_1:
            if 31 < stor153.length.field_1:
                mem[128] = uint256(stor153.field_0)
                idx = 128
                s = 0
                while stor153.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor153[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor153.length % 128, data=mem[128 len ceil32(stor153.length.field_1)])
            mem[128] = 256 * stor153.length.field_8
    mem[ceil32(stor153.length.field_1) + 192 len ceil32(stor153.length.field_1)] = mem[128 len ceil32(stor153.length.field_1)]
    if ceil32(stor153.length.field_1) > stor153.length.field_1:
        mem[ceil32(stor153.length.field_1) + stor153.length.field_1 + 192] = 0
    return Array(len=stor153.length % 128, data=mem[128 len ceil32(stor153.length.field_1)], mem[(2 * ceil32(stor153.length.field_1)) + 192 len 2 * ceil32(stor153.length.field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor163[arg1].field_0:
        if stor163[arg1].field_0 == stor163[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor163[arg1].field_0:
            if stor163[arg1].field_0 == stor163[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor163[arg1].field_1:
                if 31 < stor163[arg1].field_1:
                    mem[128] = stor163[arg1].field_0
                    idx = 128
                    s = 0
                    while stor163[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor163[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor163[arg1].field_1), data=mem[128 len ceil32(stor163[arg1].field_1)])
                mem[128] = 256 * stor163[arg1].field_8
        else:
            if stor163[arg1].field_0 == stor163[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor163[arg1].field_1:
                if 31 < stor163[arg1].field_1:
                    mem[128] = stor163[arg1].field_0
                    idx = 128
                    s = 0
                    while stor163[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor163[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor163[arg1].field_1), data=mem[128 len ceil32(stor163[arg1].field_1)])
                mem[128] = 256 * stor163[arg1].field_8
        mem[ceil32(stor163[arg1].field_1) + 224 len ceil32(stor163[arg1].field_1)] = mem[128 len ceil32(stor163[arg1].field_1)]
        if ceil32(stor163[arg1].field_1) > stor163[arg1].field_1:
            mem[ceil32(stor163[arg1].field_1) + stor163[arg1].field_1 + 224] = 0
        return Array(len=2 * Mask(256, -1, stor163[arg1].field_1), data=mem[128 len ceil32(stor163[arg1].field_1)], mem[(2 * ceil32(stor163[arg1].field_1)) + 224 len 2 * ceil32(stor163[arg1].field_1)]), 
    if stor163[arg1].field_0 == stor163[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor163[arg1].field_0:
        if stor163[arg1].field_0 == stor163[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor163[arg1].field_1:
            if 31 < stor163[arg1].field_1:
                mem[128] = stor163[arg1].field_0
                idx = 128
                s = 0
                while stor163[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor163[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor163[arg1].field_0, data=mem[128 len ceil32(stor163[arg1].field_1)])
            mem[128] = 256 * stor163[arg1].field_8
    else:
        if stor163[arg1].field_0 == stor163[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor163[arg1].field_1:
            if 31 < stor163[arg1].field_1:
                mem[128] = stor163[arg1].field_0
                idx = 128
                s = 0
                while stor163[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor163[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor163[arg1].field_0, data=mem[128 len ceil32(stor163[arg1].field_1)])
            mem[128] = 256 * stor163[arg1].field_8
    mem[ceil32(stor163[arg1].field_1) + 224 len ceil32(stor163[arg1].field_1)] = mem[128 len ceil32(stor163[arg1].field_1)]
    if ceil32(stor163[arg1].field_1) > stor163[arg1].field_1:
        mem[ceil32(stor163[arg1].field_1) + stor163[arg1].field_1 + 224] = 0
    return Array(len=stor163[arg1].field_0, data=mem[128 len ceil32(stor163[arg1].field_1)], mem[(2 * ceil32(stor163[arg1].field_1)) + 224 len 2 * ceil32(stor163[arg1].field_1)]), 
}



}
