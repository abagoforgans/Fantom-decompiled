contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - tokenURI(uint256 arg1)
#
const DEFAULT_ADMIN_ROLE = 0


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
mapping of struct stor12;
uint256 _tokenIdTracker;
array of uint256 stor14;
uint256 price;
uint256 stor16;
address stor17;
address stor18;
address stor19;
uint256 reflectionBalance;
uint256 totalDividend;
mapping of uint256 lastDividendAt;
mapping of address minter;
uint8 stor24;
uint8 stor24; offset 8
uint256 stor24; offset 8

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
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

function reflectionBalance() {
    return reflectionBalance
}

function totalDividend() {
    return totalDividend
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

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function _tokenIdTracker() {
    return _tokenIdTracker
}

function price() {
    return price
}

function minter(uint256 arg1) {
    require calldata.size - 4 >= 32
    return minter[arg1]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lastDividendAt[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalDividend < lastDividendAt[arg1]:
        revert with 0, 17
    return (totalDividend - lastDividendAt[arg1])
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor7[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function reflectToOwners() payable {
    if reflectionBalance > !msg.value:
        revert with 0, 17
    reflectionBalance += msg.value
    if not tokenByIndex.length:
        revert with 0, 18
    if totalDividend > !(msg.value / tokenByIndex.length):
        revert with 0, 17
    totalDividend += msg.value / tokenByIndex.length
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe46756e6b7954696765724d6f623a206d75737420686176652061646d696e20,
                    'ole to change price' << 104
    price = arg1
}

function setAutoClaim(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0xfe46756e6b7954696765724d6f623a206d75737420686176652061646d696e20,
                    'ole to set auto claim' << 88
    Mask(248, 0, stor24.field_8) = Mask(248, 0, arg1)
}

function setMint(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe46756e6b7954696765724d6f623a206d75737420686176652061646d696e20,
                    0x6f6c6520746f20736574206d696e740000000000000000000000000000000000
    uint8(stor24.field_0) = uint8(arg1)
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
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
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function claimReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FunkyTigerMob: Only owner can claim rewards'
    if totalDividend < lastDividendAt[arg1]:
        revert with 0, 17
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    call ownerOf[arg1] with:
       value totalDividend - lastDividendAt[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    lastDividendAt[arg1] = totalDividend
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 32, 54, 0xfe46756e6b7954696765724d6f623a206d75737420686176652061646d696e20, 'ole to change base URI' << 80
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while (uint255(stor14.length) * 0.5) + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
        if 1 > !(roleMember[arg1][1][address(arg2)].field_0 - 1):
            revert with 0, 17
        roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
        if 1 > !(roleMember[arg1][1][address(arg2)].field_0 - 1):
            revert with 0, 17
        roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 32, 55, 0xfe46756e6b7954696765724d6f623a206d75737420686176652061646d696e20, 'ole to change token URI'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor12[arg1].field_0:
        if stor12[arg1].field_0 == uint255(stor12[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor12[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[arg1].field_0 = 0
            idx = 0
            while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor12[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor12[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[arg1].field_0 = 0
            idx = 0
            while stor12[arg1].field_1 + 31 / 32 > idx:
                stor12[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function getReflectionBalances() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 22
        if totalDividend < lastDividendAt[stor8[address(msg.sender)][idx]]:
            revert with 0, 17
        if s > !(totalDividend - lastDividendAt[stor8[address(msg.sender)][idx]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[stor8[address(msg.sender)][idx]]
        continue 
    return (s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)])
}

function name() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function claimRewards() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        if totalDividend < lastDividendAt[stor8[address(msg.sender)][idx]]:
            revert with 0, 17
        if s > !(totalDividend - lastDividendAt[stor8[address(msg.sender)][idx]]):
            revert with 0, 17
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 22
        lastDividendAt[stor8[address(msg.sender)][idx]] = totalDividend
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[stor8[address(msg.sender)][idx]]
        continue 
    call msg.sender with:
       value s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if tokenByIndex.length > arg3:
        if 1 == bool(uint8(stor24.field_8)):
            if totalDividend < lastDividendAt[arg3]:
                revert with 0, 17
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            call ownerOf[arg3] with:
               value totalDividend - lastDividendAt[arg3] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            lastDividendAt[arg3] = totalDividend
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor9[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if tokenByIndex.length > arg3:
        if 1 == bool(uint8(stor24.field_8)):
            if totalDividend < lastDividendAt[arg3]:
                revert with 0, 17
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            call ownerOf[arg3] with:
               value totalDividend - lastDividendAt[arg3] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            lastDividendAt[arg3] = totalDividend
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor9[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
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

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(uint8(stor24.field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FunkyTigerMob: public minting is closed'
    require ext_code.size(stor19)
    staticcall stor19.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if price > 0x303030303030303030303030303030303030303030303030303030303030303:
            revert with 0, 17
        if 85 * price / 100 and arg1 > -1 / 85 * price / 100:
            revert with 0, 17
        if 85 * price / 100 * arg1 != msg.value:
            revert with 0, 'FunkyTigerMob: must send correct price with discount'
    else:
        require ext_code.size(stor18)
        staticcall stor18.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            if price and arg1 > -1 / price:
                revert with 0, 17
            if price * arg1 != msg.value:
                revert with 0, 'FunkyTigerMob: must send correct price to mint'
        else:
            if price > 0x303030303030303030303030303030303030303030303030303030303030303:
                revert with 0, 17
            if 85 * price / 100 and arg1 > -1 / 85 * price / 100:
                revert with 0, 17
            if 85 * price / 100 * arg1 != msg.value:
                revert with 0, 'FunkyTigerMob: must send correct price with discount'
    if _tokenIdTracker > !arg1:
        revert with 0, 17
    if _tokenIdTracker + arg1 > stor16:
        revert with 0, 'FunkyTigerMob: not enough funky tigers left to mint amount'
    idx = 0
    while idx < arg1:
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor13]:
            revert with 0, 'ERC721: token already minted'
        if tokenByIndex.length > _tokenIdTracker:
            if 1 == bool(uint8(stor24.field_8)):
                if totalDividend < lastDividendAt[stor13]:
                    revert with 0, 17
                if not ownerOf[stor13]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                call ownerOf[stor13] with:
                   value totalDividend - lastDividendAt[stor13] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                lastDividendAt[stor13] = totalDividend
        stor11[stor13] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = _tokenIdTracker
        if msg.sender:
            if msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = _tokenIdTracker
                stor9[stor13] = balanceOf[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor11[stor13] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor11[stor13]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[stor13]
            stor11[stor13] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        ownerOf[stor13] = msg.sender
        emit Transfer(0, msg.sender, _tokenIdTracker);
        mem[0] = _tokenIdTracker
        mem[32] = 22
        lastDividendAt[stor13] = totalDividend
        _tokenIdTracker++
        if not arg1:
            revert with 0, 18
        if reflectionBalance > !(msg.value / arg1 / 10):
            revert with 0, 17
        reflectionBalance += msg.value / arg1 / 10
        if not tokenByIndex.length:
            revert with 0, 18
        if totalDividend > !(msg.value / arg1 / 10 / tokenByIndex.length):
            revert with 0, 17
        totalDividend += msg.value / arg1 / 10 / tokenByIndex.length
        if msg.value / arg1 < msg.value / arg1 / 10:
            revert with 0, 17
        call stor17 with:
           value (msg.value / arg1) - (msg.value / arg1 / 10) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
