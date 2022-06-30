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
uint8 hasSaleStarted; offset 160
uint128 stor17; offset 160
address stor17;
uint256 reflectionBalance;
uint256 totalDividend;
mapping of uint256 stor20;
mapping of address creator;
array of uint256 sub_9e808ee7;
array of struct minterOf;
mapping of uint256 stor24;
mapping of struct sub_f8b08712;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_139b4e69(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return creator[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function hasSaleStarted() {
    return bool(hasSaleStarted)
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function creator(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return creator[arg1]
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

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= roleMember[arg1].field_0:
        revert with 'NH{q', 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function _tokenIdTracker() {
    return _tokenIdTracker
}

function sub_9e808ee7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if arg2 >= sub_9e808ee7[address(arg1)]:
        revert with 'NH{q', 50
    return sub_9e808ee7[address(arg1)][arg2]
}

function minterOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor24[arg1]:
        revert with 0, 
                    32,
                    42,
                    0xfe4552433732313a206d696e74657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[170 len 22] >> 80,
                    0
    if stor24[arg1] < 1:
        revert with 'NH{q', 17
    if stor24[arg1] - 1 >= minterOf.length:
        revert with 'NH{q', 50
    return minterOf[stor24[arg1] - 1].field_256
}

function price() {
    return price
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleMember[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function sub_f8b08712(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f8b08712[arg1].field_0, sub_f8b08712[arg1].field_256
}

function _fallback() payable {
    revert
}

function currentRate() {
    if not tokenByIndex.length:
        return 0
    if not tokenByIndex.length:
        revert with 'NH{q', 18
    return (reflectionBalance / tokenByIndex.length)
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalDividend < stor20[arg1]:
        revert with 'NH{q', 17
    return (totalDividend - stor20[arg1])
}

function pauseDrop() {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FantomFurries: must be admin to pause mint'
    Mask(96, 0, stor17.field_160) = 0
}

function startDrop() {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FantomFurries: must be admin to start mint'
    Mask(96, 0, stor17.field_160) = 1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FantomFurries: must have admin role to change price'
    price = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_b9e3bc54(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FantomFurries: must be admin to pause mint'
    sub_f8b08712[address(arg1)].field_0 = address(arg1)
    sub_f8b08712[address(arg1)].field_256 = arg2
}

function supportsInterface(bytes4 arg1) {
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

function approve(address arg1, uint256 arg2) {
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

function sub_b9ef4109(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_9e808ee7[address(arg1)]:
        return ''
    if sub_9e808ee7[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if sub_9e808ee7[address(arg1)]:
        mem[128 len 32 * sub_9e808ee7[address(arg1)]] = call.data[calldata.size len 32 * sub_9e808ee7[address(arg1)]]
    idx = 0
    while idx < sub_9e808ee7[address(arg1)]:
        mem[32] = 22
        if idx >= sub_9e808ee7[address(arg1)]:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 22)
        if idx >= sub_9e808ee7[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = sub_9e808ee7[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=sub_9e808ee7[address(arg1)], data=mem[128 len 32 * sub_9e808ee7[address(arg1)]])
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 8)
        if idx >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function claimReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor24[arg1]:
        revert with 0, 
                    32,
                    42,
                    0xfe4552433732313a206d696e74657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[170 len 22] >> 80,
                    0
    if stor24[arg1] < 1:
        revert with 'NH{q', 17
    if stor24[arg1] - 1 >= minterOf.length:
        revert with 'NH{q', 50
    if minterOf[stor24[arg1] - 1].field_256 != msg.sender:
        revert with 0, 'FantomFurries: Only owner can claim rewards'
    if totalDividend < stor20[arg1]:
        revert with 'NH{q', 17
    if not stor24[arg1]:
        revert with 0, 
                    32,
                    42,
                    0xfe4552433732313a206d696e74657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[266 len 22] >> 80,
                    0
    if stor24[arg1] < 1:
        revert with 'NH{q', 17
    if stor24[arg1] - 1 >= minterOf.length:
        revert with 'NH{q', 50
    call minterOf[stor24[arg1] - 1].field_256 with:
       value totalDividend - stor20[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor20[arg1] = totalDividend
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'FantomFurries: must have admin role to change base URI'
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
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

function setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'FantomFurries: must have admin role to change token URI'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor12[arg1].field_0:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor12[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[arg1].field_0 = 0
            idx = 0
            while stor12[arg1].field_1 + 31 / 32 > idx:
                stor12[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 'NH{q', 34
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

function grantRole(bytes32 arg1, address arg2) {
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

function claimRewards() payable {
    mem[64] = 96
    require not msg.value
    mem[0] = msg.sender
    mem[32] = 22
    idx = 0
    while idx < sub_9e808ee7[address(msg.sender)]:
        mem[32] = 22
        if idx >= sub_9e808ee7[address(msg.sender)]:
            revert with 'NH{q', 50
        mem[0] = sha3(address(msg.sender), 22)
        _28 = mem[64]
        mem[64] = mem[64] + 96
        mem[_28] = 42
        mem[_28 + 32 len 42] = 0xfe4552433732313a206d696e74657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 24
        if not stor24[stor22[address(msg.sender)][idx]]:
            _30 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[_30 + idx + 68] = mem[_28 + idx + 32]
                idx = idx + 32
                continue 
            mem[_30 + 110] = 0
            revert with memory
              from mem[64]
               len _30 + -mem[64] + 132
        if stor24[stor22[address(msg.sender)][idx]] < 1:
            revert with 'NH{q', 17
        if stor24[stor22[address(msg.sender)][idx]] - 1 >= minterOf.length:
            revert with 'NH{q', 50
        if minterOf[stor24[stor22[address(msg.sender)][idx]] - 1].field_256 != msg.sender:
            revert with 0, 'FantomFurries: Only owner can claim rewards'
        mem[0] = sub_9e808ee7[address(msg.sender)][idx]
        mem[32] = 20
        if totalDividend < stor20[stor22[address(msg.sender)][idx]]:
            revert with 'NH{q', 17
        _39 = mem[64]
        mem[64] = mem[64] + 96
        mem[_39] = 42
        mem[_39 + 32 len 42] = 0xfe4552433732313a206d696e74657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 24
        if not stor24[stor22[address(msg.sender)][idx]]:
            _41 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[_41 + idx + 68] = mem[_39 + idx + 32]
                idx = idx + 32
                continue 
            mem[_41 + 110] = 0
            revert with memory
              from mem[64]
               len _41 + -mem[64] + 132
        if stor24[stor22[address(msg.sender)][idx]] < 1:
            revert with 'NH{q', 17
        if stor24[stor22[address(msg.sender)][idx]] - 1 >= minterOf.length:
            revert with 'NH{q', 50
        call minterOf[stor24[stor22[address(msg.sender)][idx]] - 1].field_256 with:
           value totalDividend - stor20[stor22[address(msg.sender)][idx]] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = sub_9e808ee7[address(msg.sender)][idx]
        mem[32] = 20
        stor20[stor22[address(msg.sender)][idx]] = totalDividend
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function revokeRole(bytes32 arg1, address arg2) {
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

function getReflectionBalances() {
    idx = 0
    s = 0
    while idx < sub_9e808ee7[address(msg.sender)]:
        if idx >= sub_9e808ee7[address(msg.sender)]:
            revert with 'NH{q', 50
        mem[0] = sub_9e808ee7[address(msg.sender)][idx]
        mem[32] = 20
        if totalDividend < stor20[stor22[address(msg.sender)][idx]]:
            revert with 'NH{q', 17
        if s > -totalDividend + stor20[stor22[address(msg.sender)][idx]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - stor20[stor22[address(msg.sender)][idx]]
        continue 
    return (s * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)] * sub_9e808ee7[address(msg.sender)])
}

function name() {
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

function symbol() {
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

function mint() payable {
    if bool(hasSaleStarted) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Minting has not started yet or is paused'
    if _tokenIdTracker >= stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FantomFurries: all FantomFurries have been minted'
    if sub_f8b08712[address(msg.sender)].field_0 != msg.sender:
        if price != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FantomFurries: must send correct price'
    else:
        if not sub_f8b08712[address(msg.sender)].field_256:
            if price != msg.value:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FantomFurries: must send correct price'
        else:
            if not sub_f8b08712[address(msg.sender)].field_256:
                revert with 'NH{q', 17
            sub_f8b08712[address(msg.sender)].field_256--
    if not sub_9e808ee7[address(msg.sender)][1][stor13]:
        sub_9e808ee7[address(msg.sender)]++
        sub_9e808ee7[address(msg.sender)][sub_9e808ee7[address(msg.sender)]] = _tokenIdTracker
        sub_9e808ee7[address(msg.sender)][1][stor13] = sub_9e808ee7[address(msg.sender)]
    if stor24[stor13]:
        if stor24[stor13] < 1:
            revert with 'NH{q', 17
        if stor24[stor13] - 1 >= minterOf.length:
            revert with 'NH{q', 50
        minterOf[stor24[stor13] - 1].field_256 = msg.sender
        minterOf[stor24[stor13] - 1].field_416 = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor13]:
            revert with 0, 'ERC721: token already minted'
        if tokenByIndex.length > _tokenIdTracker:
            if not stor24[stor13]:
                revert with 0, 
                            32,
                            42,
                            0xfe4552433732313a206d696e74657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[170 len 22] >> 80,
                            0
            if stor24[stor13] < 1:
                revert with 'NH{q', 17
            if stor24[stor13] - 1 >= minterOf.length:
                revert with 'NH{q', 50
            if minterOf[stor24[stor13] - 1].field_256 != msg.sender:
                revert with 0, 'FantomFurries: Only owner can claim rewards'
            if totalDividend < stor20[stor13]:
                revert with 'NH{q', 17
            if not stor24[stor13]:
                revert with 0, 
                            32,
                            42,
                            0xfe4552433732313a206d696e74657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[266 len 22] >> 80,
                            0
            if stor24[stor13] < 1:
                revert with 'NH{q', 17
            if stor24[stor13] - 1 >= minterOf.length:
                revert with 'NH{q', 50
            call minterOf[stor24[stor13] - 1].field_256 with:
               value totalDividend - stor20[stor13] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor20[stor13] = totalDividend
    else:
        minterOf.length++
        minterOf[minterOf.length].field_0 = _tokenIdTracker
        minterOf[minterOf.length].field_256 = msg.sender
        minterOf[minterOf.length].field_416 = 0
        stor24[stor13] = minterOf.length
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor13]:
            revert with 0, 'ERC721: token already minted'
        if tokenByIndex.length > _tokenIdTracker:
            if not stor24[stor13]:
                revert with 0, 
                            32,
                            42,
                            0xfe4552433732313a206d696e74657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[234 len 22] >> 80,
                            0
            if stor24[stor13] < 1:
                revert with 'NH{q', 17
            if stor24[stor13] - 1 >= minterOf.length:
                revert with 'NH{q', 50
            if minterOf[stor24[stor13] - 1].field_256 != msg.sender:
                revert with 0, 'FantomFurries: Only owner can claim rewards'
            if totalDividend < stor20[stor13]:
                revert with 'NH{q', 17
            if not stor24[stor13]:
                revert with 0, 
                            32,
                            42,
                            0xfe4552433732313a206d696e74657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[330 len 22] >> 80,
                            0
            if stor24[stor13] < 1:
                revert with 'NH{q', 17
            if stor24[stor13] - 1 >= minterOf.length:
                revert with 'NH{q', 50
            call minterOf[stor24[stor13] - 1].field_256 with:
               value totalDividend - stor20[stor13] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor20[stor13] = totalDividend
    stor11[stor13] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = _tokenIdTracker
    if msg.sender:
        tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = _tokenIdTracker
        stor9[stor13] = balanceOf[address(msg.sender)]
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
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor13] = msg.sender
    emit Transfer(0, msg.sender, _tokenIdTracker);
    creator[stor13] = msg.sender
    stor20[stor13] = totalDividend
    _tokenIdTracker++
    if msg.value < msg.value / 33:
        revert with 'NH{q', 17
    if reflectionBalance > -(msg.value / 33) - 1:
        revert with 'NH{q', 17
    reflectionBalance += msg.value / 33
    if not tokenByIndex.length:
        revert with 'NH{q', 18
    if totalDividend > -(msg.value / 33 / tokenByIndex.length) - 1:
        revert with 'NH{q', 17
    totalDividend += msg.value / 33 / tokenByIndex.length
    call address(stor17.field_0) with:
       value msg.value - (msg.value / 33) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if tokenByIndex.length <= arg3:
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
        approved[arg3] = 0
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    else:
        if not stor24[arg3]:
            revert with 0, 
                        32,
                        42,
                        0xfe4552433732313a206d696e74657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[170 len 22] >> 80,
                        0
        if stor24[arg3] < 1:
            revert with 'NH{q', 17
        if stor24[arg3] - 1 >= minterOf.length:
            revert with 'NH{q', 50
        if minterOf[stor24[arg3] - 1].field_256 != msg.sender:
            revert with 0, 'FantomFurries: Only owner can claim rewards'
        if totalDividend < stor20[arg3]:
            revert with 'NH{q', 17
        if not stor24[arg3]:
            revert with 0, 
                        32,
                        42,
                        0xfe4552433732313a206d696e74657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[266 len 22] >> 80,
                        0
        if stor24[arg3] < 1:
            revert with 'NH{q', 17
        if stor24[arg3] - 1 >= minterOf.length:
            revert with 'NH{q', 50
        call minterOf[stor24[arg3] - 1].field_256 with:
           value totalDividend - stor20[arg3] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor20[arg3] = totalDividend
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
        approved[arg3] = 0
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
    ('bool', ('stor', ('map', ('param', 'arg3'), ('name', 'ownerOf', 4))))
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if tokenByIndex.length <= arg3:
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
    else:
        if not stor24[arg3]:
            revert with 0, 
                        32,
                        42,
                        0xfe4552433732313a206d696e74657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[202 len 22] >> 80,
                        0
        if stor24[arg3] < 1:
            revert with 'NH{q', 17
        if stor24[arg3] - 1 >= minterOf.length:
            revert with 'NH{q', 50
        if minterOf[stor24[arg3] - 1].field_256 != msg.sender:
            revert with 0, 'FantomFurries: Only owner can claim rewards'
        if totalDividend < stor20[arg3]:
            revert with 'NH{q', 17
        if not stor24[arg3]:
            revert with 0, 
                        32,
                        42,
                        0xfe4552433732313a206d696e74657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[298 len 22] >> 80,
                        0
        if stor24[arg3] < 1:
            revert with 'NH{q', 17
        if stor24[arg3] - 1 >= minterOf.length:
            revert with 'NH{q', 50
        call minterOf[stor24[arg3] - 1].field_256 with:
           value totalDividend - stor20[arg3] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor20[arg3] = totalDividend
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
                args msg.sender, address(arg1), arg3, 128, 0
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



}
