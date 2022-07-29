contract main {




// =====================  Runtime code  =====================


#
#  - sub_3be9d767(?)
#
const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor2;
array of struct stor3;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
uint8 paused;
uint256 stor13;
array of struct stor14;
array of uint256 stor15;
mapping of uint8 stor16;
mapping of struct stor17;

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

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
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

function paused() payable {
    return bool(paused)
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

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= roleMember[arg1].field_0:
        revert with 'NH{q', 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleMember[arg1].field_0
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function pause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721PresetMinterPauserAutoId: must have pauser role to pause'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721PresetMinterPauserAutoId: must have pauser role to unpause'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5a05180f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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
        if not stor7[stor4[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'ERC721FullNoBurn: must have admin role to change URI'
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 'NH{q', 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721PresetMinterPauserAutoId: must have minter role to mint'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor13]:
        revert with 0, 'ERC721: token already minted'
    stor11[stor13] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor13
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)]] = stor13
        stor9[stor13] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[stor13] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[stor13]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[stor13]
        stor11[stor13] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor13] = arg1
    emit Transfer(0, arg1, stor13);
    stor13++
}

function sub_bf804d6a(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Stats: must have admin role'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == bool(cd[((32 * idx) + cd[68] + 36)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        mem[96 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 96] = 16
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = sha3(call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]], 16)
        stor16[call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]][address(cd[((32 * idx) + cd[36] + 36)])] = uint8(bool(cd[((32 * idx) + cd[68] + 36)]))
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
            roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
        if roleMember[arg1][1][address(arg2)].field_0:
            if roleMember[arg1][1][address(arg2)].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
                if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
                roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
            if not roleMember[arg1].field_0:
                revert with 'NH{q', 49
            roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
            roleMember[arg1].field_0--
            roleMember[arg1][1][address(arg2)].field_0 = 0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor9[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
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

function name() payable {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor9[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0, 'ERC721Pausable: token transfer while paused'
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor9[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0, 'ERC721Pausable: token transfer while paused'
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

function sub_66845ead(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    if not stor16[arg1[all]][address(msg.sender)]:
        revert with 0, 'ERC721Stats: caller cannot set stat'
    if not ownerOf[arg2]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    mem[ceil32(ceil32(arg3.length)) + 97 len arg1.length] = arg1[all]
    mem[ceil32(ceil32(arg3.length)) + arg1.length + 97] = 17
    if stor17[arg1[all]][arg2].field_0:
        if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if not stor17[arg1[all]][arg2].field_0:
            emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), arg3.length, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 64) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, sha3(arg1[all]), arg2
        else:
            if stor17[arg1[all]][arg2].field_0 != 1:
                emit 0xfc54c4b4: mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) - 65], sha3(arg1[all]), arg2
            else:
                idx = 0
                s = 0
                while idx < stor17[arg1[all]][arg2].field_1:
                    mem[ceil32(ceil32(arg3.length)) + idx + 193] = stor17[arg1[all]][arg2][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg3.length)) + ceil32(stor17[arg1[all]][arg2].field_1) + 193] = arg3.length
                emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(ceil32(arg3.length)) + 193 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 64) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
    else:
        if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if not stor17[arg1[all]][arg2].field_0:
            emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), arg3.length, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 64) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, sha3(arg1[all]), arg2
        else:
            if stor17[arg1[all]][arg2].field_0 != 1:
                emit 0xfc54c4b4: mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) - 65], sha3(arg1[all]), arg2
            else:
                idx = 0
                s = 0
                while idx < stor17[arg1[all]][arg2].field_1:
                    mem[ceil32(ceil32(arg3.length)) + idx + 193] = stor17[arg1[all]][arg2][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg3.length)) + ceil32(stor17[arg1[all]][arg2].field_1) + 193] = arg3.length
                emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(ceil32(arg3.length)) + 193 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 64) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
    if stor17[arg1[all]][arg2].field_0:
        if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor17[arg1[all]][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor17[arg1[all]][arg2].field_0 = 0
            idx = 0
            while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                stor17[arg1[all]][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor17[arg1[all]][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor17[arg1[all]][arg2].field_0 = 0
            idx = 0
            while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                stor17[arg1[all]][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_282550ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    mem[arg1.length + 128] = 0
    if stor17[arg1[all]][arg2].field_0:
        if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor17[arg1[all]][arg2].field_0:
            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[arg1[all]][arg2].field_1:
                if 31 < stor17[arg1[all]][arg2].field_1:
                    mem[ceil32(ceil32(arg1.length)) + 129] = stor17[arg1[all]][arg2].field_0
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor17[arg1[all]][arg2].field_1 + 97 > idx:
                        mem[idx + 32] = stor17[arg1[all]][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor17[arg1[all]][arg2].field_1)]), 
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor17[arg1[all]][arg2].field_8
        else:
            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor17[arg1[all]][arg2].field_1:
                if 31 < stor17[arg1[all]][arg2].field_1:
                    mem[ceil32(ceil32(arg1.length)) + 129] = stor17[arg1[all]][arg2].field_0
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor17[arg1[all]][arg2].field_1 + 97 > idx:
                        mem[idx + 32] = stor17[arg1[all]][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor17[arg1[all]][arg2].field_1)]), 
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor17[arg1[all]][arg2].field_8
        mem[ceil32(ceil32(arg1.length)) + ceil32(stor17[arg1[all]][arg2].field_1) + 193 len ceil32(stor17[arg1[all]][arg2].field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor17[arg1[all]][arg2].field_1)]
        if ceil32(stor17[arg1[all]][arg2].field_1) > stor17[arg1[all]][arg2].field_1:
            mem[ceil32(ceil32(arg1.length)) + ceil32(stor17[arg1[all]][arg2].field_1) + stor17[arg1[all]][arg2].field_1 + 193] = 0
        return Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor17[arg1[all]][arg2].field_1)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 193 len 2 * ceil32(stor17[arg1[all]][arg2].field_1)]), 
    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
        revert with 'NH{q', 34
    if stor17[arg1[all]][arg2].field_0:
        if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor17[arg1[all]][arg2].field_1:
            if 31 < stor17[arg1[all]][arg2].field_1:
                mem[ceil32(ceil32(arg1.length)) + 129] = stor17[arg1[all]][arg2].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor17[arg1[all]][arg2].field_1 + 97 > idx:
                    mem[idx + 32] = stor17[arg1[all]][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor17[arg1[all]][arg2].field_1)]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor17[arg1[all]][arg2].field_8
    else:
        if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor17[arg1[all]][arg2].field_1:
            if 31 < stor17[arg1[all]][arg2].field_1:
                mem[ceil32(ceil32(arg1.length)) + 129] = stor17[arg1[all]][arg2].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor17[arg1[all]][arg2].field_1 + 97 > idx:
                    mem[idx + 32] = stor17[arg1[all]][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor17[arg1[all]][arg2].field_1)]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor17[arg1[all]][arg2].field_8
    mem[ceil32(ceil32(arg1.length)) + ceil32(stor17[arg1[all]][arg2].field_1) + 193 len ceil32(stor17[arg1[all]][arg2].field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor17[arg1[all]][arg2].field_1)]
    if ceil32(stor17[arg1[all]][arg2].field_1) > stor17[arg1[all]][arg2].field_1:
        mem[ceil32(ceil32(arg1.length)) + ceil32(stor17[arg1[all]][arg2].field_1) + stor17[arg1[all]][arg2].field_1 + 193] = 0
    return Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor17[arg1[all]][arg2].field_1)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 193 len 2 * ceil32(stor17[arg1[all]][arg2].field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 >= stor14.length.field_1:
                    mem[128] = 256 * stor14.length.field_8
                else:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 >= stor14.length.field_1:
                    mem[128] = 256 * stor14.length.field_8
                else:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor14.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
        mem[ceil32(stor14.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1:
            if 31 >= stor14.length.field_1:
                mem[128] = 256 * stor14.length.field_8
            else:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor14.length.field_1:
            if stor14.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
            mem[ceil32(stor14.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) > stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) + 32], 
        if 31 >= stor14.length.field_1:
            mem[128] = 256 * stor14.length.field_8
        else:
            mem[128] = uint256(stor14.field_0)
            idx = 128
            s = 0
            while stor14.length.field_1 + 96 > idx:
                mem[idx + 32] = stor14[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    if stor14.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
        return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
    mem[ceil32(stor14.length.field_1) + 128] = s
    if s:
        mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) > stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + 256] = 0
    return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
}

function sub_c8616da5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    if not stor16[arg1[all]][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Stats: caller cannot set stat'
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 17
    if stor17[arg1[all]][arg2].field_0:
        if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if not stor17[arg1[all]][arg2].field_1:
            if 0 > -arg3 - 1:
                revert with 'NH{q', 17
            mem[128] = arg3
            if not ownerOf[arg2]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            mem[160 len arg1.length] = arg1[all]
            mem[arg1.length + 160] = 17
            mem[160] = 64
            if stor17[arg1[all]][arg2].field_0:
                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor17[arg1[all]][arg2].field_0:
                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, arg3, sha3(arg1[all]), arg2
                else:
                    if stor17[arg1[all]][arg2].field_0 != 1:
                        emit 0xfc54c4b4: mem[160 len -96], sha3(arg1[all]), arg2
                    else:
                        idx = 0
                        s = 0
                        while idx < stor17[arg1[all]][arg2].field_1:
                            mem[idx + 256] = stor17[arg1[all]][arg2][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 256] = 32
                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[256 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
            else:
                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor17[arg1[all]][arg2].field_0:
                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, arg3, sha3(arg1[all]), arg2
                else:
                    if stor17[arg1[all]][arg2].field_0 != 1:
                        emit 0xfc54c4b4: mem[160 len -96], sha3(arg1[all]), arg2
                    else:
                        idx = 0
                        s = 0
                        while idx < stor17[arg1[all]][arg2].field_1:
                            mem[idx + 256] = stor17[arg1[all]][arg2][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 256] = 32
                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[256 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
            mem[160 len arg1.length] = arg1[all]
            mem[arg1.length + 160] = 17
            if stor17[arg1[all]][arg2].field_0:
                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                    revert with 'NH{q', 34
                stor17[arg1[all]][arg2].field_0 = 65
                s = 0
                idx = 128
                while 160 > idx:
                    stor17[arg1[all]][arg2][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 1
                while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                    stor17[arg1[all]][arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                    revert with 'NH{q', 34
                stor17[arg1[all]][arg2].field_0 = 65
                s = 0
                idx = 128
                while 160 > idx:
                    stor17[arg1[all]][arg2][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 1
                while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                    stor17[arg1[all]][arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            mem[96 len arg1.length] = arg1[all]
            mem[arg1.length + 96] = 17
            if stor17[arg1[all]][arg2].field_0:
                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[arg1[all]][arg2].field_0:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor17[arg1[all]][arg2].field_1:
                        require stor17[arg1[all]][arg2].field_1 >= 32
                        require mem[128] == mem[128]
                        if mem[128] > -arg3 - 1:
                            revert with 'NH{q', 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                        if not ownerOf[arg2]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                        if not stor17[arg1[all]][arg2].field_0:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                    emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                    emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                    else:
                        if 31 >= stor17[arg1[all]][arg2].field_1:
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require 256 * stor17[arg1[all]][arg2].field_8 == 256 * stor17[arg1[all]][arg2].field_8
                            if 256 * stor17[arg1[all]][arg2].field_8 > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if not stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            mem[128] = stor17[arg1[all]][arg2].field_0
                            idx = 128
                            s = 0
                            while stor17[arg1[all]][arg2].field_1 + 96 > idx:
                                mem[idx + 32] = stor17[arg1[all]][arg2][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require mem[128] == mem[128]
                            if mem[128] > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if not stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 64]), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                else:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor17[arg1[all]][arg2].field_1:
                        require stor17[arg1[all]][arg2].field_1 >= 32
                        require mem[128] == mem[128]
                        if mem[128] > -arg3 - 1:
                            revert with 'NH{q', 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                        if not ownerOf[arg2]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                        if not stor17[arg1[all]][arg2].field_0:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                    emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                    emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                    else:
                        if 31 >= stor17[arg1[all]][arg2].field_1:
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require 256 * stor17[arg1[all]][arg2].field_8 == 256 * stor17[arg1[all]][arg2].field_8
                            if 256 * stor17[arg1[all]][arg2].field_8 > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if not stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            mem[128] = stor17[arg1[all]][arg2].field_0
                            idx = 128
                            s = 0
                            while stor17[arg1[all]][arg2].field_1 + 96 > idx:
                                mem[idx + 32] = stor17[arg1[all]][arg2][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require mem[128] == mem[128]
                            if mem[128] > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if not stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 64]), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                if stor17[arg1[all]][arg2].field_0:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    stor17[arg1[all]][arg2].field_0 = 65
                    s = 0
                    idx = ceil32(stor17[arg1[all]][arg2].field_1) + 160
                    while ceil32(stor17[arg1[all]][arg2].field_1) + 192 > idx:
                        stor17[arg1[all]][arg2][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 1
                    while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                        stor17[arg1[all]][arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    stor17[arg1[all]][arg2].field_0 = 65
                    s = 0
                    idx = ceil32(stor17[arg1[all]][arg2].field_1) + 160
                    while ceil32(stor17[arg1[all]][arg2].field_1) + 192 > idx:
                        stor17[arg1[all]][arg2][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 1
                    while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                        stor17[arg1[all]][arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[arg1[all]][arg2].field_0:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor17[arg1[all]][arg2].field_1:
                        require stor17[arg1[all]][arg2].field_1 >= 32
                        require mem[128] == mem[128]
                        if mem[128] > -arg3 - 1:
                            revert with 'NH{q', 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                        if not ownerOf[arg2]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                        if stor17[arg1[all]][arg2].field_0:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                    emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                    emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                    else:
                        if 31 >= stor17[arg1[all]][arg2].field_1:
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require 256 * stor17[arg1[all]][arg2].field_8 == 256 * stor17[arg1[all]][arg2].field_8
                            if 256 * stor17[arg1[all]][arg2].field_8 > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            mem[128] = stor17[arg1[all]][arg2].field_0
                            idx = 128
                            s = 0
                            while stor17[arg1[all]][arg2].field_1 + 96 > idx:
                                mem[idx + 32] = stor17[arg1[all]][arg2][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require mem[128] == mem[128]
                            if mem[128] > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 64]), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                else:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor17[arg1[all]][arg2].field_1:
                        require stor17[arg1[all]][arg2].field_1 >= 32
                        require mem[128] == mem[128]
                        if mem[128] > -arg3 - 1:
                            revert with 'NH{q', 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                        if not ownerOf[arg2]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                        if stor17[arg1[all]][arg2].field_0:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                    emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                    emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                    else:
                        if 31 >= stor17[arg1[all]][arg2].field_1:
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require 256 * stor17[arg1[all]][arg2].field_8 == 256 * stor17[arg1[all]][arg2].field_8
                            if 256 * stor17[arg1[all]][arg2].field_8 > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            mem[128] = stor17[arg1[all]][arg2].field_0
                            idx = 128
                            s = 0
                            while stor17[arg1[all]][arg2].field_1 + 96 > idx:
                                mem[idx + 32] = stor17[arg1[all]][arg2][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require mem[128] == mem[128]
                            if mem[128] > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 64]), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                if stor17[arg1[all]][arg2].field_0:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    stor17[arg1[all]][arg2].field_0 = 65
                    s = 0
                    idx = ceil32(stor17[arg1[all]][arg2].field_1) + 160
                    while ceil32(stor17[arg1[all]][arg2].field_1) + 192 > idx:
                        stor17[arg1[all]][arg2][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 1
                    while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                        stor17[arg1[all]][arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    stor17[arg1[all]][arg2].field_0 = 65
                    s = 0
                    idx = ceil32(stor17[arg1[all]][arg2].field_1) + 160
                    while ceil32(stor17[arg1[all]][arg2].field_1) + 192 > idx:
                        stor17[arg1[all]][arg2][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 1
                    while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                        stor17[arg1[all]][arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if not stor17[arg1[all]][arg2].field_1:
            if 0 > -arg3 - 1:
                revert with 'NH{q', 17
            mem[128] = arg3
            if not ownerOf[arg2]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            mem[160 len arg1.length] = arg1[all]
            mem[arg1.length + 160] = 17
            mem[160] = 64
            if stor17[arg1[all]][arg2].field_0:
                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor17[arg1[all]][arg2].field_0:
                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, arg3, sha3(arg1[all]), arg2
                else:
                    if stor17[arg1[all]][arg2].field_0 != 1:
                        emit 0xfc54c4b4: mem[160 len -96], sha3(arg1[all]), arg2
                    else:
                        idx = 0
                        s = 0
                        while idx < stor17[arg1[all]][arg2].field_1:
                            mem[idx + 256] = stor17[arg1[all]][arg2][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 256] = 32
                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[256 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
            else:
                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor17[arg1[all]][arg2].field_0:
                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, arg3, sha3(arg1[all]), arg2
                else:
                    if stor17[arg1[all]][arg2].field_0 != 1:
                        emit 0xfc54c4b4: mem[160 len -96], sha3(arg1[all]), arg2
                    else:
                        idx = 0
                        s = 0
                        while idx < stor17[arg1[all]][arg2].field_1:
                            mem[idx + 256] = stor17[arg1[all]][arg2][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 256] = 32
                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[256 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
            mem[160 len arg1.length] = arg1[all]
            mem[arg1.length + 160] = 17
            if stor17[arg1[all]][arg2].field_0:
                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                    revert with 'NH{q', 34
                stor17[arg1[all]][arg2].field_0 = 65
                s = 0
                idx = 128
                while 160 > idx:
                    stor17[arg1[all]][arg2][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 1
                while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                    stor17[arg1[all]][arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                    revert with 'NH{q', 34
                stor17[arg1[all]][arg2].field_0 = 65
                s = 0
                idx = 128
                while 160 > idx:
                    stor17[arg1[all]][arg2][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 1
                while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                    stor17[arg1[all]][arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            mem[96 len arg1.length] = arg1[all]
            mem[arg1.length + 96] = 17
            if stor17[arg1[all]][arg2].field_0:
                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[arg1[all]][arg2].field_0:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor17[arg1[all]][arg2].field_1:
                        require stor17[arg1[all]][arg2].field_1 >= 32
                        require mem[128] == mem[128]
                        if mem[128] > -arg3 - 1:
                            revert with 'NH{q', 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                        if not ownerOf[arg2]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                        if not stor17[arg1[all]][arg2].field_0:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                    emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                    emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                    else:
                        if 31 >= stor17[arg1[all]][arg2].field_1:
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require 256 * stor17[arg1[all]][arg2].field_8 == 256 * stor17[arg1[all]][arg2].field_8
                            if 256 * stor17[arg1[all]][arg2].field_8 > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if not stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            mem[128] = stor17[arg1[all]][arg2].field_0
                            idx = 128
                            s = 0
                            while stor17[arg1[all]][arg2].field_1 + 96 > idx:
                                mem[idx + 32] = stor17[arg1[all]][arg2][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require mem[128] == mem[128]
                            if mem[128] > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if not stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 64]), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                else:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor17[arg1[all]][arg2].field_1:
                        require stor17[arg1[all]][arg2].field_1 >= 32
                        require mem[128] == mem[128]
                        if mem[128] > -arg3 - 1:
                            revert with 'NH{q', 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                        if not ownerOf[arg2]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                        if not stor17[arg1[all]][arg2].field_0:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                    emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                    emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                    else:
                        if 31 >= stor17[arg1[all]][arg2].field_1:
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require 256 * stor17[arg1[all]][arg2].field_8 == 256 * stor17[arg1[all]][arg2].field_8
                            if 256 * stor17[arg1[all]][arg2].field_8 > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if not stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            mem[128] = stor17[arg1[all]][arg2].field_0
                            idx = 128
                            s = 0
                            while stor17[arg1[all]][arg2].field_1 + 96 > idx:
                                mem[idx + 32] = stor17[arg1[all]][arg2][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require mem[128] == mem[128]
                            if mem[128] > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if not stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 64]), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                if stor17[arg1[all]][arg2].field_0:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    stor17[arg1[all]][arg2].field_0 = 65
                    s = 0
                    idx = ceil32(stor17[arg1[all]][arg2].field_1) + 160
                    while ceil32(stor17[arg1[all]][arg2].field_1) + 192 > idx:
                        stor17[arg1[all]][arg2][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 1
                    while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                        stor17[arg1[all]][arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    stor17[arg1[all]][arg2].field_0 = 65
                    s = 0
                    idx = ceil32(stor17[arg1[all]][arg2].field_1) + 160
                    while ceil32(stor17[arg1[all]][arg2].field_1) + 192 > idx:
                        stor17[arg1[all]][arg2][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 1
                    while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                        stor17[arg1[all]][arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[arg1[all]][arg2].field_0:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor17[arg1[all]][arg2].field_1:
                        require stor17[arg1[all]][arg2].field_1 >= 32
                        require mem[128] == mem[128]
                        if mem[128] > -arg3 - 1:
                            revert with 'NH{q', 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                        if not ownerOf[arg2]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                        if stor17[arg1[all]][arg2].field_0:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                    emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                    emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                    else:
                        if 31 >= stor17[arg1[all]][arg2].field_1:
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require 256 * stor17[arg1[all]][arg2].field_8 == 256 * stor17[arg1[all]][arg2].field_8
                            if 256 * stor17[arg1[all]][arg2].field_8 > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            mem[128] = stor17[arg1[all]][arg2].field_0
                            idx = 128
                            s = 0
                            while stor17[arg1[all]][arg2].field_1 + 96 > idx:
                                mem[idx + 32] = stor17[arg1[all]][arg2][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require mem[128] == mem[128]
                            if mem[128] > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 64]), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                else:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor17[arg1[all]][arg2].field_1:
                        require stor17[arg1[all]][arg2].field_1 >= 32
                        require mem[128] == mem[128]
                        if mem[128] > -arg3 - 1:
                            revert with 'NH{q', 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                        if not ownerOf[arg2]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                        if stor17[arg1[all]][arg2].field_0:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                    emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                revert with 'NH{q', 34
                            if not stor17[arg1[all]][arg2].field_0:
                                emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 != 1:
                                    emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor17[arg1[all]][arg2].field_1:
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                    mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                    emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                    else:
                        if 31 >= stor17[arg1[all]][arg2].field_1:
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require 256 * stor17[arg1[all]][arg2].field_8 == 256 * stor17[arg1[all]][arg2].field_8
                            if 256 * stor17[arg1[all]][arg2].field_8 > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, (256 * stor17[arg1[all]][arg2].field_8) + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = (256 * stor17[arg1[all]][arg2].field_8) + arg3
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], (256 * stor17[arg1[all]][arg2].field_8) + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                        else:
                            mem[128] = stor17[arg1[all]][arg2].field_0
                            idx = 128
                            s = 0
                            while stor17[arg1[all]][arg2].field_1 + 96 > idx:
                                mem[idx + 32] = stor17[arg1[all]][arg2][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require stor17[arg1[all]][arg2].field_1 >= 32
                            require mem[128] == mem[128]
                            if mem[128] > -arg3 - 1:
                                revert with 'NH{q', 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 160] = mem[128] + arg3
                            if not ownerOf[arg2]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192] = 64
                            if stor17[arg1[all]][arg2].field_0:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, 2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[ceil32(stor17[arg1[all]][arg2].field_1) + ceil32(stor17[arg1[all]][arg2].field_1) + 288] = 32
                                        emit 0xfc54c4b4: Array(len=2 * Mask(256, -1, stor17[arg1[all]][arg2].field_1), data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 32], mem[128] + arg3), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                            else:
                                if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                                    revert with 'NH{q', 34
                                if not stor17[arg1[all]][arg2].field_0:
                                    emit 0xfc54c4b4: 64, 128, stor17[arg1[all]][arg2].field_0, Mask(248, 8, stor17[arg1[all]][arg2].field_0), 32, mem[128] + arg3, sha3(arg1[all]), arg2
                                else:
                                    if stor17[arg1[all]][arg2].field_0 != 1:
                                        emit 0xfc54c4b4: mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len -ceil32(stor17[arg1[all]][arg2].field_1) - 128], sha3(arg1[all]), arg2
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < stor17[arg1[all]][arg2].field_1:
                                            mem[ceil32(stor17[arg1[all]][arg2].field_1) + idx + 288] = stor17[arg1[all]][arg2][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 288] = 32
                                        mem[(2 * ceil32(stor17[arg1[all]][arg2].field_1)) + 320] = mem[128] + arg3
                                        emit 0xfc54c4b4: Array(len=stor17[arg1[all]][arg2].field_0, data=mem[ceil32(stor17[arg1[all]][arg2].field_1) + 288 len ceil32(stor17[arg1[all]][arg2].field_1) + 64]), ceil32(stor17[arg1[all]][arg2].field_1) + 96, sha3(arg1[all]), arg2
                mem[ceil32(stor17[arg1[all]][arg2].field_1) + 192 len arg1.length] = arg1[all]
                mem[ceil32(stor17[arg1[all]][arg2].field_1) + arg1.length + 192] = 17
                if stor17[arg1[all]][arg2].field_0:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    stor17[arg1[all]][arg2].field_0 = 65
                    s = 0
                    idx = ceil32(stor17[arg1[all]][arg2].field_1) + 160
                    while ceil32(stor17[arg1[all]][arg2].field_1) + 192 > idx:
                        stor17[arg1[all]][arg2][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 1
                    while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                        stor17[arg1[all]][arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if stor17[arg1[all]][arg2].field_0 == stor17[arg1[all]][arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    stor17[arg1[all]][arg2].field_0 = 65
                    s = 0
                    idx = ceil32(stor17[arg1[all]][arg2].field_1) + 160
                    while ceil32(stor17[arg1[all]][arg2].field_1) + 192 > idx:
                        stor17[arg1[all]][arg2][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 1
                    while stor17[arg1[all]][arg2].field_1 + 31 / 32 > idx:
                        stor17[arg1[all]][arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}



}
