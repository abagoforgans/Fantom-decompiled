contract main {




// =====================  Runtime code  =====================


const sub_ad3c020d(?) = 202

const ROYALTY = 500

const DEFAULT_ADMIN_ROLE = 0

const MINT_PRICE = 480 * 10^18

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a

const MINT_PER_TX = 10


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
address owner;
uint256 stor16;
uint8 stor17; offset 160
uint128 stor17; offset 160
address paymentManagerAddress;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
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

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
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

function paymentManager() {
    return paymentManagerAddress
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

function _fallback() payable {
    revert
}

function enableMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor17.field_160) = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdraw() {
    call paymentManagerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and 500 > -1 / arg2:
        revert with 'NH{q', 17
    return paymentManagerAddress, 500 * arg2 / 10000
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

function pause() {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721PresetMinterPauserAutoId: must have pauser role to pause'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721PresetMinterPauserAutoId: must have pauser role to unpause'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == *U Z:
        return True
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

function veryImportantDiamonds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor17.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Very important diamonds are not mintable anymore.'
    stor16++
    if stor16 >= 202:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'All the moon diamonds are minted.'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor16]:
        revert with 0, 'ERC721: token already minted'
    stor11[stor16] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor16
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)]] = stor16
        stor9[stor16] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[stor16] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[stor16]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[stor16]
        stor11[stor16] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor16] = arg1
    emit Transfer(0, arg1, stor16);
}

function mint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721PresetMinterPauserAutoId: must have minter role to mint'
    if stor13 >= 202:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'All the moon diamonds are minted.'
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

function mintDiamond(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor17.field_160):
        revert with 0, 'Diamonds are not mintable yet.'
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too many diamonds for this transaction.'
    if 480 * 10^18 * arg1 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not the right payment for all these diamonds.'
    idx = 0
    while idx < arg1:
        stor16++
        if stor16 >= 202:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'All the moon diamonds are minted.'
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor16]:
            revert with 0, 'ERC721: token already minted'
        stor11[stor16] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor16
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = stor16
            stor9[stor16] = balanceOf[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor11[stor16] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor11[stor16]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[stor16]
            stor11[stor16] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if paused:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor16
        mem[32] = 4
        ownerOf[stor16] = msg.sender
        emit Transfer(0, msg.sender, stor16);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function burn(uint256 arg1) {
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
            if not stor7[stor4[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if balanceOf[stor4[arg1]] < 1:
        revert with 'NH{q', 17
    if stor9[arg1] != balanceOf[stor4[arg1]] - 1:
        tokenOfOwnerByIndex[stor4[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1]
        stor9[stor8[stor4[arg1]][stor5[stor4[arg1]] - 1]] = stor9[arg1]
    stor9[arg1] = 0
    tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor11[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
    stor11[stor10[stor10.length]] = stor11[arg1]
    stor11[arg1] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor4[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor4[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
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
    mem[96] = stor14.length.field_1
    if bool(stor14.length):
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
                if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
            if not s:
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
                if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                    mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                        _3686 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3686)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3686)]
                        if ceil32(_3686) > _3686:
                            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3686 + 256] = 0
                        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3686) + 32], 
                    _3718 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3718)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3718)]
                    if ceil32(_3718) > _3718:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3718 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3718) + 32], 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3687 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3687)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3687)]
                    if ceil32(_3687) > _3687:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3687 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3687) + 32], 
                _3719 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3719)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3719)]
                if ceil32(_3719) > _3719:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3719 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3719) + 32], 
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
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3688 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3688)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3688)]
                    if ceil32(_3688) > _3688:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3688 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3688) + 32], 
                _3720 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3720)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3720)]
                if ceil32(_3720) > _3720:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3720 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3720) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3689 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3689)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3689)]
                if ceil32(_3689) > _3689:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3689 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3689) + 32], 
            _3721 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3721)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3721)]
            if ceil32(_3721) > _3721:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3721 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3721) + 32], 
        if 31 >= stor14.length.field_1:
            mem[128] = 256 * stor14.length.field_8
            if stor14.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
            if not s:
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
                if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                    mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                        _3690 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3690)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3690)]
                        if ceil32(_3690) > _3690:
                            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3690 + 256] = 0
                        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3690) + 32], 
                    _3722 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3722)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3722 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3722) + 32], 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3691 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3691)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3691)]
                    if ceil32(_3691) > _3691:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3691 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3691) + 32], 
                _3723 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3723)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3723 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3723) + 32], 
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
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3692 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3692)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3692)]
                    if ceil32(_3692) > _3692:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3692 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3692) + 32], 
                _3724 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3724)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3724 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3724) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3693 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3693)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3693)]
                if ceil32(_3693) > _3693:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3693 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3693) + 32], 
            _3725 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3725)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3725 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3725) + 32], 
        mem[0] = 14
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
            if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
        if not s:
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
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                    _4414 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4414)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4414)]
                    if ceil32(_4414) > _4414:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4414 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4414) + 32], 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                _4430 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4430)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4430 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4430) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                _4415 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4415)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4415)]
                if ceil32(_4415) > _4415:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4415 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4415) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            _4431 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4431)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4431 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4431) + 32], 
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
        if ceil32(stor14.length.field_1) <= stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                _4416 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4416)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4416)]
                if ceil32(_4416) > _4416:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4416 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4416) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            _4432 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4432)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4432 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4432) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            _4417 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4417)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4417)]
            if ceil32(_4417) > _4417:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4417 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4417) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
        _4433 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4433)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4433 + 256] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4433) + 32], 
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
            if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
        if not s:
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
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3694 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3694)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3694)]
                    if ceil32(_3694) > _3694:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3694 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3694) + 32], 
                _3726 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3726)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
                if ceil32(_3726) > _3726:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3726 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3726) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3695 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3695)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3695)]
                if ceil32(_3695) > _3695:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3695 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3695) + 32], 
            _3727 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3727)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
            if ceil32(_3727) > _3727:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3727 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3727) + 32], 
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
        if ceil32(stor14.length.field_1) <= stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3696 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3696)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3696)]
                if ceil32(_3696) > _3696:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3696 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3696) + 32], 
            _3728 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3728)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
            if ceil32(_3728) > _3728:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3728 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3728) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            _3697 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3697)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3697)]
            if ceil32(_3697) > _3697:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3697 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3697) + 32], 
        _3729 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3729)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
        if ceil32(_3729) > _3729:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3729 + 256] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3729) + 32], 
    if 31 >= stor14.length.field_1:
        mem[128] = 256 * stor14.length.field_8
        if stor14.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
        if not s:
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
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3698 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3698)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3698)]
                    if ceil32(_3698) > _3698:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3698 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3698) + 32], 
                _3730 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3730)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                if ceil32(_3730) > _3730:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3730 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3730) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3699 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3699)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3699)]
                if ceil32(_3699) > _3699:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3699 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3699) + 32], 
            _3731 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3731)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
            if ceil32(_3731) > _3731:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3731 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3731) + 32], 
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
        if ceil32(stor14.length.field_1) <= stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3700 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3700)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3700)]
                if ceil32(_3700) > _3700:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3700 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3700) + 32], 
            _3732 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3732)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
            if ceil32(_3732) > _3732:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3732 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3732) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            _3701 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3701)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3701)]
            if ceil32(_3701) > _3701:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3701 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3701) + 32], 
        _3733 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3733)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
        if ceil32(_3733) > _3733:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3733 + 256] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3733) + 32], 
    mem[0] = 14
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
        if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
        return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
    if not s:
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
        if ceil32(stor14.length.field_1) <= stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                _4418 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4418)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4418)]
                if ceil32(_4418) > _4418:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4418 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4418) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            _4434 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4434)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4434 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4434) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            _4419 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4419)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4419)]
            if ceil32(_4419) > _4419:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4419 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4419) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
        _4435 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4435)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4435 + 256] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4435) + 32], 
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
    if ceil32(stor14.length.field_1) <= stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            _4420 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4420)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4420)]
            if ceil32(_4420) > _4420:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4420 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4420) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
        _4436 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4436)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4436 + 256] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4436) + 32], 
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
        _4421 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4421)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4421)]
        if ceil32(_4421) > _4421:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4421 + 256] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4421) + 32], 
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 0
    mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
    _4437 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4437)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4437 + 256] = 0
    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4437) + 32], 
}



}
