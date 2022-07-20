contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a

const BASE = 10000


uint16 stor0;
mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor3;
array of struct stor4;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor8;
uint256 stor9;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor14;
array of uint256 tokenByIndex;
mapping of uint256 stor16;
uint8 paused;
address owner;
array of struct stor21;
array of address sub_14248c40;
mapping of uint8 stor23;
address stor24;
uint8 minting; offset 160
uint8 locked; offset 168
address stor26;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_14248c40(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_14248c40.length
    return address(sub_14248c40[arg1])
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

function exists(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(ownerOf[arg1])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
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

function minting() {
    return bool(minting)
}

function owner() {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function locked() {
    return bool(locked)
}

function closeMint() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minting = 0
}

function lockContract() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    locked = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 and stor0 > -1 / arg2:
        revert with 0, 17
    return address(this.address), arg2 * stor0 / 10000
}

function mint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The mint() function is not allowed.'
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor23[address(arg2)]:
        return bool(stor8[address(arg1)][address(arg2)])
    return 1
}

function sub_31062623(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23[address(arg1)] = uint8(bool(arg2))
}

function sub_904e46e1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if locked:
        revert with 0, 'HallowMowse is locked.'
    stor26 = address(arg1)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor8[msg.sender][address(arg1)] = uint8(arg2)
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

function withdraw() {
    if stor9 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor9 = 2
    require ext_code.size(0x5f5585d7bb6c9f3946ba63312a4696585cbd572e)
    delegate 0x5f5585d7bb6c9f3946ba63312a4696585cbd572e.0x386d1eb6 with:
         gas gas_remaining wei
        args 10
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    stor9 = 1
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

function sub_1886bb58(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if locked:
        revert with 0, 'HallowMowse is locked.'
    if not address(arg1):
        revert with 0, 'Cannot be zero address.'
    if this.address == address(arg1):
        revert with 0, 'Cannot be this address.'
    stor24 = address(arg1)
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor9 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor9 = 2
    require ext_code.size(0x5f5585d7bb6c9f3946ba63312a4696585cbd572e)
    delegate 0x5f5585d7bb6c9f3946ba63312a4696585cbd572e.0x6ec2a423 with:
         gas gas_remaining wei
        args 10, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    stor9 = 1
}

function updateRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor9 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor9 = 2
    require ext_code.size(0x5f5585d7bb6c9f3946ba63312a4696585cbd572e)
    delegate 0x5f5585d7bb6c9f3946ba63312a4696585cbd572e.0x1625d8ba with:
         gas gas_remaining wei
        args 10, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    stor9 = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor23[address(msg.sender)]:
            if not stor8[stor5[arg2]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if Mask(32, 224, arg1) != 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
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
        if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
            return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_9bdedea5(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if stor9 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor9 = 2
    mem[ceil32(32 * ('cd', 36).length) + 97] = 0x3af5509c00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 36).length) + 101] = 10
    require ext_code.size(0x5f5585d7bb6c9f3946ba63312a4696585cbd572e)
    delegate 0x5f5585d7bb6c9f3946ba63312a4696585cbd572e.0x3af5509c with:
         gas gas_remaining wei
        args 10, address(cd[4]), Array(len=('cd', 36).length, data=mem[128 len 32 * ('cd', 36).length])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    stor9 = 1
}

function sub_d8a778e9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_14248c40.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_14248c40.length > idx:
            uint256(sub_14248c40[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(sub_14248c40[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_14248c40.length > idx:
            uint256(sub_14248c40[idx]) = 0
            idx = idx + 1
            continue 
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if locked:
        revert with 0, 'HallowMowse is locked.'
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while stor21.length.field_1 + 31 / 32 > idx:
                stor21[idx].field_0 = 0
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
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor23[address(msg.sender)]:
                if not stor8[stor5[arg1]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor5[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor5[arg1]] - 1 != stor14[arg1]:
            tokenOfOwnerByIndex[stor5[arg1]][stor14[arg1]] = tokenOfOwnerByIndex[stor5[arg1]][stor6[stor5[arg1]] - 1]
            stor14[stor13[stor5[arg1]][stor6[stor5[arg1]] - 1]] = stor14[arg1]
        stor14[arg1] = 0
        tokenOfOwnerByIndex[stor5[arg1]][stor6[stor5[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor16[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor16[arg1]] = tokenByIndex[tokenByIndex.length]
    stor16[stor15[stor15.length]] = stor16[arg1]
    stor16[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor5[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor5[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
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
            if not stor23[address(msg.sender)]:
                if not stor8[stor5[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor16[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor14[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor14[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1]
                stor14[stor13[address(arg1)][stor6[address(arg1)] - 1]] = stor14[arg3]
            stor14[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor6[address(arg2)]] = arg3
            stor14[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor16[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor16[arg3]] = tokenByIndex[tokenByIndex.length]
        stor16[stor15[stor15.length]] = stor16[arg3]
        stor16[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
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

function sub_9ca9f754(?) {
    require calldata.size - 4 >= 32
    if not minting:
        revert with 0, 'HallowMowse cannot be minted.'
    if ownerOf[arg1]:
        revert with 0, 'Token already exists.'
    mem[100] = arg1
    require ext_code.size(stor24)
    staticcall stor24.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Token owned by a contract.'
    if ext_code.size(ext_call.return_data[12 len 20]):
        revert with 0, 'Token owned by a contract.'
    mem[ceil32(return_data.size) + 96] = 0
    if not address(ext_call.return_data[0]):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg1]:
        revert with 0, 'ERC721: token already minted'
    stor16[arg1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg1
    if address(ext_call.return_data[0]):
        if address(ext_call.return_data[0]):
            if not address(ext_call.return_data[0]):
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(ext_call.return_data[0])][stor6[address(ext_call.return_data[0])]] = arg1
            stor14[arg1] = balanceOf[address(ext_call.return_data[0])]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor16[arg1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor16[arg1]] = tokenByIndex[tokenByIndex.length]
        stor16[stor15[stor15.length]] = stor16[arg1]
        stor16[arg1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0, 'ERC721Pausable: token transfer while paused'
    if balanceOf[address(ext_call.return_data[0])] > -2:
        revert with 0, 17
    balanceOf[address(ext_call.return_data[0])]++
    ownerOf[arg1] = address(ext_call.return_data[0])
    emit Transfer(0, address(ext_call.return_data[0]), arg1);
    if ext_code.size(address(ext_call.return_data[0])):
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = arg1
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 260] = 0
        mem[ceil32(return_data.size) + 292 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, arg1, 128, 0
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not ext_call.return_data[0]:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
            if not stor23[address(msg.sender)]:
                if not stor8[stor5[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor16[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor14[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor14[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1]
                stor14[stor13[address(arg1)][stor6[address(arg1)] - 1]] = stor14[arg3]
            stor14[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor6[address(arg2)]] = arg3
            stor14[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor16[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor16[arg3]] = tokenByIndex[tokenByIndex.length]
        stor16[stor15[stor15.length]] = stor16[arg3]
        stor16[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0, 'ERC721Pausable: token transfer while paused'
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

function name() {
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

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
            if not stor23[address(msg.sender)]:
                if not stor8[stor5[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor16[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor14[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor14[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1]
                stor14[stor13[address(arg1)][stor6[address(arg1)] - 1]] = stor14[arg3]
            stor14[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor6[address(arg2)]] = arg3
            stor14[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor16[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor16[arg3]] = tokenByIndex[tokenByIndex.length]
        stor16[stor15[stor15.length]] = stor16[arg3]
        stor16[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0, 'ERC721Pausable: token transfer while paused'
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

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
        idx = 0
        while idx < sub_14248c40.length:
            mem[0] = 22
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(sub_14248c40[idx]))
            staticcall address(sub_14248c40[idx]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_9116] > 0:
                if idx >= sub_14248c40.length:
                    revert with 0, 50
                mem[0] = 22
                mem[mem[64]] = 0x49df728c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(sub_14248c40[idx])
                require ext_code.size(this.address)
                call this.address.0x49df728c with:
                     gas gas_remaining wei
                    args address(sub_14248c40[idx])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ext_code.size(this.address)
        call this.address.0x3ccfd60b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if unknown_0x70a08231(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x36568abe(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x1886bb58(?????) > uint32(call.func_hash) >> 224:
                    if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == Mask(32, 224, cd[4])
                        if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                            return True
                        if Mask(32, 224, cd[4]) != 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
                            if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                                return True
                            if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                                return True
                            if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                                return True
                            if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                                return True
                            if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                                return True
                            if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                                return True
                        return (Mask(32, 224, cd[4]) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
                    if name() == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if bool(stor3.length):
                            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor3.length):
                                if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor3.length):
                                    if 31 < uint255(stor3.length) * 0.5:
                                        mem[160] = uint256(stor3.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor3.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor3[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                                    mem[160] = 256 * stor3.length.field_8
                            else:
                                if bool(stor3.length) == stor3.length.field_1 < 32:
                                    revert with 0, 34
                                if stor3.length.field_1:
                                    if 31 < stor3.length.field_1:
                                        mem[160] = uint256(stor3.field_0)
                                        idx = 160
                                        s = 0
                                        while stor3.length.field_1 + 128 > idx:
                                            mem[idx + 32] = stor3[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                                    mem[160] = 256 * stor3.length.field_8
                            mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                            if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                                mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 0, 34
                        if bool(stor3.length):
                            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor3.length):
                                if 31 < uint255(stor3.length) * 0.5:
                                    mem[160] = uint256(stor3.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor3.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor3[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                                mem[160] = 256 * stor3.length.field_8
                        else:
                            if bool(stor3.length) == stor3.length.field_1 < 32:
                                revert with 0, 34
                            if stor3.length.field_1:
                                if 31 < stor3.length.field_1:
                                    mem[160] = uint256(stor3.field_0)
                                    idx = 160
                                    s = 0
                                    while stor3.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor3[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                                mem[160] = 256 * stor3.length.field_8
                        mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
                        if ceil32(stor3.length.field_1) > stor3.length.field_1:
                            mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 224] = 0
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
                    if getApproved(uint256 arg1) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if not ownerOf[cd[4]]:
                            revert with 0, 'ERC721: approved query for nonexistent token'
                        return approved[cd[4]]
                    if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                        if uint32(call.func_hash) >> 224 != unknown_0x14248c40(?????):
                            require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return tokenByIndex.length
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] < sub_14248c40.length
                        return address(sub_14248c40[cd[4]])
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if not ownerOf[cd[36]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if address(cd[4]) == ownerOf[cd[36]]:
                        revert with 0, 'ERC721: approval to current owner'
                    if ownerOf[cd[36]] != msg.sender:
                        if not stor23[address(msg.sender)]:
                            if not stor8[stor5[cd[36]]][address(msg.sender)]:
                                revert with 0, 'ERC721: approve caller is not owner nor approved for all'
                    approved[cd[36]] = address(cd[4])
                    if not ownerOf[cd[36]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[cd[36]], address(cd[4]), cd[36]);
                else:
                    if unknown_0x2a55205a(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0x2a55205a(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            if cd[36] and stor0 > -1 / cd[36]:
                                revert with 0, 17
                            return address(this.address), cd[36] * stor0 / 10000
                        if uint32(call.func_hash) >> 224 != unknown_0x2f2ff15d(?????):
                            if unknown_0x2f745c59(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 64
                                require cd[4] == address(cd[4])
                                if not address(cd[4]):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                if cd[36] >= balanceOf[address(cd[4])]:
                                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                                return tokenOfOwnerByIndex[address(cd[4])][cd[36]]
                            require unknown_0x31062623(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == bool(cd[36])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor23[address(cd[4])] = uint8(bool(cd[36]))
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[36] == address(cd[36])
                            if not roleAdmin[roleAdmin[cd[4]].field_256][address(msg.sender)].field_0:
                                mem[160 len 42] = call.data[calldata.size len 42]
                                idx = 41
                                s = address(msg.sender)
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= 42:
                                        revert with 0, 50
                                    mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                if msg.sender + 10240:
                                    revert with 0, 'Strings: hex length insufficient'
                                mem[256 len 66] = call.data[calldata.size len 66]
                                idx = 65
                                s = roleAdmin[cd[4]].field_256
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= 66:
                                        revert with 0, 50
                                    mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                if roleAdmin[cd[4]].field_256 + 16384:
                                    revert with 0, 'Strings: hex length insufficient'
                                revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                            if not roleAdmin[cd[4]][address(cd[36])].field_0:
                                roleAdmin[cd[4]][address(cd[36])].field_0 = 1
                                emit RoleGranted(cd[4], address(cd[36]), msg.sender);
                            if not roleMember[cd[4]][1][address(cd[36])].field_0:
                                roleMember[cd[4]].field_0++
                                roleMember[cd[4]][roleMember[cd[4]].field_0].field_0 = address(cd[36])
                                roleMember[cd[4]][roleMember[cd[4]].field_0].field_160 = 0
                                roleMember[cd[4]][1][address(cd[36])].field_0 = roleMember[cd[4]].field_0
                    else:
                        if unknown_0x1886bb58(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if locked:
                                revert with 0, 'HallowMowse is locked.'
                            if not address(cd[4]):
                                revert with 0, 'Cannot be zero address.'
                            if this.address == address(cd[4]):
                                revert with 0, 'Cannot be this address.'
                            stor24 = address(cd[4])
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                                require unknown_0x248a9ca3(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                return roleAdmin[cd[4]].field_256
                            require not msg.value
                            require calldata.size - 4 >= 96
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: operator query for nonexistent token'
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if ownerOf[cd[68]] != msg.sender:
                                if not ownerOf[cd[68]]:
                                    revert with 0, 'ERC721: approved query for nonexistent token'
                                if approved[cd[68]] != msg.sender:
                                    if not stor23[address(msg.sender)]:
                                        if not stor8[stor5[cd[68]]][address(msg.sender)]:
                                            revert with 0, 'ERC721: transfer caller is not owner nor approved'
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if ownerOf[cd[68]] != address(cd[4]):
                                revert with 0, 'ERC721: transfer of token that is not own'
                            if not address(cd[36]):
                                revert with 0, 'ERC721: transfer to the zero address'
                            if not address(cd[4]):
                                stor16[cd[68]] = tokenByIndex.length
                                tokenByIndex.length++
                                tokenByIndex[tokenByIndex.length] = cd[68]
                            else:
                                if address(cd[4]) != address(cd[36]):
                                    if not address(cd[4]):
                                        revert with 0, 'ERC721: balance query for the zero address'
                                    if balanceOf[address(cd[4])] < 1:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] - 1 != stor14[cd[68]]:
                                        tokenOfOwnerByIndex[address(cd[4])][stor14[cd[68]]] = tokenOfOwnerByIndex[address(cd[4])][stor6[address(cd[4])] - 1]
                                        stor14[stor13[address(cd[4])][stor6[address(cd[4])] - 1]] = stor14[cd[68]]
                                    stor14[cd[68]] = 0
                                    tokenOfOwnerByIndex[address(cd[4])][stor6[address(cd[4])] - 1] = 0
                            if address(cd[36]):
                                if address(cd[36]) != address(cd[4]):
                                    if not address(cd[36]):
                                        revert with 0, 'ERC721: balance query for the zero address'
                                    tokenOfOwnerByIndex[address(cd[36])][stor6[address(cd[36])]] = cd[68]
                                    stor14[cd[68]] = balanceOf[address(cd[36])]
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 0, 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 0, 50
                                if stor16[cd[68]] >= tokenByIndex.length:
                                    revert with 0, 50
                                tokenByIndex[stor16[cd[68]]] = tokenByIndex[tokenByIndex.length]
                                stor16[stor15[stor15.length]] = stor16[cd[68]]
                                stor16[cd[68]] = 0
                                if not tokenByIndex.length:
                                    revert with 0, 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                            if paused:
                                revert with 0, 'ERC721Pausable: token transfer while paused'
                            approved[cd[68]] = 0
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[cd[68]], 0, cd[68]);
                            if balanceOf[address(cd[4])] < 1:
                                revert with 0, 17
                            balanceOf[address(cd[4])]--
                            if balanceOf[address(cd[36])] > -2:
                                revert with 0, 17
                            balanceOf[address(cd[36])]++
                            ownerOf[cd[68]] = address(cd[36])
                            emit Transfer(address(cd[4]), address(cd[36]), cd[68]);
            else:
                if unknown_0x4f558e79(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x5c975abb(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0x5c975abb(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bool(paused)
                        if unknown_0x6352211e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not ownerOf[cd[4]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            return ownerOf[cd[4]]
                        if unknown_0x64f101f0(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            minting = 0
                        require unknown_0x6a627842(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        revert with 0, 'The mint() function is not allowed.'
                    if unknown_0x4f558e79(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return bool(ownerOf[cd[4]])
                    if unknown_0x4f6ccce7(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if cd[4] >= tokenByIndex.length:
                            revert with 0, 'ERC721Enumerable: global index out of bounds'
                        return tokenByIndex[cd[4]]
                    require unknown_0x55f804b3(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require calldata.size > cd[4] + 35
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                        revert with 0, 65
                    require cd[4] + ('cd', 4).length + 36 <= calldata.size
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if locked:
                        revert with 0, 'HallowMowse is locked.'
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        if ('cd', 4).length:
                            stor21[].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                        else:
                            stor21.length = 0
                            idx = 0
                            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        if ('cd', 4).length:
                            stor21[].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                        else:
                            stor21.length = 0
                            idx = 0
                            while stor21.length.field_1 + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    if unknown_0x36568abe(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == address(cd[36])
                        if address(cd[36]) != msg.sender:
                            revert with 0, 'AccessControl: can only renounce roles for self'
                        if roleAdmin[cd[4]][address(cd[36])].field_0:
                            roleAdmin[cd[4]][address(cd[36])].field_0 = 0
                            emit RoleRevoked(cd[4], address(cd[36]), msg.sender);
                        if roleMember[cd[4]][1][address(cd[36])].field_0:
                            if roleMember[cd[4]][1][address(cd[36])].field_0 < 1:
                                revert with 0, 17
                            if roleMember[cd[4]].field_0 < 1:
                                revert with 0, 17
                            if roleMember[cd[4]].field_0 - 1 != roleMember[cd[4]][1][address(cd[36])].field_0 - 1:
                                if roleMember[cd[4]].field_0 - 1 >= roleMember[cd[4]].field_0:
                                    revert with 0, 50
                                if roleMember[cd[4]][1][address(cd[36])].field_0 - 1 >= roleMember[cd[4]].field_0:
                                    revert with 0, 50
                                roleMember[cd[4]][roleMember[cd[4]][1][address(cd[36])].field_0].field_0 = roleMember[cd[4]][roleMember[cd[4]].field_0].field_0
                                roleMember[cd[4]][1][roleMember[cd[4]][roleMember[cd[4]].field_0].field_0].field_0 = roleMember[cd[4]][1][address(cd[36])].field_0
                            if not roleMember[cd[4]].field_0:
                                revert with 0, 49
                            roleMember[cd[4]][roleMember[cd[4]].field_0].field_0 = 0
                            roleMember[cd[4]].field_0--
                            roleMember[cd[4]][1][address(cd[36])].field_0 = 0
                    else:
                        if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if stor9 == 2:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor9 = 2
                            require ext_code.size(0x5f5585d7bb6c9f3946ba63312a4696585cbd572e)
                            delegate 0x5f5585d7bb6c9f3946ba63312a4696585cbd572e.0x386d1eb6 with:
                                 gas gas_remaining wei
                                args 10
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor9 = 1
                        else:
                            if unknown_0x3f4ba83a(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
                                    revert with 0, 'ERC721PresetMinterPauserAutoId: must have pauser role to unpause'
                                if not paused:
                                    revert with 0, 'Pausable: not paused'
                                paused = 0
                                emit Unpaused(msg.sender);
                            else:
                                if uint32(call.func_hash) >> 224 != unknown_0x42842e0e(?????):
                                    if uint32(call.func_hash) >> 224 != unknown_0x42966c68(?????):
                                        require unknown_0x49df728c(?????) == uint32(call.func_hash) >> 224
                                        require not msg.value
                                        require calldata.size - 4 >= 32
                                        require cd[4] == address(cd[4])
                                        if stor9 == 2:
                                            revert with 0, 'ReentrancyGuard: reentrant call'
                                        stor9 = 2
                                        require ext_code.size(0x5f5585d7bb6c9f3946ba63312a4696585cbd572e)
                                        delegate 0x5f5585d7bb6c9f3946ba63312a4696585cbd572e.0x6ec2a423 with:
                                             gas gas_remaining wei
                                            args 10, address(cd[4])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor9 = 1
                                    else:
                                        require not msg.value
                                        require calldata.size - 4 >= 32
                                        if not ownerOf[cd[4]]:
                                            revert with 0, 'ERC721: operator query for nonexistent token'
                                        if not ownerOf[cd[4]]:
                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                        if ownerOf[cd[4]] != msg.sender:
                                            if not ownerOf[cd[4]]:
                                                revert with 0, 'ERC721: approved query for nonexistent token'
                                            if approved[cd[4]] != msg.sender:
                                                if not stor23[address(msg.sender)]:
                                                    if not stor8[stor5[cd[4]]][address(msg.sender)]:
                                                        revert with 0, 'ERC721Burnable: caller is not owner nor approved'
                                        if not ownerOf[cd[4]]:
                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                        if ownerOf[cd[4]]:
                                            if not ownerOf[cd[4]]:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            if balanceOf[stor5[cd[4]]] < 1:
                                                revert with 0, 17
                                            if balanceOf[stor5[cd[4]]] - 1 != stor14[cd[4]]:
                                                tokenOfOwnerByIndex[stor5[cd[4]]][stor14[cd[4]]] = tokenOfOwnerByIndex[stor5[cd[4]]][stor6[stor5[cd[4]]] - 1]
                                                stor14[stor13[stor5[cd[4]]][stor6[stor5[cd[4]]] - 1]] = stor14[cd[4]]
                                            stor14[cd[4]] = 0
                                            tokenOfOwnerByIndex[stor5[cd[4]]][stor6[stor5[cd[4]]] - 1] = 0
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        if stor16[cd[4]] >= tokenByIndex.length:
                                            revert with 0, 50
                                        tokenByIndex[stor16[cd[4]]] = tokenByIndex[tokenByIndex.length]
                                        stor16[stor15[stor15.length]] = stor16[cd[4]]
                                        stor16[cd[4]] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        tokenByIndex[tokenByIndex.length] = 0
                                        tokenByIndex.length--
                                        if paused:
                                            revert with 0, 'ERC721Pausable: token transfer while paused'
                                        approved[cd[4]] = 0
                                        if not ownerOf[cd[4]]:
                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                        emit Approval(ownerOf[cd[4]], 0, cd[4]);
                                        if balanceOf[stor5[cd[4]]] < 1:
                                            revert with 0, 17
                                        balanceOf[stor5[cd[4]]]--
                                        ownerOf[cd[4]] = 0
                                        emit Transfer(ownerOf[cd[4]], 0, cd[4]);
                                else:
                                    require not msg.value
                                    require calldata.size - 4 >= 96
                                    require cd[4] == address(cd[4])
                                    require cd[36] == address(cd[36])
                                    mem[128] = 0
                                    if not ownerOf[cd[68]]:
                                        revert with 0, 'ERC721: operator query for nonexistent token'
                                    if not ownerOf[cd[68]]:
                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                    if ownerOf[cd[68]] != msg.sender:
                                        if not ownerOf[cd[68]]:
                                            revert with 0, 'ERC721: approved query for nonexistent token'
                                        if approved[cd[68]] != msg.sender:
                                            if not stor23[address(msg.sender)]:
                                                if not stor8[stor5[cd[68]]][address(msg.sender)]:
                                                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                                    if not ownerOf[cd[68]]:
                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                    if ownerOf[cd[68]] != address(cd[4]):
                                        revert with 0, 'ERC721: transfer of token that is not own'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC721: transfer to the zero address'
                                    if not address(cd[4]):
                                        stor16[cd[68]] = tokenByIndex.length
                                        tokenByIndex.length++
                                        tokenByIndex[tokenByIndex.length] = cd[68]
                                    else:
                                        if address(cd[4]) != address(cd[36]):
                                            if not address(cd[4]):
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            if balanceOf[address(cd[4])] < 1:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] - 1 != stor14[cd[68]]:
                                                tokenOfOwnerByIndex[address(cd[4])][stor14[cd[68]]] = tokenOfOwnerByIndex[address(cd[4])][stor6[address(cd[4])] - 1]
                                                stor14[stor13[address(cd[4])][stor6[address(cd[4])] - 1]] = stor14[cd[68]]
                                            stor14[cd[68]] = 0
                                            tokenOfOwnerByIndex[address(cd[4])][stor6[address(cd[4])] - 1] = 0
                                    if address(cd[36]):
                                        if address(cd[36]) != address(cd[4]):
                                            if not address(cd[36]):
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(cd[36])][stor6[address(cd[36])]] = cd[68]
                                            stor14[cd[68]] = balanceOf[address(cd[36])]
                                    else:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        if stor16[cd[68]] >= tokenByIndex.length:
                                            revert with 0, 50
                                        tokenByIndex[stor16[cd[68]]] = tokenByIndex[tokenByIndex.length]
                                        stor16[stor15[stor15.length]] = stor16[cd[68]]
                                        stor16[cd[68]] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        tokenByIndex[tokenByIndex.length] = 0
                                        tokenByIndex.length--
                                    if paused:
                                        revert with 0, 'ERC721Pausable: token transfer while paused'
                                    approved[cd[68]] = 0
                                    if not ownerOf[cd[68]]:
                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                    emit Approval(ownerOf[cd[68]], 0, cd[68]);
                                    if balanceOf[address(cd[4])] < 1:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])]--
                                    if balanceOf[address(cd[36])] > -2:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])]++
                                    ownerOf[cd[68]] = address(cd[36])
                                    emit Transfer(address(cd[4]), address(cd[36]), cd[68]);
                                    if ext_code.size(address(cd[36])):
                                        mem[164] = msg.sender
                                        mem[196] = address(cd[4])
                                        mem[228] = cd[68]
                                        mem[260] = 128
                                        mem[292] = 0
                                        mem[324 len 0] = None
                                        require ext_code.size(address(cd[36]))
                                        call address(cd[36]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(cd[4]), cd[68], 128, 0
                                        mem[160] = ext_call.return_data[0]
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
        else:
            if unknown_0xa22cb465(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9010d07c(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if not address(cd[4]):
                            revert with 0, 'ERC721: balance query for the zero address'
                        return balanceOf[address(cd[4])]
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                    else:
                        if unknown_0x753868e3(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            locked = 1
                        else:
                            if unknown_0x7dc2268c(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return bool(minting)
                            if uint32(call.func_hash) >> 224 != unknown_0x8456cb59(?????):
                                require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return owner
                            require not msg.value
                            if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
                                revert with 0, 'ERC721PresetMinterPauserAutoId: must have pauser role to pause'
                            if paused:
                                revert with 0, 'Pausable: paused'
                            paused = 1
                            emit Paused(msg.sender);
                else:
                    if unknown_0x95d89b41(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0x9010d07c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            if cd[36] >= roleMember[cd[4]].field_0:
                                revert with 0, 50
                            return roleMember[cd[4]][cd[36]].field_0
                        if uint32(call.func_hash) >> 224 != unknown_0x904e46e1(?????):
                            require unknown_0x91d14854(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[36] == address(cd[36])
                            return bool(roleAdmin[cd[4]][address(cd[36])].field_0)
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if locked:
                            revert with 0, 'HallowMowse is locked.'
                        stor26 = address(cd[4])
                    else:
                        if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if bool(stor4.length):
                                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                    revert with 0, 34
                                if bool(stor4.length):
                                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if Mask(256, -1, stor4.length):
                                        if 31 < uint255(stor4.length) * 0.5:
                                            mem[160] = uint256(stor4.field_0)
                                            idx = 160
                                            s = 0
                                            while (uint255(stor4.length) * 0.5) + 128 > idx:
                                                mem[idx + 32] = stor4[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                        mem[160] = 256 * stor4.length.field_8
                                else:
                                    if bool(stor4.length) == stor4.length.field_1 < 32:
                                        revert with 0, 34
                                    if stor4.length.field_1:
                                        if 31 < stor4.length.field_1:
                                            mem[160] = uint256(stor4.field_0)
                                            idx = 160
                                            s = 0
                                            while stor4.length.field_1 + 128 > idx:
                                                mem[idx + 32] = stor4[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                        mem[160] = 256 * stor4.length.field_8
                                mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                                if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                                    mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
                            if bool(stor4.length) == stor4.length.field_1 < 32:
                                revert with 0, 34
                            if bool(stor4.length):
                                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor4.length):
                                    if 31 < uint255(stor4.length) * 0.5:
                                        mem[160] = uint256(stor4.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor4.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor4[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                                    mem[160] = 256 * stor4.length.field_8
                            else:
                                if bool(stor4.length) == stor4.length.field_1 < 32:
                                    revert with 0, 34
                                if stor4.length.field_1:
                                    if 31 < stor4.length.field_1:
                                        mem[160] = uint256(stor4.field_0)
                                        idx = 160
                                        s = 0
                                        while stor4.length.field_1 + 128 > idx:
                                            mem[idx + 32] = stor4[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                                    mem[160] = 256 * stor4.length.field_8
                            mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
                            if ceil32(stor4.length.field_1) > stor4.length.field_1:
                                mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 224] = 0
                            return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
                        if unknown_0x9bdedea5(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] <= test266151307()
                            require calldata.size > cd[36] + 35
                            if ('cd', 36).length > test266151307():
                                revert with 0, 65
                            if ceil32(32 * ('cd', 36).length) + 129 < 128 or ceil32(32 * ('cd', 36).length) + 129 > test266151307():
                                revert with 0, 65
                            mem[128] = ('cd', 36).length
                            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                            s = 160
                            idx = cd[36] + 36
                            while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                                mem[s] = cd[idx]
                                s = s + 32
                                idx = idx + 32
                                continue 
                            if stor9 == 2:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor9 = 2
                            mem[ceil32(32 * ('cd', 36).length) + 129] = 0x3af5509c00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 36).length) + 133] = 10
                            require ext_code.size(0x5f5585d7bb6c9f3946ba63312a4696585cbd572e)
                            delegate 0x5f5585d7bb6c9f3946ba63312a4696585cbd572e.0x3af5509c with:
                                 gas gas_remaining wei
                                args 10, address(cd[4]), Array(len=('cd', 36).length, data=mem[160 len 32 * ('cd', 36).length])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor9 = 1
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0x9ca9f754(?????):
                                require unknown_0xa217fddf(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return 0
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not minting:
                                revert with 0, 'HallowMowse cannot be minted.'
                            if ownerOf[cd[4]]:
                                revert with 0, 'Token already exists.'
                            mem[132] = cd[4]
                            require ext_code.size(stor24)
                            staticcall stor24.0x6352211e with:
                                    gas gas_remaining wei
                                   args cd[4]
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'Token owned by a contract.'
                            if ext_code.size(ext_call.return_data[12 len 20]):
                                revert with 0, 'Token owned by a contract.'
                            mem[ceil32(return_data.size) + 128] = 0
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[cd[4]]:
                                revert with 0, 'ERC721: token already minted'
                            stor16[cd[4]] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = cd[4]
                            if address(ext_call.return_data[0]):
                                if address(ext_call.return_data[0]):
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC721: balance query for the zero address'
                                    tokenOfOwnerByIndex[address(ext_call.return_data[0])][stor6[address(ext_call.return_data[0])]] = cd[4]
                                    stor14[cd[4]] = balanceOf[address(ext_call.return_data[0])]
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 0, 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 0, 50
                                if stor16[cd[4]] >= tokenByIndex.length:
                                    revert with 0, 50
                                tokenByIndex[stor16[cd[4]]] = tokenByIndex[tokenByIndex.length]
                                stor16[stor15[stor15.length]] = stor16[cd[4]]
                                stor16[cd[4]] = 0
                                if not tokenByIndex.length:
                                    revert with 0, 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                            if paused:
                                revert with 0, 'ERC721Pausable: token transfer while paused'
                            if balanceOf[address(ext_call.return_data[0])] > -2:
                                revert with 0, 17
                            balanceOf[address(ext_call.return_data[0])]++
                            ownerOf[cd[4]] = address(ext_call.return_data[0])
                            emit Transfer(0, address(ext_call.return_data[0]), cd[4]);
                            if ext_code.size(address(ext_call.return_data[0])):
                                mem[ceil32(return_data.size) + 164] = msg.sender
                                mem[ceil32(return_data.size) + 196] = 0
                                mem[ceil32(return_data.size) + 228] = cd[4]
                                mem[ceil32(return_data.size) + 260] = 128
                                mem[ceil32(return_data.size) + 292] = 0
                                mem[ceil32(return_data.size) + 324 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, cd[4], 128, 0
                                mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
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
            else:
                if unknown_0xd547741f(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xe985e9c5(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0xe985e9c5(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            if not stor23[address(cd[36])]:
                                return bool(stor8[address(cd[4])][address(cd[36])])
                            return 1
                        if unknown_0xec342ad0(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 10000
                        if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(cd[4]):
                                revert with 0, 'Ownable: new owner is the zero address'
                            owner = address(cd[4])
                            emit OwnershipTransferred(owner, address(cd[4]));
                        else:
                            require unknown_0xfeec756c(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if stor9 == 2:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor9 = 2
                            require ext_code.size(0x5f5585d7bb6c9f3946ba63312a4696585cbd572e)
                            delegate 0x5f5585d7bb6c9f3946ba63312a4696585cbd572e.0x1625d8ba with:
                                 gas gas_remaining wei
                                args 10, address(cd[4])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor9 = 1
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xd547741f(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xd8a778e9(?????):
                                require unknown_0xe63ab1e9(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require calldata.size > cd[4] + 35
                            if ('cd', 4).length > test266151307():
                                revert with 0, 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 0, 65
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            s = 160
                            idx = cd[4] + 36
                            while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                                require cd[idx] == address(cd[idx])
                                mem[s] = cd[idx]
                                s = s + 32
                                idx = idx + 32
                                continue 
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            sub_14248c40.length = ('cd', 4).length
                            if not ('cd', 4).length:
                                idx = 0
                                while sub_14248c40.length > idx:
                                    uint256(sub_14248c40[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 160
                                while (32 * ('cd', 4).length) + 160 > idx:
                                    address(sub_14248c40[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                                while sub_14248c40.length > idx:
                                    uint256(sub_14248c40[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[36] == address(cd[36])
                            if not roleAdmin[roleAdmin[cd[4]].field_256][address(msg.sender)].field_0:
                                mem[160 len 42] = call.data[calldata.size len 42]
                                idx = 41
                                s = address(msg.sender)
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= 42:
                                        revert with 0, 50
                                    mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                if msg.sender + 10240:
                                    revert with 0, 'Strings: hex length insufficient'
                                mem[256 len 66] = call.data[calldata.size len 66]
                                idx = 65
                                s = roleAdmin[cd[4]].field_256
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= 66:
                                        revert with 0, 50
                                    mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                if roleAdmin[cd[4]].field_256 + 16384:
                                    revert with 0, 'Strings: hex length insufficient'
                                revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                            if roleAdmin[cd[4]][address(cd[36])].field_0:
                                roleAdmin[cd[4]][address(cd[36])].field_0 = 0
                                emit RoleRevoked(cd[4], address(cd[36]), msg.sender);
                            if roleMember[cd[4]][1][address(cd[36])].field_0:
                                if roleMember[cd[4]][1][address(cd[36])].field_0 < 1:
                                    revert with 0, 17
                                if roleMember[cd[4]].field_0 < 1:
                                    revert with 0, 17
                                if roleMember[cd[4]].field_0 - 1 != roleMember[cd[4]][1][address(cd[36])].field_0 - 1:
                                    if roleMember[cd[4]].field_0 - 1 >= roleMember[cd[4]].field_0:
                                        revert with 0, 50
                                    if roleMember[cd[4]][1][address(cd[36])].field_0 - 1 >= roleMember[cd[4]].field_0:
                                        revert with 0, 50
                                    roleMember[cd[4]][roleMember[cd[4]][1][address(cd[36])].field_0].field_0 = roleMember[cd[4]][roleMember[cd[4]].field_0].field_0
                                    roleMember[cd[4]][1][roleMember[cd[4]][roleMember[cd[4]].field_0].field_0].field_0 = roleMember[cd[4]][1][address(cd[36])].field_0
                                if not roleMember[cd[4]].field_0:
                                    revert with 0, 49
                                roleMember[cd[4]][roleMember[cd[4]].field_0].field_0 = 0
                                roleMember[cd[4]].field_0--
                                roleMember[cd[4]][1][address(cd[36])].field_0 = 0
                else:
                    if unknown_0xa22cb465(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == bool(cd[36])
                        if msg.sender == address(cd[4]):
                            revert with 0, 'ERC721: approve to caller'
                        stor8[msg.sender][address(cd[4])] = uint8(bool(cd[36]))
                        emit ApprovalForAll(bool(cd[36]), msg.sender, address(cd[4]));
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xb88d4fde(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xc87b56dd(?????):
                                if unknown_0xca15c873(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    return roleMember[cd[4]].field_0
                                if unknown_0xcf309012(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    return bool(locked)
                                require unknown_0xd5391393(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
                            require not msg.value
                            require calldata.size - 4 >= 32
                            mem[0] = cd[4]
                            mem[32] = 5
                            if not ownerOf[cd[4]]:
                                revert with 0, 'This token id does not exist.'
                            if bool(stor21.length):
                                if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                                    revert with 0, 34
                                if uint255(stor21.length) * 0.5 <= 0:
                                    return ''
                                if bool(stor21.length):
                                    if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[128] = uint255(stor21.length) * 0.5
                                    if bool(stor21.length):
                                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                                            revert with 0, 34
                                        if not Mask(256, -1, stor21.length):
                                            if not stor26:
                                                if not cd[4]:
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 262] = 32
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294] = mem[ceil32(uint255(stor21.length) * 0.5) + 224]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])] = mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]
                                                    if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 224]:
                                                        return Array(len=mem[ceil32(uint255(stor21.length) * 0.5) + 224], data=mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]), 
                                                    mem[mem[ceil32(uint255(stor21.length) * 0.5) + 224] + ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) + 32], 
                                                s = 0
                                                idx = cd[4]
                                                while idx:
                                                    if s == -1:
                                                        revert with 0, 17
                                                    s = s + 1
                                                    idx = idx / 10
                                                    continue 
                                                if s > test266151307():
                                                    revert with 0, 65
                                                mem[ceil32(uint255(stor21.length) * 0.5) + 160] = s
                                                if not s:
                                                    t = s
                                                    idx = cd[4]
                                                    while idx:
                                                        if t < 1:
                                                            revert with 0, 17
                                                        if 48 > !(idx % 10):
                                                            revert with 0, 17
                                                        if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                            revert with 0, 50
                                                        mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                        t = t - 1
                                                        idx = idx / 10
                                                        continue 
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                    if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                        if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                            _23181 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23181)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23181)]
                                                            if ceil32(_23181) > _23181:
                                                                mem[_23181 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23181) + 32], 
                                                        _23182 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23182)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23182)]
                                                        if ceil32(_23182) > _23182:
                                                            mem[_23182 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23182) + 32], 
                                                    mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                    if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        _23183 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23183)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23183)]
                                                        if ceil32(_23183) > _23183:
                                                            mem[_23183 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23183) + 32], 
                                                    _23184 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23184)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23184)]
                                                    if ceil32(_23184) > _23184:
                                                        mem[_23184 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23184) + 32], 
                                                mem[ceil32(uint255(stor21.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                                t = s
                                                idx = cd[4]
                                                while idx:
                                                    if t < 1:
                                                        revert with 0, 17
                                                    if 48 > !(idx % 10):
                                                        revert with 0, 17
                                                    if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        revert with 0, 50
                                                    mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                    t = t - 1
                                                    idx = idx / 10
                                                    continue 
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                    if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        _23185 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23185)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23185)]
                                                        if ceil32(_23185) > _23185:
                                                            mem[_23185 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23185) + 32], 
                                                    _23186 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23186)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23186)]
                                                    if ceil32(_23186) > _23186:
                                                        mem[_23186 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23186) + 32], 
                                                mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _23187 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23187)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23187)]
                                                    if ceil32(_23187) > _23187:
                                                        mem[_23187 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23187) + 32], 
                                                _23188 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23188)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23188)]
                                                if ceil32(_23188) > _23188:
                                                    mem[_23188 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23188) + 32], 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 164] = cd[4]
                                            require ext_code.size(stor26)
                                            staticcall stor26.0xff74ef30 with:
                                                    gas gas_remaining wei
                                                   args cd[4]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160
                                            require return_data.size >= 32
                                            _547 = mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                            require mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                            require ceil32(uint255(stor21.length) * 0.5) + return_data.size + 160 > ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                            _609 = mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                            if mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                                revert with 0, 65
                                            if ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                                revert with 0, 65
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160] = _609
                                            require _547 + _609 + 32 <= return_data.size
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_609)] = mem[ceil32(uint255(stor21.length) * 0.5) + _547 + 192 len ceil32(_609)]
                                            if ceil32(_609) <= _609:
                                                _9119 = mem[64]
                                                mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                    mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_609)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_609)]
                                                    mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_609) <= _609:
                                                        _19241 = mem[64]
                                                        mem[64] = _9119 + (uint255(stor21.length) * 0.5) + _609 + 37
                                                        mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 37] = 32
                                                        _19825 = mem[_19241]
                                                        mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 69] = mem[_19241]
                                                        mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 101 len ceil32(_19825)] = mem[_19241 + 32 len ceil32(_19825)]
                                                        if ceil32(_19825) > _19825:
                                                            mem[_19825 + _9119 + (uint255(stor21.length) * 0.5) + _609 + 101] = 0
                                                        return 32, mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 69 len ceil32(_19825) + 32]
                                                    _19242 = mem[64]
                                                    mem[64] = _9119 + (uint255(stor21.length) * 0.5) + _609 + 37
                                                    mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 37] = 32
                                                    _19826 = mem[_19242]
                                                    mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 69] = mem[_19242]
                                                    mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 101 len ceil32(_19826)] = mem[_19242 + 32 len ceil32(_19826)]
                                                    if ceil32(_19826) > _19826:
                                                        mem[_19826 + _9119 + (uint255(stor21.length) * 0.5) + _609 + 101] = 0
                                                    return 32, mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 69 len ceil32(_19826) + 32]
                                                mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                                mem[_9119 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_609)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_609)]
                                                mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                if ceil32(_609) <= _609:
                                                    _19243 = mem[64]
                                                    mem[64] = _9119 + (uint255(stor21.length) * 0.5) + _609 + 37
                                                    mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 37] = 32
                                                    _19827 = mem[_19243]
                                                    mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 69] = mem[_19243]
                                                    mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 101 len ceil32(_19827)] = mem[_19243 + 32 len ceil32(_19827)]
                                                    if ceil32(_19827) > _19827:
                                                        mem[_19827 + _9119 + (uint255(stor21.length) * 0.5) + _609 + 101] = 0
                                                    return 32, mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 69 len ceil32(_19827) + 32]
                                                _19244 = mem[64]
                                                mem[64] = _9119 + (uint255(stor21.length) * 0.5) + _609 + 37
                                                mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 37] = 32
                                                _19828 = mem[_19244]
                                                mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 69] = mem[_19244]
                                                mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 101 len ceil32(_19828)] = mem[_19244 + 32 len ceil32(_19828)]
                                                if ceil32(_19828) > _19828:
                                                    mem[_19828 + _9119 + (uint255(stor21.length) * 0.5) + _609 + 101] = 0
                                                return 32, mem[_9119 + (uint255(stor21.length) * 0.5) + _609 + 69 len ceil32(_19828) + 32]
                                            mem[_609 + ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192] = 0
                                            _9120 = mem[64]
                                            mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_609)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_609)]
                                                mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                if ceil32(_609) <= _609:
                                                    _19245 = mem[64]
                                                    mem[64] = _9120 + (uint255(stor21.length) * 0.5) + _609 + 37
                                                    mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 37] = 32
                                                    _19829 = mem[_19245]
                                                    mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 69] = mem[_19245]
                                                    mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 101 len ceil32(_19829)] = mem[_19245 + 32 len ceil32(_19829)]
                                                    if ceil32(_19829) > _19829:
                                                        mem[_19829 + _9120 + (uint255(stor21.length) * 0.5) + _609 + 101] = 0
                                                    return 32, mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 69 len ceil32(_19829) + 32]
                                                _19246 = mem[64]
                                                mem[64] = _9120 + (uint255(stor21.length) * 0.5) + _609 + 37
                                                mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 37] = 32
                                                _19830 = mem[_19246]
                                                mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 69] = mem[_19246]
                                                mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 101 len ceil32(_19830)] = mem[_19246 + 32 len ceil32(_19830)]
                                                if ceil32(_19830) > _19830:
                                                    mem[_19830 + _9120 + (uint255(stor21.length) * 0.5) + _609 + 101] = 0
                                                return 32, mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 69 len ceil32(_19830) + 32]
                                            mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                            mem[_9120 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_609)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_609)]
                                            mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_609) <= _609:
                                                _19247 = mem[64]
                                                mem[64] = _9120 + (uint255(stor21.length) * 0.5) + _609 + 37
                                                mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 37] = 32
                                                _19831 = mem[_19247]
                                                mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 69] = mem[_19247]
                                                mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 101 len ceil32(_19831)] = mem[_19247 + 32 len ceil32(_19831)]
                                                if ceil32(_19831) > _19831:
                                                    mem[_19831 + _9120 + (uint255(stor21.length) * 0.5) + _609 + 101] = 0
                                                return 32, mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 69 len ceil32(_19831) + 32]
                                            _19248 = mem[64]
                                            mem[64] = _9120 + (uint255(stor21.length) * 0.5) + _609 + 37
                                            mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 37] = 32
                                            _19832 = mem[_19248]
                                            mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 69] = mem[_19248]
                                            mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 101 len ceil32(_19832)] = mem[_19248 + 32 len ceil32(_19832)]
                                            if ceil32(_19832) > _19832:
                                                mem[_19832 + _9120 + (uint255(stor21.length) * 0.5) + _609 + 101] = 0
                                            return 32, mem[_9120 + (uint255(stor21.length) * 0.5) + _609 + 69 len ceil32(_19832) + 32]
                                        if 31 >= uint255(stor21.length) * 0.5:
                                            mem[160] = 256 * stor21.length.field_8
                                            if not stor26:
                                                if not cd[4]:
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 262] = 32
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294] = mem[ceil32(uint255(stor21.length) * 0.5) + 224]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])] = mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]
                                                    if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 224]:
                                                        return Array(len=mem[ceil32(uint255(stor21.length) * 0.5) + 224], data=mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]), 
                                                    mem[mem[ceil32(uint255(stor21.length) * 0.5) + 224] + ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) + 32], 
                                                s = 0
                                                idx = cd[4]
                                                while idx:
                                                    if s == -1:
                                                        revert with 0, 17
                                                    s = s + 1
                                                    idx = idx / 10
                                                    continue 
                                                if s > test266151307():
                                                    revert with 0, 65
                                                mem[ceil32(uint255(stor21.length) * 0.5) + 160] = s
                                                if not s:
                                                    t = s
                                                    idx = cd[4]
                                                    while idx:
                                                        if t < 1:
                                                            revert with 0, 17
                                                        if 48 > !(idx % 10):
                                                            revert with 0, 17
                                                        if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                            revert with 0, 50
                                                        mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                        t = t - 1
                                                        idx = idx / 10
                                                        continue 
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                    if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                        if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                            _23205 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23205)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23205)]
                                                            if ceil32(_23205) > _23205:
                                                                mem[_23205 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23205) + 32], 
                                                        _23206 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23206)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23206)]
                                                        if ceil32(_23206) > _23206:
                                                            mem[_23206 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23206) + 32], 
                                                    mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                    if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        _23207 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23207)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23207)]
                                                        if ceil32(_23207) > _23207:
                                                            mem[_23207 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23207) + 32], 
                                                    _23208 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23208)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23208)]
                                                    if ceil32(_23208) > _23208:
                                                        mem[_23208 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23208) + 32], 
                                                mem[ceil32(uint255(stor21.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                                t = s
                                                idx = cd[4]
                                                while idx:
                                                    if t < 1:
                                                        revert with 0, 17
                                                    if 48 > !(idx % 10):
                                                        revert with 0, 17
                                                    if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        revert with 0, 50
                                                    mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                    t = t - 1
                                                    idx = idx / 10
                                                    continue 
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                    if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        _23209 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23209)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23209)]
                                                        if ceil32(_23209) > _23209:
                                                            mem[_23209 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23209) + 32], 
                                                    _23210 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23210)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23210)]
                                                    if ceil32(_23210) > _23210:
                                                        mem[_23210 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23210) + 32], 
                                                mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _23211 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23211)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23211)]
                                                    if ceil32(_23211) > _23211:
                                                        mem[_23211 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23211) + 32], 
                                                _23212 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23212)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23212)]
                                                if ceil32(_23212) > _23212:
                                                    mem[_23212 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23212) + 32], 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 164] = cd[4]
                                            require ext_code.size(stor26)
                                            staticcall stor26.0xff74ef30 with:
                                                    gas gas_remaining wei
                                                   args cd[4]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160
                                            require return_data.size >= 32
                                            _612 = mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                            require mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                            require ceil32(uint255(stor21.length) * 0.5) + return_data.size + 160 > ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                            _685 = mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                            if mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                                revert with 0, 65
                                            if ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                                revert with 0, 65
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160] = _685
                                            require _612 + _685 + 32 <= return_data.size
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_685)] = mem[ceil32(uint255(stor21.length) * 0.5) + _612 + 192 len ceil32(_685)]
                                            if ceil32(_685) <= _685:
                                                _9123 = mem[64]
                                                mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                    mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_685)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_685)]
                                                    mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_685) <= _685:
                                                        _19255 = mem[64]
                                                        mem[64] = _9123 + (uint255(stor21.length) * 0.5) + _685 + 37
                                                        mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 37] = 32
                                                        _19857 = mem[_19255]
                                                        mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 69] = mem[_19255]
                                                        mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 101 len ceil32(_19857)] = mem[_19255 + 32 len ceil32(_19857)]
                                                        if ceil32(_19857) > _19857:
                                                            mem[_19857 + _9123 + (uint255(stor21.length) * 0.5) + _685 + 101] = 0
                                                        return 32, mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 69 len ceil32(_19857) + 32]
                                                    _19256 = mem[64]
                                                    mem[64] = _9123 + (uint255(stor21.length) * 0.5) + _685 + 37
                                                    mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 37] = 32
                                                    _19858 = mem[_19256]
                                                    mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 69] = mem[_19256]
                                                    mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 101 len ceil32(_19858)] = mem[_19256 + 32 len ceil32(_19858)]
                                                    if ceil32(_19858) > _19858:
                                                        mem[_19858 + _9123 + (uint255(stor21.length) * 0.5) + _685 + 101] = 0
                                                    return 32, mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 69 len ceil32(_19858) + 32]
                                                mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                                mem[_9123 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_685)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_685)]
                                                mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                if ceil32(_685) <= _685:
                                                    _19257 = mem[64]
                                                    mem[64] = _9123 + (uint255(stor21.length) * 0.5) + _685 + 37
                                                    mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 37] = 32
                                                    _19859 = mem[_19257]
                                                    mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 69] = mem[_19257]
                                                    mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 101 len ceil32(_19859)] = mem[_19257 + 32 len ceil32(_19859)]
                                                    if ceil32(_19859) > _19859:
                                                        mem[_19859 + _9123 + (uint255(stor21.length) * 0.5) + _685 + 101] = 0
                                                    return 32, mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 69 len ceil32(_19859) + 32]
                                                _19258 = mem[64]
                                                mem[64] = _9123 + (uint255(stor21.length) * 0.5) + _685 + 37
                                                mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 37] = 32
                                                _19860 = mem[_19258]
                                                mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 69] = mem[_19258]
                                                mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 101 len ceil32(_19860)] = mem[_19258 + 32 len ceil32(_19860)]
                                                if ceil32(_19860) > _19860:
                                                    mem[_19860 + _9123 + (uint255(stor21.length) * 0.5) + _685 + 101] = 0
                                                return 32, mem[_9123 + (uint255(stor21.length) * 0.5) + _685 + 69 len ceil32(_19860) + 32]
                                            mem[_685 + ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192] = 0
                                            _9124 = mem[64]
                                            mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_685)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_685)]
                                                mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                if ceil32(_685) <= _685:
                                                    _19259 = mem[64]
                                                    mem[64] = _9124 + (uint255(stor21.length) * 0.5) + _685 + 37
                                                    mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 37] = 32
                                                    _19861 = mem[_19259]
                                                    mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 69] = mem[_19259]
                                                    mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 101 len ceil32(_19861)] = mem[_19259 + 32 len ceil32(_19861)]
                                                    if ceil32(_19861) > _19861:
                                                        mem[_19861 + _9124 + (uint255(stor21.length) * 0.5) + _685 + 101] = 0
                                                    return 32, mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 69 len ceil32(_19861) + 32]
                                                _19260 = mem[64]
                                                mem[64] = _9124 + (uint255(stor21.length) * 0.5) + _685 + 37
                                                mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 37] = 32
                                                _19862 = mem[_19260]
                                                mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 69] = mem[_19260]
                                                mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 101 len ceil32(_19862)] = mem[_19260 + 32 len ceil32(_19862)]
                                                if ceil32(_19862) > _19862:
                                                    mem[_19862 + _9124 + (uint255(stor21.length) * 0.5) + _685 + 101] = 0
                                                return 32, mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 69 len ceil32(_19862) + 32]
                                            mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                            mem[_9124 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_685)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_685)]
                                            mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_685) <= _685:
                                                _19261 = mem[64]
                                                mem[64] = _9124 + (uint255(stor21.length) * 0.5) + _685 + 37
                                                mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 37] = 32
                                                _19863 = mem[_19261]
                                                mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 69] = mem[_19261]
                                                mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 101 len ceil32(_19863)] = mem[_19261 + 32 len ceil32(_19863)]
                                                if ceil32(_19863) > _19863:
                                                    mem[_19863 + _9124 + (uint255(stor21.length) * 0.5) + _685 + 101] = 0
                                                return 32, mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 69 len ceil32(_19863) + 32]
                                            _19262 = mem[64]
                                            mem[64] = _9124 + (uint255(stor21.length) * 0.5) + _685 + 37
                                            mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 37] = 32
                                            _19864 = mem[_19262]
                                            mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 69] = mem[_19262]
                                            mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 101 len ceil32(_19864)] = mem[_19262 + 32 len ceil32(_19864)]
                                            if ceil32(_19864) > _19864:
                                                mem[_19864 + _9124 + (uint255(stor21.length) * 0.5) + _685 + 101] = 0
                                            return 32, mem[_9124 + (uint255(stor21.length) * 0.5) + _685 + 69 len ceil32(_19864) + 32]
                                        mem[0] = 21
                                        mem[160] = uint256(stor21.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor21.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor21[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if not stor26:
                                            if not cd[4]:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 262] = 32
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294] = mem[ceil32(uint255(stor21.length) * 0.5) + 224]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])] = mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 224]:
                                                    return Array(len=mem[ceil32(uint255(stor21.length) * 0.5) + 224], data=mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]), 
                                                mem[mem[ceil32(uint255(stor21.length) * 0.5) + 224] + ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) + 32], 
                                            s = 0
                                            idx = cd[4]
                                            while idx:
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                idx = idx / 10
                                                continue 
                                            if s > test266151307():
                                                revert with 0, 65
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 160] = s
                                            if not s:
                                                t = s
                                                idx = cd[4]
                                                while idx:
                                                    if t < 1:
                                                        revert with 0, 17
                                                    if 48 > !(idx % 10):
                                                        revert with 0, 17
                                                    if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        revert with 0, 50
                                                    mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                    t = t - 1
                                                    idx = idx / 10
                                                    continue 
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                    if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        _25113 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25113)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25113)]
                                                        if ceil32(_25113) > _25113:
                                                            mem[_25113 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25113) + 32], 
                                                    _25114 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25114)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25114)]
                                                    if ceil32(_25114) > _25114:
                                                        mem[_25114 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25114) + 32], 
                                                mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _25115 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25115)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25115)]
                                                    if ceil32(_25115) > _25115:
                                                        mem[_25115 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25115) + 32], 
                                                _25116 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25116)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25116)]
                                                if ceil32(_25116) > _25116:
                                                    mem[_25116 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25116) + 32], 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _25117 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25117)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25117)]
                                                    if ceil32(_25117) > _25117:
                                                        mem[_25117 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25117) + 32], 
                                                _25118 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25118)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25118)]
                                                if ceil32(_25118) > _25118:
                                                    mem[_25118 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25118) + 32], 
                                            mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _25119 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25119)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25119)]
                                                if ceil32(_25119) > _25119:
                                                    mem[_25119 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25119) + 32], 
                                            _25120 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25120)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25120)]
                                            if ceil32(_25120) > _25120:
                                                mem[_25120 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25120) + 32], 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 164] = cd[4]
                                        require ext_code.size(stor26)
                                        staticcall stor26.0xff74ef30 with:
                                                gas gas_remaining wei
                                               args cd[4]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _9724 = mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                        require mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                        require ceil32(uint255(stor21.length) * 0.5) + return_data.size + 160 > ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                        _10688 = mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                        if mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                            revert with 0, 65
                                        if ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160] = _10688
                                        require _9724 + _10688 + 32 <= return_data.size
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10688)] = mem[ceil32(uint255(stor21.length) * 0.5) + _9724 + 192 len ceil32(_10688)]
                                        if ceil32(_10688) <= _10688:
                                            _15446 = mem[64]
                                            mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10688)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10688)]
                                                mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                if ceil32(_10688) <= _10688:
                                                    _22437 = mem[64]
                                                    mem[64] = _15446 + (uint255(stor21.length) * 0.5) + _10688 + 37
                                                    mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 37] = 32
                                                    _23189 = mem[_22437]
                                                    mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 69] = mem[_22437]
                                                    mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 101 len ceil32(_23189)] = mem[_22437 + 32 len ceil32(_23189)]
                                                    if ceil32(_23189) > _23189:
                                                        mem[_23189 + _15446 + (uint255(stor21.length) * 0.5) + _10688 + 101] = 0
                                                    return 32, mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 69 len ceil32(_23189) + 32]
                                                _22438 = mem[64]
                                                mem[64] = _15446 + (uint255(stor21.length) * 0.5) + _10688 + 37
                                                mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 37] = 32
                                                _23190 = mem[_22438]
                                                mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 69] = mem[_22438]
                                                mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 101 len ceil32(_23190)] = mem[_22438 + 32 len ceil32(_23190)]
                                                if ceil32(_23190) > _23190:
                                                    mem[_23190 + _15446 + (uint255(stor21.length) * 0.5) + _10688 + 101] = 0
                                                return 32, mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 69 len ceil32(_23190) + 32]
                                            mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                            mem[_15446 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10688)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10688)]
                                            mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_10688) <= _10688:
                                                _22439 = mem[64]
                                                mem[64] = _15446 + (uint255(stor21.length) * 0.5) + _10688 + 37
                                                mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 37] = 32
                                                _23191 = mem[_22439]
                                                mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 69] = mem[_22439]
                                                mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 101 len ceil32(_23191)] = mem[_22439 + 32 len ceil32(_23191)]
                                                if ceil32(_23191) > _23191:
                                                    mem[_23191 + _15446 + (uint255(stor21.length) * 0.5) + _10688 + 101] = 0
                                                return 32, mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 69 len ceil32(_23191) + 32]
                                            _22440 = mem[64]
                                            mem[64] = _15446 + (uint255(stor21.length) * 0.5) + _10688 + 37
                                            mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 37] = 32
                                            _23192 = mem[_22440]
                                            mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 69] = mem[_22440]
                                            mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 101 len ceil32(_23192)] = mem[_22440 + 32 len ceil32(_23192)]
                                            if ceil32(_23192) > _23192:
                                                mem[_23192 + _15446 + (uint255(stor21.length) * 0.5) + _10688 + 101] = 0
                                            return 32, mem[_15446 + (uint255(stor21.length) * 0.5) + _10688 + 69 len ceil32(_23192) + 32]
                                        mem[_10688 + ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192] = 0
                                        _15447 = mem[64]
                                        mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10688)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10688)]
                                            mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_10688) <= _10688:
                                                _22441 = mem[64]
                                                mem[64] = _15447 + (uint255(stor21.length) * 0.5) + _10688 + 37
                                                mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 37] = 32
                                                _23193 = mem[_22441]
                                                mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 69] = mem[_22441]
                                                mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 101 len ceil32(_23193)] = mem[_22441 + 32 len ceil32(_23193)]
                                                if ceil32(_23193) > _23193:
                                                    mem[_23193 + _15447 + (uint255(stor21.length) * 0.5) + _10688 + 101] = 0
                                                return 32, mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 69 len ceil32(_23193) + 32]
                                            _22442 = mem[64]
                                            mem[64] = _15447 + (uint255(stor21.length) * 0.5) + _10688 + 37
                                            mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 37] = 32
                                            _23194 = mem[_22442]
                                            mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 69] = mem[_22442]
                                            mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 101 len ceil32(_23194)] = mem[_22442 + 32 len ceil32(_23194)]
                                            if ceil32(_23194) > _23194:
                                                mem[_23194 + _15447 + (uint255(stor21.length) * 0.5) + _10688 + 101] = 0
                                            return 32, mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 69 len ceil32(_23194) + 32]
                                        mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                        mem[_15447 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10688)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10688)]
                                        mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_10688) <= _10688:
                                            _22443 = mem[64]
                                            mem[64] = _15447 + (uint255(stor21.length) * 0.5) + _10688 + 37
                                            mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 37] = 32
                                            _23195 = mem[_22443]
                                            mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 69] = mem[_22443]
                                            mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 101 len ceil32(_23195)] = mem[_22443 + 32 len ceil32(_23195)]
                                            if ceil32(_23195) > _23195:
                                                mem[_23195 + _15447 + (uint255(stor21.length) * 0.5) + _10688 + 101] = 0
                                            return 32, mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 69 len ceil32(_23195) + 32]
                                        _22444 = mem[64]
                                        mem[64] = _15447 + (uint255(stor21.length) * 0.5) + _10688 + 37
                                        mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 37] = 32
                                        _23196 = mem[_22444]
                                        mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 69] = mem[_22444]
                                        mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 101 len ceil32(_23196)] = mem[_22444 + 32 len ceil32(_23196)]
                                        if ceil32(_23196) > _23196:
                                            mem[_23196 + _15447 + (uint255(stor21.length) * 0.5) + _10688 + 101] = 0
                                        return 32, mem[_15447 + (uint255(stor21.length) * 0.5) + _10688 + 69 len ceil32(_23196) + 32]
                                    if bool(stor21.length) == stor21.length.field_1 < 32:
                                        revert with 0, 34
                                    if not stor21.length.field_1:
                                        if not stor26:
                                            if not cd[4]:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 262] = 32
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294] = mem[ceil32(uint255(stor21.length) * 0.5) + 224]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])] = mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 224]:
                                                    return Array(len=mem[ceil32(uint255(stor21.length) * 0.5) + 224], data=mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]), 
                                                mem[mem[ceil32(uint255(stor21.length) * 0.5) + 224] + ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) + 32], 
                                            s = 0
                                            idx = cd[4]
                                            while idx:
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                idx = idx / 10
                                                continue 
                                            if s > test266151307():
                                                revert with 0, 65
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 160] = s
                                            if not s:
                                                t = s
                                                idx = cd[4]
                                                while idx:
                                                    if t < 1:
                                                        revert with 0, 17
                                                    if 48 > !(idx % 10):
                                                        revert with 0, 17
                                                    if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        revert with 0, 50
                                                    mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                    t = t - 1
                                                    idx = idx / 10
                                                    continue 
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                    if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        _23213 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23213)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23213)]
                                                        if ceil32(_23213) > _23213:
                                                            mem[_23213 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23213) + 32], 
                                                    _23214 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23214)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23214)]
                                                    if ceil32(_23214) > _23214:
                                                        mem[_23214 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23214) + 32], 
                                                mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _23215 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23215)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23215)]
                                                    if ceil32(_23215) > _23215:
                                                        mem[_23215 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23215) + 32], 
                                                _23216 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23216)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23216)]
                                                if ceil32(_23216) > _23216:
                                                    mem[_23216 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23216) + 32], 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _23217 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23217)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23217)]
                                                    if ceil32(_23217) > _23217:
                                                        mem[_23217 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23217) + 32], 
                                                _23218 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23218)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23218)]
                                                if ceil32(_23218) > _23218:
                                                    mem[_23218 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23218) + 32], 
                                            mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _23219 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23219)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23219)]
                                                if ceil32(_23219) > _23219:
                                                    mem[_23219 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23219) + 32], 
                                            _23220 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23220)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23220)]
                                            if ceil32(_23220) > _23220:
                                                mem[_23220 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23220) + 32], 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 164] = cd[4]
                                        require ext_code.size(stor26)
                                        staticcall stor26.0xff74ef30 with:
                                                gas gas_remaining wei
                                               args cd[4]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _572 = mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                        require mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                        require ceil32(uint255(stor21.length) * 0.5) + return_data.size + 160 > ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                        _648 = mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                        if mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                            revert with 0, 65
                                        if ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160] = _648
                                        require _572 + _648 + 32 <= return_data.size
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_648)] = mem[ceil32(uint255(stor21.length) * 0.5) + _572 + 192 len ceil32(_648)]
                                        if ceil32(_648) <= _648:
                                            _9125 = mem[64]
                                            mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_648)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_648)]
                                                mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                if ceil32(_648) <= _648:
                                                    _19263 = mem[64]
                                                    mem[64] = _9125 + (uint255(stor21.length) * 0.5) + _648 + 37
                                                    mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 37] = 32
                                                    _19873 = mem[_19263]
                                                    mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 69] = mem[_19263]
                                                    mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 101 len ceil32(_19873)] = mem[_19263 + 32 len ceil32(_19873)]
                                                    if ceil32(_19873) > _19873:
                                                        mem[_19873 + _9125 + (uint255(stor21.length) * 0.5) + _648 + 101] = 0
                                                    return 32, mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 69 len ceil32(_19873) + 32]
                                                _19264 = mem[64]
                                                mem[64] = _9125 + (uint255(stor21.length) * 0.5) + _648 + 37
                                                mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 37] = 32
                                                _19874 = mem[_19264]
                                                mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 69] = mem[_19264]
                                                mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 101 len ceil32(_19874)] = mem[_19264 + 32 len ceil32(_19874)]
                                                if ceil32(_19874) > _19874:
                                                    mem[_19874 + _9125 + (uint255(stor21.length) * 0.5) + _648 + 101] = 0
                                                return 32, mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 69 len ceil32(_19874) + 32]
                                            mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                            mem[_9125 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_648)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_648)]
                                            mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_648) <= _648:
                                                _19265 = mem[64]
                                                mem[64] = _9125 + (uint255(stor21.length) * 0.5) + _648 + 37
                                                mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 37] = 32
                                                _19875 = mem[_19265]
                                                mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 69] = mem[_19265]
                                                mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 101 len ceil32(_19875)] = mem[_19265 + 32 len ceil32(_19875)]
                                                if ceil32(_19875) > _19875:
                                                    mem[_19875 + _9125 + (uint255(stor21.length) * 0.5) + _648 + 101] = 0
                                                return 32, mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 69 len ceil32(_19875) + 32]
                                            _19266 = mem[64]
                                            mem[64] = _9125 + (uint255(stor21.length) * 0.5) + _648 + 37
                                            mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 37] = 32
                                            _19876 = mem[_19266]
                                            mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 69] = mem[_19266]
                                            mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 101 len ceil32(_19876)] = mem[_19266 + 32 len ceil32(_19876)]
                                            if ceil32(_19876) > _19876:
                                                mem[_19876 + _9125 + (uint255(stor21.length) * 0.5) + _648 + 101] = 0
                                            return 32, mem[_9125 + (uint255(stor21.length) * 0.5) + _648 + 69 len ceil32(_19876) + 32]
                                        mem[_648 + ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192] = 0
                                        _9126 = mem[64]
                                        mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_648)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_648)]
                                            mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_648) <= _648:
                                                _19267 = mem[64]
                                                mem[64] = _9126 + (uint255(stor21.length) * 0.5) + _648 + 37
                                                mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 37] = 32
                                                _19877 = mem[_19267]
                                                mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 69] = mem[_19267]
                                                mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 101 len ceil32(_19877)] = mem[_19267 + 32 len ceil32(_19877)]
                                                if ceil32(_19877) > _19877:
                                                    mem[_19877 + _9126 + (uint255(stor21.length) * 0.5) + _648 + 101] = 0
                                                return 32, mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 69 len ceil32(_19877) + 32]
                                            _19268 = mem[64]
                                            mem[64] = _9126 + (uint255(stor21.length) * 0.5) + _648 + 37
                                            mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 37] = 32
                                            _19878 = mem[_19268]
                                            mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 69] = mem[_19268]
                                            mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 101 len ceil32(_19878)] = mem[_19268 + 32 len ceil32(_19878)]
                                            if ceil32(_19878) > _19878:
                                                mem[_19878 + _9126 + (uint255(stor21.length) * 0.5) + _648 + 101] = 0
                                            return 32, mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 69 len ceil32(_19878) + 32]
                                        mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                        mem[_9126 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_648)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_648)]
                                        mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_648) <= _648:
                                            _19269 = mem[64]
                                            mem[64] = _9126 + (uint255(stor21.length) * 0.5) + _648 + 37
                                            mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 37] = 32
                                            _19879 = mem[_19269]
                                            mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 69] = mem[_19269]
                                            mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 101 len ceil32(_19879)] = mem[_19269 + 32 len ceil32(_19879)]
                                            if ceil32(_19879) > _19879:
                                                mem[_19879 + _9126 + (uint255(stor21.length) * 0.5) + _648 + 101] = 0
                                            return 32, mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 69 len ceil32(_19879) + 32]
                                        _19270 = mem[64]
                                        mem[64] = _9126 + (uint255(stor21.length) * 0.5) + _648 + 37
                                        mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 37] = 32
                                        _19880 = mem[_19270]
                                        mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 69] = mem[_19270]
                                        mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 101 len ceil32(_19880)] = mem[_19270 + 32 len ceil32(_19880)]
                                        if ceil32(_19880) > _19880:
                                            mem[_19880 + _9126 + (uint255(stor21.length) * 0.5) + _648 + 101] = 0
                                        return 32, mem[_9126 + (uint255(stor21.length) * 0.5) + _648 + 69 len ceil32(_19880) + 32]
                                    if 31 >= stor21.length.field_1:
                                        mem[160] = 256 * stor21.length.field_8
                                        if not stor26:
                                            if not cd[4]:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 262] = 32
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294] = mem[ceil32(uint255(stor21.length) * 0.5) + 224]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])] = mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 224]:
                                                    return Array(len=mem[ceil32(uint255(stor21.length) * 0.5) + 224], data=mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]), 
                                                mem[mem[ceil32(uint255(stor21.length) * 0.5) + 224] + ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) + 32], 
                                            s = 0
                                            idx = cd[4]
                                            while idx:
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                idx = idx / 10
                                                continue 
                                            if s > test266151307():
                                                revert with 0, 65
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 160] = s
                                            if not s:
                                                t = s
                                                idx = cd[4]
                                                while idx:
                                                    if t < 1:
                                                        revert with 0, 17
                                                    if 48 > !(idx % 10):
                                                        revert with 0, 17
                                                    if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        revert with 0, 50
                                                    mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                    t = t - 1
                                                    idx = idx / 10
                                                    continue 
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                    if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        _23237 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23237)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23237)]
                                                        if ceil32(_23237) > _23237:
                                                            mem[_23237 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23237) + 32], 
                                                    _23238 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23238)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23238)]
                                                    if ceil32(_23238) > _23238:
                                                        mem[_23238 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23238) + 32], 
                                                mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _23239 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23239)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23239)]
                                                    if ceil32(_23239) > _23239:
                                                        mem[_23239 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23239) + 32], 
                                                _23240 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23240)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23240)]
                                                if ceil32(_23240) > _23240:
                                                    mem[_23240 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23240) + 32], 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _23241 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23241)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23241)]
                                                    if ceil32(_23241) > _23241:
                                                        mem[_23241 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23241) + 32], 
                                                _23242 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23242)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23242)]
                                                if ceil32(_23242) > _23242:
                                                    mem[_23242 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23242) + 32], 
                                            mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _23243 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23243)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23243)]
                                                if ceil32(_23243) > _23243:
                                                    mem[_23243 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23243) + 32], 
                                            _23244 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23244)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23244)]
                                            if ceil32(_23244) > _23244:
                                                mem[_23244 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23244) + 32], 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 164] = cd[4]
                                        require ext_code.size(stor26)
                                        staticcall stor26.0xff74ef30 with:
                                                gas gas_remaining wei
                                               args cd[4]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _651 = mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                        require mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                        require ceil32(uint255(stor21.length) * 0.5) + return_data.size + 160 > ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                        _720 = mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                        if mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                            revert with 0, 65
                                        if ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160] = _720
                                        require _651 + _720 + 32 <= return_data.size
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_720)] = mem[ceil32(uint255(stor21.length) * 0.5) + _651 + 192 len ceil32(_720)]
                                        if ceil32(_720) <= _720:
                                            _9129 = mem[64]
                                            mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_720)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_720)]
                                                mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                if ceil32(_720) <= _720:
                                                    _19277 = mem[64]
                                                    mem[64] = _9129 + (uint255(stor21.length) * 0.5) + _720 + 37
                                                    mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 37] = 32
                                                    _19905 = mem[_19277]
                                                    mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 69] = mem[_19277]
                                                    mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 101 len ceil32(_19905)] = mem[_19277 + 32 len ceil32(_19905)]
                                                    if ceil32(_19905) > _19905:
                                                        mem[_19905 + _9129 + (uint255(stor21.length) * 0.5) + _720 + 101] = 0
                                                    return 32, mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 69 len ceil32(_19905) + 32]
                                                _19278 = mem[64]
                                                mem[64] = _9129 + (uint255(stor21.length) * 0.5) + _720 + 37
                                                mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 37] = 32
                                                _19906 = mem[_19278]
                                                mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 69] = mem[_19278]
                                                mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 101 len ceil32(_19906)] = mem[_19278 + 32 len ceil32(_19906)]
                                                if ceil32(_19906) > _19906:
                                                    mem[_19906 + _9129 + (uint255(stor21.length) * 0.5) + _720 + 101] = 0
                                                return 32, mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 69 len ceil32(_19906) + 32]
                                            mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                            mem[_9129 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_720)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_720)]
                                            mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_720) <= _720:
                                                _19279 = mem[64]
                                                mem[64] = _9129 + (uint255(stor21.length) * 0.5) + _720 + 37
                                                mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 37] = 32
                                                _19907 = mem[_19279]
                                                mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 69] = mem[_19279]
                                                mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 101 len ceil32(_19907)] = mem[_19279 + 32 len ceil32(_19907)]
                                                if ceil32(_19907) > _19907:
                                                    mem[_19907 + _9129 + (uint255(stor21.length) * 0.5) + _720 + 101] = 0
                                                return 32, mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 69 len ceil32(_19907) + 32]
                                            _19280 = mem[64]
                                            mem[64] = _9129 + (uint255(stor21.length) * 0.5) + _720 + 37
                                            mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 37] = 32
                                            _19908 = mem[_19280]
                                            mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 69] = mem[_19280]
                                            mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 101 len ceil32(_19908)] = mem[_19280 + 32 len ceil32(_19908)]
                                            if ceil32(_19908) > _19908:
                                                mem[_19908 + _9129 + (uint255(stor21.length) * 0.5) + _720 + 101] = 0
                                            return 32, mem[_9129 + (uint255(stor21.length) * 0.5) + _720 + 69 len ceil32(_19908) + 32]
                                        mem[_720 + ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192] = 0
                                        _9130 = mem[64]
                                        mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_720)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_720)]
                                            mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_720) <= _720:
                                                _19281 = mem[64]
                                                mem[64] = _9130 + (uint255(stor21.length) * 0.5) + _720 + 37
                                                mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 37] = 32
                                                _19909 = mem[_19281]
                                                mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 69] = mem[_19281]
                                                mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 101 len ceil32(_19909)] = mem[_19281 + 32 len ceil32(_19909)]
                                                if ceil32(_19909) > _19909:
                                                    mem[_19909 + _9130 + (uint255(stor21.length) * 0.5) + _720 + 101] = 0
                                                return 32, mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 69 len ceil32(_19909) + 32]
                                            _19282 = mem[64]
                                            mem[64] = _9130 + (uint255(stor21.length) * 0.5) + _720 + 37
                                            mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 37] = 32
                                            _19910 = mem[_19282]
                                            mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 69] = mem[_19282]
                                            mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 101 len ceil32(_19910)] = mem[_19282 + 32 len ceil32(_19910)]
                                            if ceil32(_19910) > _19910:
                                                mem[_19910 + _9130 + (uint255(stor21.length) * 0.5) + _720 + 101] = 0
                                            return 32, mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 69 len ceil32(_19910) + 32]
                                        mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                        mem[_9130 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_720)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_720)]
                                        mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_720) <= _720:
                                            _19283 = mem[64]
                                            mem[64] = _9130 + (uint255(stor21.length) * 0.5) + _720 + 37
                                            mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 37] = 32
                                            _19911 = mem[_19283]
                                            mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 69] = mem[_19283]
                                            mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 101 len ceil32(_19911)] = mem[_19283 + 32 len ceil32(_19911)]
                                            if ceil32(_19911) > _19911:
                                                mem[_19911 + _9130 + (uint255(stor21.length) * 0.5) + _720 + 101] = 0
                                            return 32, mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 69 len ceil32(_19911) + 32]
                                        _19284 = mem[64]
                                        mem[64] = _9130 + (uint255(stor21.length) * 0.5) + _720 + 37
                                        mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 37] = 32
                                        _19912 = mem[_19284]
                                        mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 69] = mem[_19284]
                                        mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 101 len ceil32(_19912)] = mem[_19284 + 32 len ceil32(_19912)]
                                        if ceil32(_19912) > _19912:
                                            mem[_19912 + _9130 + (uint255(stor21.length) * 0.5) + _720 + 101] = 0
                                        return 32, mem[_9130 + (uint255(stor21.length) * 0.5) + _720 + 69 len ceil32(_19912) + 32]
                                    mem[0] = 21
                                    mem[160] = uint256(stor21.field_0)
                                    idx = 160
                                    s = 0
                                    while stor21.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor21[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if not stor26:
                                        if not cd[4]:
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 262] = 32
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294] = mem[ceil32(uint255(stor21.length) * 0.5) + 224]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])] = mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 224]:
                                                return Array(len=mem[ceil32(uint255(stor21.length) * 0.5) + 224], data=mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]), 
                                            mem[mem[ceil32(uint255(stor21.length) * 0.5) + 224] + ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) + 32], 
                                        s = 0
                                        idx = cd[4]
                                        while idx:
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            idx = idx / 10
                                            continue 
                                        if s > test266151307():
                                            revert with 0, 65
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160] = s
                                        if not s:
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _25121 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25121)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25121)]
                                                    if ceil32(_25121) > _25121:
                                                        mem[_25121 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25121) + 32], 
                                                _25122 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25122)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25122)]
                                                if ceil32(_25122) > _25122:
                                                    mem[_25122 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25122) + 32], 
                                            mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _25123 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25123)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25123)]
                                                if ceil32(_25123) > _25123:
                                                    mem[_25123 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25123) + 32], 
                                            _25124 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25124)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25124)]
                                            if ceil32(_25124) > _25124:
                                                mem[_25124 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25124) + 32], 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _25125 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25125)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25125)]
                                                if ceil32(_25125) > _25125:
                                                    mem[_25125 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25125) + 32], 
                                            _25126 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25126)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25126)]
                                            if ceil32(_25126) > _25126:
                                                mem[_25126 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25126) + 32], 
                                        mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                            _25127 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25127)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25127)]
                                            if ceil32(_25127) > _25127:
                                                mem[_25127 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25127) + 32], 
                                        _25128 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25128)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25128)]
                                        if ceil32(_25128) > _25128:
                                            mem[_25128 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25128) + 32], 
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 164] = cd[4]
                                    require ext_code.size(stor26)
                                    staticcall stor26.0xff74ef30 with:
                                            gas gas_remaining wei
                                           args cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160
                                    require return_data.size >= 32
                                    _9734 = mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                    require mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                    require ceil32(uint255(stor21.length) * 0.5) + return_data.size + 160 > ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                    _10697 = mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                    if mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160] = _10697
                                    require _9734 + _10697 + 32 <= return_data.size
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10697)] = mem[ceil32(uint255(stor21.length) * 0.5) + _9734 + 192 len ceil32(_10697)]
                                    if ceil32(_10697) <= _10697:
                                        _15460 = mem[64]
                                        mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10697)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10697)]
                                            mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_10697) <= _10697:
                                                _22461 = mem[64]
                                                mem[64] = _15460 + (uint255(stor21.length) * 0.5) + _10697 + 37
                                                mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 37] = 32
                                                _23221 = mem[_22461]
                                                mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 69] = mem[_22461]
                                                mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 101 len ceil32(_23221)] = mem[_22461 + 32 len ceil32(_23221)]
                                                if ceil32(_23221) > _23221:
                                                    mem[_23221 + _15460 + (uint255(stor21.length) * 0.5) + _10697 + 101] = 0
                                                return 32, mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 69 len ceil32(_23221) + 32]
                                            _22462 = mem[64]
                                            mem[64] = _15460 + (uint255(stor21.length) * 0.5) + _10697 + 37
                                            mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 37] = 32
                                            _23222 = mem[_22462]
                                            mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 69] = mem[_22462]
                                            mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 101 len ceil32(_23222)] = mem[_22462 + 32 len ceil32(_23222)]
                                            if ceil32(_23222) > _23222:
                                                mem[_23222 + _15460 + (uint255(stor21.length) * 0.5) + _10697 + 101] = 0
                                            return 32, mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 69 len ceil32(_23222) + 32]
                                        mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                        mem[_15460 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10697)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10697)]
                                        mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_10697) <= _10697:
                                            _22463 = mem[64]
                                            mem[64] = _15460 + (uint255(stor21.length) * 0.5) + _10697 + 37
                                            mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 37] = 32
                                            _23223 = mem[_22463]
                                            mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 69] = mem[_22463]
                                            mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 101 len ceil32(_23223)] = mem[_22463 + 32 len ceil32(_23223)]
                                            if ceil32(_23223) > _23223:
                                                mem[_23223 + _15460 + (uint255(stor21.length) * 0.5) + _10697 + 101] = 0
                                            return 32, mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 69 len ceil32(_23223) + 32]
                                        _22464 = mem[64]
                                        mem[64] = _15460 + (uint255(stor21.length) * 0.5) + _10697 + 37
                                        mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 37] = 32
                                        _23224 = mem[_22464]
                                        mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 69] = mem[_22464]
                                        mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 101 len ceil32(_23224)] = mem[_22464 + 32 len ceil32(_23224)]
                                        if ceil32(_23224) > _23224:
                                            mem[_23224 + _15460 + (uint255(stor21.length) * 0.5) + _10697 + 101] = 0
                                        return 32, mem[_15460 + (uint255(stor21.length) * 0.5) + _10697 + 69 len ceil32(_23224) + 32]
                                    mem[_10697 + ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192] = 0
                                    _15461 = mem[64]
                                    mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                    if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                        mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10697)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10697)]
                                        mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_10697) <= _10697:
                                            _22465 = mem[64]
                                            mem[64] = _15461 + (uint255(stor21.length) * 0.5) + _10697 + 37
                                            mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 37] = 32
                                            _23225 = mem[_22465]
                                            mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 69] = mem[_22465]
                                            mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 101 len ceil32(_23225)] = mem[_22465 + 32 len ceil32(_23225)]
                                            if ceil32(_23225) > _23225:
                                                mem[_23225 + _15461 + (uint255(stor21.length) * 0.5) + _10697 + 101] = 0
                                            return 32, mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 69 len ceil32(_23225) + 32]
                                        _22466 = mem[64]
                                        mem[64] = _15461 + (uint255(stor21.length) * 0.5) + _10697 + 37
                                        mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 37] = 32
                                        _23226 = mem[_22466]
                                        mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 69] = mem[_22466]
                                        mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 101 len ceil32(_23226)] = mem[_22466 + 32 len ceil32(_23226)]
                                        if ceil32(_23226) > _23226:
                                            mem[_23226 + _15461 + (uint255(stor21.length) * 0.5) + _10697 + 101] = 0
                                        return 32, mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 69 len ceil32(_23226) + 32]
                                    mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                    mem[_15461 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10697)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10697)]
                                    mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_10697) <= _10697:
                                        _22467 = mem[64]
                                        mem[64] = _15461 + (uint255(stor21.length) * 0.5) + _10697 + 37
                                        mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 37] = 32
                                        _23227 = mem[_22467]
                                        mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 69] = mem[_22467]
                                        mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 101 len ceil32(_23227)] = mem[_22467 + 32 len ceil32(_23227)]
                                        if ceil32(_23227) > _23227:
                                            mem[_23227 + _15461 + (uint255(stor21.length) * 0.5) + _10697 + 101] = 0
                                        return 32, mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 69 len ceil32(_23227) + 32]
                                    _22468 = mem[64]
                                    mem[64] = _15461 + (uint255(stor21.length) * 0.5) + _10697 + 37
                                    mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 37] = 32
                                    _23228 = mem[_22468]
                                    mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 69] = mem[_22468]
                                    mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 101 len ceil32(_23228)] = mem[_22468 + 32 len ceil32(_23228)]
                                    if ceil32(_23228) > _23228:
                                        mem[_23228 + _15461 + (uint255(stor21.length) * 0.5) + _10697 + 101] = 0
                                    return 32, mem[_15461 + (uint255(stor21.length) * 0.5) + _10697 + 69 len ceil32(_23228) + 32]
                                if bool(stor21.length) == stor21.length.field_1 < 32:
                                    revert with 0, 34
                                mem[128] = stor21.length.field_1
                                if bool(stor21.length):
                                    if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not Mask(256, -1, stor21.length):
                                        if not stor26:
                                            if not cd[4]:
                                                mem[ceil32(stor21.length.field_1) + 256 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                                mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 262] = 32
                                                mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294] = mem[ceil32(stor21.length.field_1) + 224]
                                                mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])] = mem[ceil32(stor21.length.field_1) + 256 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]
                                                if ceil32(mem[ceil32(stor21.length.field_1) + 224]) <= mem[ceil32(stor21.length.field_1) + 224]:
                                                    return Array(len=mem[ceil32(stor21.length.field_1) + 224], data=mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]), 
                                                mem[mem[ceil32(stor21.length.field_1) + 224] + ceil32(stor21.length.field_1) + stor21.length.field_1 + 326] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294 len ceil32(mem[ceil32(stor21.length.field_1) + 224]) + 32], 
                                            s = 0
                                            idx = cd[4]
                                            while idx:
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                idx = idx / 10
                                                continue 
                                            if s > test266151307():
                                                revert with 0, 65
                                            mem[ceil32(stor21.length.field_1) + 160] = s
                                            if not s:
                                                t = s
                                                idx = cd[4]
                                                while idx:
                                                    if t < 1:
                                                        revert with 0, 17
                                                    if 48 > !(idx % 10):
                                                        revert with 0, 17
                                                    if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                        revert with 0, 50
                                                    mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                    t = t - 1
                                                    idx = idx / 10
                                                    continue 
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                                if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                                    if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                        _23245 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23245)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23245)]
                                                        if ceil32(_23245) > _23245:
                                                            mem[_23245 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23245) + 32], 
                                                    _23246 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23246)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23246)]
                                                    if ceil32(_23246) > _23246:
                                                        mem[_23246 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23246) + 32], 
                                                mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                    _23247 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23247)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23247)]
                                                    if ceil32(_23247) > _23247:
                                                        mem[_23247 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23247) + 32], 
                                                _23248 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23248)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23248)]
                                                if ceil32(_23248) > _23248:
                                                    mem[_23248 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23248) + 32], 
                                            mem[ceil32(stor21.length.field_1) + 192 len s] = call.data[calldata.size len s]
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                    _23249 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23249)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23249)]
                                                    if ceil32(_23249) > _23249:
                                                        mem[_23249 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23249) + 32], 
                                                _23250 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23250)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23250)]
                                                if ceil32(_23250) > _23250:
                                                    mem[_23250 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23250) + 32], 
                                            mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _23251 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23251)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23251)]
                                                if ceil32(_23251) > _23251:
                                                    mem[_23251 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23251) + 32], 
                                            _23252 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23252)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23252)]
                                            if ceil32(_23252) > _23252:
                                                mem[_23252 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23252) + 32], 
                                        mem[ceil32(stor21.length.field_1) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(stor21.length.field_1) + 164] = cd[4]
                                        require ext_code.size(stor26)
                                        staticcall stor26.0xff74ef30 with:
                                                gas gas_remaining wei
                                               args cd[4]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(stor21.length.field_1) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _578 = mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                        require mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                        require ceil32(stor21.length.field_1) + return_data.size + 160 > ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                        _653 = mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                        if mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                            revert with 0, 65
                                        if ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                        mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160] = _653
                                        require _578 + _653 + 32 <= return_data.size
                                        mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_653)] = mem[ceil32(stor21.length.field_1) + _578 + 192 len ceil32(_653)]
                                        if ceil32(_653) <= _653:
                                            _9131 = mem[64]
                                            mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                                mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_653)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_653)]
                                                mem[_9131 + stor21.length.field_1 + _653 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                if ceil32(_653) <= _653:
                                                    _19285 = mem[64]
                                                    mem[64] = _9131 + stor21.length.field_1 + _653 + 37
                                                    mem[_9131 + stor21.length.field_1 + _653 + 37] = 32
                                                    _19921 = mem[_19285]
                                                    mem[_9131 + stor21.length.field_1 + _653 + 69] = mem[_19285]
                                                    mem[_9131 + stor21.length.field_1 + _653 + 101 len ceil32(_19921)] = mem[_19285 + 32 len ceil32(_19921)]
                                                    if ceil32(_19921) > _19921:
                                                        mem[_19921 + _9131 + stor21.length.field_1 + _653 + 101] = 0
                                                    return 32, mem[_9131 + stor21.length.field_1 + _653 + 69 len ceil32(_19921) + 32]
                                                _19286 = mem[64]
                                                mem[64] = _9131 + stor21.length.field_1 + _653 + 37
                                                mem[_9131 + stor21.length.field_1 + _653 + 37] = 32
                                                _19922 = mem[_19286]
                                                mem[_9131 + stor21.length.field_1 + _653 + 69] = mem[_19286]
                                                mem[_9131 + stor21.length.field_1 + _653 + 101 len ceil32(_19922)] = mem[_19286 + 32 len ceil32(_19922)]
                                                if ceil32(_19922) > _19922:
                                                    mem[_19922 + _9131 + stor21.length.field_1 + _653 + 101] = 0
                                                return 32, mem[_9131 + stor21.length.field_1 + _653 + 69 len ceil32(_19922) + 32]
                                            mem[stor21.length.field_1 + mem[64] + 32] = 0
                                            mem[_9131 + stor21.length.field_1 + 32 len ceil32(_653)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_653)]
                                            mem[_9131 + stor21.length.field_1 + _653 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_653) <= _653:
                                                _19287 = mem[64]
                                                mem[64] = _9131 + stor21.length.field_1 + _653 + 37
                                                mem[_9131 + stor21.length.field_1 + _653 + 37] = 32
                                                _19923 = mem[_19287]
                                                mem[_9131 + stor21.length.field_1 + _653 + 69] = mem[_19287]
                                                mem[_9131 + stor21.length.field_1 + _653 + 101 len ceil32(_19923)] = mem[_19287 + 32 len ceil32(_19923)]
                                                if ceil32(_19923) > _19923:
                                                    mem[_19923 + _9131 + stor21.length.field_1 + _653 + 101] = 0
                                                return 32, mem[_9131 + stor21.length.field_1 + _653 + 69 len ceil32(_19923) + 32]
                                            _19288 = mem[64]
                                            mem[64] = _9131 + stor21.length.field_1 + _653 + 37
                                            mem[_9131 + stor21.length.field_1 + _653 + 37] = 32
                                            _19924 = mem[_19288]
                                            mem[_9131 + stor21.length.field_1 + _653 + 69] = mem[_19288]
                                            mem[_9131 + stor21.length.field_1 + _653 + 101 len ceil32(_19924)] = mem[_19288 + 32 len ceil32(_19924)]
                                            if ceil32(_19924) > _19924:
                                                mem[_19924 + _9131 + stor21.length.field_1 + _653 + 101] = 0
                                            return 32, mem[_9131 + stor21.length.field_1 + _653 + 69 len ceil32(_19924) + 32]
                                        mem[_653 + ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192] = 0
                                        _9132 = mem[64]
                                        mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_653)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_653)]
                                            mem[_9132 + stor21.length.field_1 + _653 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_653) <= _653:
                                                _19289 = mem[64]
                                                mem[64] = _9132 + stor21.length.field_1 + _653 + 37
                                                mem[_9132 + stor21.length.field_1 + _653 + 37] = 32
                                                _19925 = mem[_19289]
                                                mem[_9132 + stor21.length.field_1 + _653 + 69] = mem[_19289]
                                                mem[_9132 + stor21.length.field_1 + _653 + 101 len ceil32(_19925)] = mem[_19289 + 32 len ceil32(_19925)]
                                                if ceil32(_19925) > _19925:
                                                    mem[_19925 + _9132 + stor21.length.field_1 + _653 + 101] = 0
                                                return 32, mem[_9132 + stor21.length.field_1 + _653 + 69 len ceil32(_19925) + 32]
                                            _19290 = mem[64]
                                            mem[64] = _9132 + stor21.length.field_1 + _653 + 37
                                            mem[_9132 + stor21.length.field_1 + _653 + 37] = 32
                                            _19926 = mem[_19290]
                                            mem[_9132 + stor21.length.field_1 + _653 + 69] = mem[_19290]
                                            mem[_9132 + stor21.length.field_1 + _653 + 101 len ceil32(_19926)] = mem[_19290 + 32 len ceil32(_19926)]
                                            if ceil32(_19926) > _19926:
                                                mem[_19926 + _9132 + stor21.length.field_1 + _653 + 101] = 0
                                            return 32, mem[_9132 + stor21.length.field_1 + _653 + 69 len ceil32(_19926) + 32]
                                        mem[stor21.length.field_1 + mem[64] + 32] = 0
                                        mem[_9132 + stor21.length.field_1 + 32 len ceil32(_653)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_653)]
                                        mem[_9132 + stor21.length.field_1 + _653 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_653) <= _653:
                                            _19291 = mem[64]
                                            mem[64] = _9132 + stor21.length.field_1 + _653 + 37
                                            mem[_9132 + stor21.length.field_1 + _653 + 37] = 32
                                            _19927 = mem[_19291]
                                            mem[_9132 + stor21.length.field_1 + _653 + 69] = mem[_19291]
                                            mem[_9132 + stor21.length.field_1 + _653 + 101 len ceil32(_19927)] = mem[_19291 + 32 len ceil32(_19927)]
                                            if ceil32(_19927) > _19927:
                                                mem[_19927 + _9132 + stor21.length.field_1 + _653 + 101] = 0
                                            return 32, mem[_9132 + stor21.length.field_1 + _653 + 69 len ceil32(_19927) + 32]
                                        _19292 = mem[64]
                                        mem[64] = _9132 + stor21.length.field_1 + _653 + 37
                                        mem[_9132 + stor21.length.field_1 + _653 + 37] = 32
                                        _19928 = mem[_19292]
                                        mem[_9132 + stor21.length.field_1 + _653 + 69] = mem[_19292]
                                        mem[_9132 + stor21.length.field_1 + _653 + 101 len ceil32(_19928)] = mem[_19292 + 32 len ceil32(_19928)]
                                        if ceil32(_19928) > _19928:
                                            mem[_19928 + _9132 + stor21.length.field_1 + _653 + 101] = 0
                                        return 32, mem[_9132 + stor21.length.field_1 + _653 + 69 len ceil32(_19928) + 32]
                                    if 31 >= uint255(stor21.length) * 0.5:
                                        mem[160] = 256 * stor21.length.field_8
                                        if not stor26:
                                            if not cd[4]:
                                                mem[ceil32(stor21.length.field_1) + 256 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                                mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 262] = 32
                                                mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294] = mem[ceil32(stor21.length.field_1) + 224]
                                                mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])] = mem[ceil32(stor21.length.field_1) + 256 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]
                                                if ceil32(mem[ceil32(stor21.length.field_1) + 224]) <= mem[ceil32(stor21.length.field_1) + 224]:
                                                    return Array(len=mem[ceil32(stor21.length.field_1) + 224], data=mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]), 
                                                mem[mem[ceil32(stor21.length.field_1) + 224] + ceil32(stor21.length.field_1) + stor21.length.field_1 + 326] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294 len ceil32(mem[ceil32(stor21.length.field_1) + 224]) + 32], 
                                            s = 0
                                            idx = cd[4]
                                            while idx:
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                idx = idx / 10
                                                continue 
                                            if s > test266151307():
                                                revert with 0, 65
                                            mem[ceil32(stor21.length.field_1) + 160] = s
                                            if not s:
                                                t = s
                                                idx = cd[4]
                                                while idx:
                                                    if t < 1:
                                                        revert with 0, 17
                                                    if 48 > !(idx % 10):
                                                        revert with 0, 17
                                                    if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                        revert with 0, 50
                                                    mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                    t = t - 1
                                                    idx = idx / 10
                                                    continue 
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                                if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                                    if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                        _23269 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23269)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23269)]
                                                        if ceil32(_23269) > _23269:
                                                            mem[_23269 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23269) + 32], 
                                                    _23270 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23270)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23270)]
                                                    if ceil32(_23270) > _23270:
                                                        mem[_23270 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23270) + 32], 
                                                mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                    _23271 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23271)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23271)]
                                                    if ceil32(_23271) > _23271:
                                                        mem[_23271 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23271) + 32], 
                                                _23272 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23272)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23272)]
                                                if ceil32(_23272) > _23272:
                                                    mem[_23272 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23272) + 32], 
                                            mem[ceil32(stor21.length.field_1) + 192 len s] = call.data[calldata.size len s]
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                    _23273 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23273)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23273)]
                                                    if ceil32(_23273) > _23273:
                                                        mem[_23273 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23273) + 32], 
                                                _23274 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23274)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23274)]
                                                if ceil32(_23274) > _23274:
                                                    mem[_23274 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23274) + 32], 
                                            mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _23275 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23275)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23275)]
                                                if ceil32(_23275) > _23275:
                                                    mem[_23275 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23275) + 32], 
                                            _23276 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23276)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23276)]
                                            if ceil32(_23276) > _23276:
                                                mem[_23276 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23276) + 32], 
                                        mem[ceil32(stor21.length.field_1) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(stor21.length.field_1) + 164] = cd[4]
                                        require ext_code.size(stor26)
                                        staticcall stor26.0xff74ef30 with:
                                                gas gas_remaining wei
                                               args cd[4]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(stor21.length.field_1) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _656 = mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                        require mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                        require ceil32(stor21.length.field_1) + return_data.size + 160 > ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                        _724 = mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                        if mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                            revert with 0, 65
                                        if ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                        mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160] = _724
                                        require _656 + _724 + 32 <= return_data.size
                                        mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_724)] = mem[ceil32(stor21.length.field_1) + _656 + 192 len ceil32(_724)]
                                        if ceil32(_724) <= _724:
                                            _9135 = mem[64]
                                            mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                                mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_724)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_724)]
                                                mem[_9135 + stor21.length.field_1 + _724 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                if ceil32(_724) <= _724:
                                                    _19299 = mem[64]
                                                    mem[64] = _9135 + stor21.length.field_1 + _724 + 37
                                                    mem[_9135 + stor21.length.field_1 + _724 + 37] = 32
                                                    _19953 = mem[_19299]
                                                    mem[_9135 + stor21.length.field_1 + _724 + 69] = mem[_19299]
                                                    mem[_9135 + stor21.length.field_1 + _724 + 101 len ceil32(_19953)] = mem[_19299 + 32 len ceil32(_19953)]
                                                    if ceil32(_19953) > _19953:
                                                        mem[_19953 + _9135 + stor21.length.field_1 + _724 + 101] = 0
                                                    return 32, mem[_9135 + stor21.length.field_1 + _724 + 69 len ceil32(_19953) + 32]
                                                _19300 = mem[64]
                                                mem[64] = _9135 + stor21.length.field_1 + _724 + 37
                                                mem[_9135 + stor21.length.field_1 + _724 + 37] = 32
                                                _19954 = mem[_19300]
                                                mem[_9135 + stor21.length.field_1 + _724 + 69] = mem[_19300]
                                                mem[_9135 + stor21.length.field_1 + _724 + 101 len ceil32(_19954)] = mem[_19300 + 32 len ceil32(_19954)]
                                                if ceil32(_19954) > _19954:
                                                    mem[_19954 + _9135 + stor21.length.field_1 + _724 + 101] = 0
                                                return 32, mem[_9135 + stor21.length.field_1 + _724 + 69 len ceil32(_19954) + 32]
                                            mem[stor21.length.field_1 + mem[64] + 32] = 0
                                            mem[_9135 + stor21.length.field_1 + 32 len ceil32(_724)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_724)]
                                            mem[_9135 + stor21.length.field_1 + _724 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_724) <= _724:
                                                _19301 = mem[64]
                                                mem[64] = _9135 + stor21.length.field_1 + _724 + 37
                                                mem[_9135 + stor21.length.field_1 + _724 + 37] = 32
                                                _19955 = mem[_19301]
                                                mem[_9135 + stor21.length.field_1 + _724 + 69] = mem[_19301]
                                                mem[_9135 + stor21.length.field_1 + _724 + 101 len ceil32(_19955)] = mem[_19301 + 32 len ceil32(_19955)]
                                                if ceil32(_19955) > _19955:
                                                    mem[_19955 + _9135 + stor21.length.field_1 + _724 + 101] = 0
                                                return 32, mem[_9135 + stor21.length.field_1 + _724 + 69 len ceil32(_19955) + 32]
                                            _19302 = mem[64]
                                            mem[64] = _9135 + stor21.length.field_1 + _724 + 37
                                            mem[_9135 + stor21.length.field_1 + _724 + 37] = 32
                                            _19956 = mem[_19302]
                                            mem[_9135 + stor21.length.field_1 + _724 + 69] = mem[_19302]
                                            mem[_9135 + stor21.length.field_1 + _724 + 101 len ceil32(_19956)] = mem[_19302 + 32 len ceil32(_19956)]
                                            if ceil32(_19956) > _19956:
                                                mem[_19956 + _9135 + stor21.length.field_1 + _724 + 101] = 0
                                            return 32, mem[_9135 + stor21.length.field_1 + _724 + 69 len ceil32(_19956) + 32]
                                        mem[_724 + ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192] = 0
                                        _9136 = mem[64]
                                        mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_724)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_724)]
                                            mem[_9136 + stor21.length.field_1 + _724 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_724) <= _724:
                                                _19303 = mem[64]
                                                mem[64] = _9136 + stor21.length.field_1 + _724 + 37
                                                mem[_9136 + stor21.length.field_1 + _724 + 37] = 32
                                                _19957 = mem[_19303]
                                                mem[_9136 + stor21.length.field_1 + _724 + 69] = mem[_19303]
                                                mem[_9136 + stor21.length.field_1 + _724 + 101 len ceil32(_19957)] = mem[_19303 + 32 len ceil32(_19957)]
                                                if ceil32(_19957) > _19957:
                                                    mem[_19957 + _9136 + stor21.length.field_1 + _724 + 101] = 0
                                                return 32, mem[_9136 + stor21.length.field_1 + _724 + 69 len ceil32(_19957) + 32]
                                            _19304 = mem[64]
                                            mem[64] = _9136 + stor21.length.field_1 + _724 + 37
                                            mem[_9136 + stor21.length.field_1 + _724 + 37] = 32
                                            _19958 = mem[_19304]
                                            mem[_9136 + stor21.length.field_1 + _724 + 69] = mem[_19304]
                                            mem[_9136 + stor21.length.field_1 + _724 + 101 len ceil32(_19958)] = mem[_19304 + 32 len ceil32(_19958)]
                                            if ceil32(_19958) > _19958:
                                                mem[_19958 + _9136 + stor21.length.field_1 + _724 + 101] = 0
                                            return 32, mem[_9136 + stor21.length.field_1 + _724 + 69 len ceil32(_19958) + 32]
                                        mem[stor21.length.field_1 + mem[64] + 32] = 0
                                        mem[_9136 + stor21.length.field_1 + 32 len ceil32(_724)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_724)]
                                        mem[_9136 + stor21.length.field_1 + _724 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_724) <= _724:
                                            _19305 = mem[64]
                                            mem[64] = _9136 + stor21.length.field_1 + _724 + 37
                                            mem[_9136 + stor21.length.field_1 + _724 + 37] = 32
                                            _19959 = mem[_19305]
                                            mem[_9136 + stor21.length.field_1 + _724 + 69] = mem[_19305]
                                            mem[_9136 + stor21.length.field_1 + _724 + 101 len ceil32(_19959)] = mem[_19305 + 32 len ceil32(_19959)]
                                            if ceil32(_19959) > _19959:
                                                mem[_19959 + _9136 + stor21.length.field_1 + _724 + 101] = 0
                                            return 32, mem[_9136 + stor21.length.field_1 + _724 + 69 len ceil32(_19959) + 32]
                                        _19306 = mem[64]
                                        mem[64] = _9136 + stor21.length.field_1 + _724 + 37
                                        mem[_9136 + stor21.length.field_1 + _724 + 37] = 32
                                        _19960 = mem[_19306]
                                        mem[_9136 + stor21.length.field_1 + _724 + 69] = mem[_19306]
                                        mem[_9136 + stor21.length.field_1 + _724 + 101 len ceil32(_19960)] = mem[_19306 + 32 len ceil32(_19960)]
                                        if ceil32(_19960) > _19960:
                                            mem[_19960 + _9136 + stor21.length.field_1 + _724 + 101] = 0
                                        return 32, mem[_9136 + stor21.length.field_1 + _724 + 69 len ceil32(_19960) + 32]
                                    mem[0] = 21
                                    mem[160] = uint256(stor21.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor21.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor21[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if not stor26:
                                        if not cd[4]:
                                            mem[ceil32(stor21.length.field_1) + 256 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 262] = 32
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294] = mem[ceil32(stor21.length.field_1) + 224]
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])] = mem[ceil32(stor21.length.field_1) + 256 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 224]) <= mem[ceil32(stor21.length.field_1) + 224]:
                                                return Array(len=mem[ceil32(stor21.length.field_1) + 224], data=mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]), 
                                            mem[mem[ceil32(stor21.length.field_1) + 224] + ceil32(stor21.length.field_1) + stor21.length.field_1 + 326] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294 len ceil32(mem[ceil32(stor21.length.field_1) + 224]) + 32], 
                                        s = 0
                                        idx = cd[4]
                                        while idx:
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            idx = idx / 10
                                            continue 
                                        if s > test266151307():
                                            revert with 0, 65
                                        mem[ceil32(stor21.length.field_1) + 160] = s
                                        if not s:
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                    _25129 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25129)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25129)]
                                                    if ceil32(_25129) > _25129:
                                                        mem[_25129 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25129) + 32], 
                                                _25130 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25130)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25130)]
                                                if ceil32(_25130) > _25130:
                                                    mem[_25130 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25130) + 32], 
                                            mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _25131 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25131)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25131)]
                                                if ceil32(_25131) > _25131:
                                                    mem[_25131 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25131) + 32], 
                                            _25132 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25132)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25132)]
                                            if ceil32(_25132) > _25132:
                                                mem[_25132 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25132) + 32], 
                                        mem[ceil32(stor21.length.field_1) + 192 len s] = call.data[calldata.size len s]
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _25133 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25133)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25133)]
                                                if ceil32(_25133) > _25133:
                                                    mem[_25133 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25133) + 32], 
                                            _25134 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25134)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25134)]
                                            if ceil32(_25134) > _25134:
                                                mem[_25134 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25134) + 32], 
                                        mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _25135 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25135)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25135)]
                                            if ceil32(_25135) > _25135:
                                                mem[_25135 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25135) + 32], 
                                        _25136 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25136)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25136)]
                                        if ceil32(_25136) > _25136:
                                            mem[_25136 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25136) + 32], 
                                    mem[ceil32(stor21.length.field_1) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(stor21.length.field_1) + 164] = cd[4]
                                    require ext_code.size(stor26)
                                    staticcall stor26.0xff74ef30 with:
                                            gas gas_remaining wei
                                           args cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(stor21.length.field_1) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160
                                    require return_data.size >= 32
                                    _9744 = mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                    require mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                    require ceil32(stor21.length.field_1) + return_data.size + 160 > ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                    _10706 = mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                    if mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                    mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160] = _10706
                                    require _9744 + _10706 + 32 <= return_data.size
                                    mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10706)] = mem[ceil32(stor21.length.field_1) + _9744 + 192 len ceil32(_10706)]
                                    if ceil32(_10706) <= _10706:
                                        _15474 = mem[64]
                                        mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_10706)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10706)]
                                            mem[_15474 + stor21.length.field_1 + _10706 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_10706) <= _10706:
                                                _22485 = mem[64]
                                                mem[64] = _15474 + stor21.length.field_1 + _10706 + 37
                                                mem[_15474 + stor21.length.field_1 + _10706 + 37] = 32
                                                _23253 = mem[_22485]
                                                mem[_15474 + stor21.length.field_1 + _10706 + 69] = mem[_22485]
                                                mem[_15474 + stor21.length.field_1 + _10706 + 101 len ceil32(_23253)] = mem[_22485 + 32 len ceil32(_23253)]
                                                if ceil32(_23253) > _23253:
                                                    mem[_23253 + _15474 + stor21.length.field_1 + _10706 + 101] = 0
                                                return 32, mem[_15474 + stor21.length.field_1 + _10706 + 69 len ceil32(_23253) + 32]
                                            _22486 = mem[64]
                                            mem[64] = _15474 + stor21.length.field_1 + _10706 + 37
                                            mem[_15474 + stor21.length.field_1 + _10706 + 37] = 32
                                            _23254 = mem[_22486]
                                            mem[_15474 + stor21.length.field_1 + _10706 + 69] = mem[_22486]
                                            mem[_15474 + stor21.length.field_1 + _10706 + 101 len ceil32(_23254)] = mem[_22486 + 32 len ceil32(_23254)]
                                            if ceil32(_23254) > _23254:
                                                mem[_23254 + _15474 + stor21.length.field_1 + _10706 + 101] = 0
                                            return 32, mem[_15474 + stor21.length.field_1 + _10706 + 69 len ceil32(_23254) + 32]
                                        mem[stor21.length.field_1 + mem[64] + 32] = 0
                                        mem[_15474 + stor21.length.field_1 + 32 len ceil32(_10706)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10706)]
                                        mem[_15474 + stor21.length.field_1 + _10706 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_10706) <= _10706:
                                            _22487 = mem[64]
                                            mem[64] = _15474 + stor21.length.field_1 + _10706 + 37
                                            mem[_15474 + stor21.length.field_1 + _10706 + 37] = 32
                                            _23255 = mem[_22487]
                                            mem[_15474 + stor21.length.field_1 + _10706 + 69] = mem[_22487]
                                            mem[_15474 + stor21.length.field_1 + _10706 + 101 len ceil32(_23255)] = mem[_22487 + 32 len ceil32(_23255)]
                                            if ceil32(_23255) > _23255:
                                                mem[_23255 + _15474 + stor21.length.field_1 + _10706 + 101] = 0
                                            return 32, mem[_15474 + stor21.length.field_1 + _10706 + 69 len ceil32(_23255) + 32]
                                        _22488 = mem[64]
                                        mem[64] = _15474 + stor21.length.field_1 + _10706 + 37
                                        mem[_15474 + stor21.length.field_1 + _10706 + 37] = 32
                                        _23256 = mem[_22488]
                                        mem[_15474 + stor21.length.field_1 + _10706 + 69] = mem[_22488]
                                        mem[_15474 + stor21.length.field_1 + _10706 + 101 len ceil32(_23256)] = mem[_22488 + 32 len ceil32(_23256)]
                                        if ceil32(_23256) > _23256:
                                            mem[_23256 + _15474 + stor21.length.field_1 + _10706 + 101] = 0
                                        return 32, mem[_15474 + stor21.length.field_1 + _10706 + 69 len ceil32(_23256) + 32]
                                    mem[_10706 + ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192] = 0
                                    _15475 = mem[64]
                                    mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_10706)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10706)]
                                        mem[_15475 + stor21.length.field_1 + _10706 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_10706) <= _10706:
                                            _22489 = mem[64]
                                            mem[64] = _15475 + stor21.length.field_1 + _10706 + 37
                                            mem[_15475 + stor21.length.field_1 + _10706 + 37] = 32
                                            _23257 = mem[_22489]
                                            mem[_15475 + stor21.length.field_1 + _10706 + 69] = mem[_22489]
                                            mem[_15475 + stor21.length.field_1 + _10706 + 101 len ceil32(_23257)] = mem[_22489 + 32 len ceil32(_23257)]
                                            if ceil32(_23257) > _23257:
                                                mem[_23257 + _15475 + stor21.length.field_1 + _10706 + 101] = 0
                                            return 32, mem[_15475 + stor21.length.field_1 + _10706 + 69 len ceil32(_23257) + 32]
                                        _22490 = mem[64]
                                        mem[64] = _15475 + stor21.length.field_1 + _10706 + 37
                                        mem[_15475 + stor21.length.field_1 + _10706 + 37] = 32
                                        _23258 = mem[_22490]
                                        mem[_15475 + stor21.length.field_1 + _10706 + 69] = mem[_22490]
                                        mem[_15475 + stor21.length.field_1 + _10706 + 101 len ceil32(_23258)] = mem[_22490 + 32 len ceil32(_23258)]
                                        if ceil32(_23258) > _23258:
                                            mem[_23258 + _15475 + stor21.length.field_1 + _10706 + 101] = 0
                                        return 32, mem[_15475 + stor21.length.field_1 + _10706 + 69 len ceil32(_23258) + 32]
                                    mem[stor21.length.field_1 + mem[64] + 32] = 0
                                    mem[_15475 + stor21.length.field_1 + 32 len ceil32(_10706)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10706)]
                                    mem[_15475 + stor21.length.field_1 + _10706 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_10706) <= _10706:
                                        _22491 = mem[64]
                                        mem[64] = _15475 + stor21.length.field_1 + _10706 + 37
                                        mem[_15475 + stor21.length.field_1 + _10706 + 37] = 32
                                        _23259 = mem[_22491]
                                        mem[_15475 + stor21.length.field_1 + _10706 + 69] = mem[_22491]
                                        mem[_15475 + stor21.length.field_1 + _10706 + 101 len ceil32(_23259)] = mem[_22491 + 32 len ceil32(_23259)]
                                        if ceil32(_23259) > _23259:
                                            mem[_23259 + _15475 + stor21.length.field_1 + _10706 + 101] = 0
                                        return 32, mem[_15475 + stor21.length.field_1 + _10706 + 69 len ceil32(_23259) + 32]
                                    _22492 = mem[64]
                                    mem[64] = _15475 + stor21.length.field_1 + _10706 + 37
                                    mem[_15475 + stor21.length.field_1 + _10706 + 37] = 32
                                    _23260 = mem[_22492]
                                    mem[_15475 + stor21.length.field_1 + _10706 + 69] = mem[_22492]
                                    mem[_15475 + stor21.length.field_1 + _10706 + 101 len ceil32(_23260)] = mem[_22492 + 32 len ceil32(_23260)]
                                    if ceil32(_23260) > _23260:
                                        mem[_23260 + _15475 + stor21.length.field_1 + _10706 + 101] = 0
                                    return 32, mem[_15475 + stor21.length.field_1 + _10706 + 69 len ceil32(_23260) + 32]
                                if bool(stor21.length) == stor21.length.field_1 < 32:
                                    revert with 0, 34
                                if not stor21.length.field_1:
                                    if not stor26:
                                        if not cd[4]:
                                            mem[ceil32(stor21.length.field_1) + 256 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 262] = 32
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294] = mem[ceil32(stor21.length.field_1) + 224]
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])] = mem[ceil32(stor21.length.field_1) + 256 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 224]) <= mem[ceil32(stor21.length.field_1) + 224]:
                                                return Array(len=mem[ceil32(stor21.length.field_1) + 224], data=mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]), 
                                            mem[mem[ceil32(stor21.length.field_1) + 224] + ceil32(stor21.length.field_1) + stor21.length.field_1 + 326] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294 len ceil32(mem[ceil32(stor21.length.field_1) + 224]) + 32], 
                                        s = 0
                                        idx = cd[4]
                                        while idx:
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            idx = idx / 10
                                            continue 
                                        if s > test266151307():
                                            revert with 0, 65
                                        mem[ceil32(stor21.length.field_1) + 160] = s
                                        if not s:
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                    _23277 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23277)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23277)]
                                                    if ceil32(_23277) > _23277:
                                                        mem[_23277 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23277) + 32], 
                                                _23278 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23278)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23278)]
                                                if ceil32(_23278) > _23278:
                                                    mem[_23278 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23278) + 32], 
                                            mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _23279 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23279)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23279)]
                                                if ceil32(_23279) > _23279:
                                                    mem[_23279 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23279) + 32], 
                                            _23280 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23280)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23280)]
                                            if ceil32(_23280) > _23280:
                                                mem[_23280 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23280) + 32], 
                                        mem[ceil32(stor21.length.field_1) + 192 len s] = call.data[calldata.size len s]
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _23281 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23281)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23281)]
                                                if ceil32(_23281) > _23281:
                                                    mem[_23281 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23281) + 32], 
                                            _23282 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23282)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23282)]
                                            if ceil32(_23282) > _23282:
                                                mem[_23282 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23282) + 32], 
                                        mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _23283 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23283)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23283)]
                                            if ceil32(_23283) > _23283:
                                                mem[_23283 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23283) + 32], 
                                        _23284 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23284)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23284)]
                                        if ceil32(_23284) > _23284:
                                            mem[_23284 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23284) + 32], 
                                    mem[ceil32(stor21.length.field_1) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(stor21.length.field_1) + 164] = cd[4]
                                    require ext_code.size(stor26)
                                    staticcall stor26.0xff74ef30 with:
                                            gas gas_remaining wei
                                           args cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(stor21.length.field_1) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160
                                    require return_data.size >= 32
                                    _616 = mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                    require mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                    require ceil32(stor21.length.field_1) + return_data.size + 160 > ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                    _688 = mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                    if mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                    mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160] = _688
                                    require _616 + _688 + 32 <= return_data.size
                                    mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_688)] = mem[ceil32(stor21.length.field_1) + _616 + 192 len ceil32(_688)]
                                    if ceil32(_688) <= _688:
                                        _9137 = mem[64]
                                        mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_688)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_688)]
                                            mem[_9137 + stor21.length.field_1 + _688 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_688) <= _688:
                                                _19307 = mem[64]
                                                mem[64] = _9137 + stor21.length.field_1 + _688 + 37
                                                mem[_9137 + stor21.length.field_1 + _688 + 37] = 32
                                                _19969 = mem[_19307]
                                                mem[_9137 + stor21.length.field_1 + _688 + 69] = mem[_19307]
                                                mem[_9137 + stor21.length.field_1 + _688 + 101 len ceil32(_19969)] = mem[_19307 + 32 len ceil32(_19969)]
                                                if ceil32(_19969) > _19969:
                                                    mem[_19969 + _9137 + stor21.length.field_1 + _688 + 101] = 0
                                                return 32, mem[_9137 + stor21.length.field_1 + _688 + 69 len ceil32(_19969) + 32]
                                            _19308 = mem[64]
                                            mem[64] = _9137 + stor21.length.field_1 + _688 + 37
                                            mem[_9137 + stor21.length.field_1 + _688 + 37] = 32
                                            _19970 = mem[_19308]
                                            mem[_9137 + stor21.length.field_1 + _688 + 69] = mem[_19308]
                                            mem[_9137 + stor21.length.field_1 + _688 + 101 len ceil32(_19970)] = mem[_19308 + 32 len ceil32(_19970)]
                                            if ceil32(_19970) > _19970:
                                                mem[_19970 + _9137 + stor21.length.field_1 + _688 + 101] = 0
                                            return 32, mem[_9137 + stor21.length.field_1 + _688 + 69 len ceil32(_19970) + 32]
                                        mem[stor21.length.field_1 + mem[64] + 32] = 0
                                        mem[_9137 + stor21.length.field_1 + 32 len ceil32(_688)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_688)]
                                        mem[_9137 + stor21.length.field_1 + _688 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_688) <= _688:
                                            _19309 = mem[64]
                                            mem[64] = _9137 + stor21.length.field_1 + _688 + 37
                                            mem[_9137 + stor21.length.field_1 + _688 + 37] = 32
                                            _19971 = mem[_19309]
                                            mem[_9137 + stor21.length.field_1 + _688 + 69] = mem[_19309]
                                            mem[_9137 + stor21.length.field_1 + _688 + 101 len ceil32(_19971)] = mem[_19309 + 32 len ceil32(_19971)]
                                            if ceil32(_19971) > _19971:
                                                mem[_19971 + _9137 + stor21.length.field_1 + _688 + 101] = 0
                                            return 32, mem[_9137 + stor21.length.field_1 + _688 + 69 len ceil32(_19971) + 32]
                                        _19310 = mem[64]
                                        mem[64] = _9137 + stor21.length.field_1 + _688 + 37
                                        mem[_9137 + stor21.length.field_1 + _688 + 37] = 32
                                        _19972 = mem[_19310]
                                        mem[_9137 + stor21.length.field_1 + _688 + 69] = mem[_19310]
                                        mem[_9137 + stor21.length.field_1 + _688 + 101 len ceil32(_19972)] = mem[_19310 + 32 len ceil32(_19972)]
                                        if ceil32(_19972) > _19972:
                                            mem[_19972 + _9137 + stor21.length.field_1 + _688 + 101] = 0
                                        return 32, mem[_9137 + stor21.length.field_1 + _688 + 69 len ceil32(_19972) + 32]
                                    mem[_688 + ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192] = 0
                                    _9138 = mem[64]
                                    mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_688)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_688)]
                                        mem[_9138 + stor21.length.field_1 + _688 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_688) <= _688:
                                            _19311 = mem[64]
                                            mem[64] = _9138 + stor21.length.field_1 + _688 + 37
                                            mem[_9138 + stor21.length.field_1 + _688 + 37] = 32
                                            _19973 = mem[_19311]
                                            mem[_9138 + stor21.length.field_1 + _688 + 69] = mem[_19311]
                                            mem[_9138 + stor21.length.field_1 + _688 + 101 len ceil32(_19973)] = mem[_19311 + 32 len ceil32(_19973)]
                                            if ceil32(_19973) > _19973:
                                                mem[_19973 + _9138 + stor21.length.field_1 + _688 + 101] = 0
                                            return 32, mem[_9138 + stor21.length.field_1 + _688 + 69 len ceil32(_19973) + 32]
                                        _19312 = mem[64]
                                        mem[64] = _9138 + stor21.length.field_1 + _688 + 37
                                        mem[_9138 + stor21.length.field_1 + _688 + 37] = 32
                                        _19974 = mem[_19312]
                                        mem[_9138 + stor21.length.field_1 + _688 + 69] = mem[_19312]
                                        mem[_9138 + stor21.length.field_1 + _688 + 101 len ceil32(_19974)] = mem[_19312 + 32 len ceil32(_19974)]
                                        if ceil32(_19974) > _19974:
                                            mem[_19974 + _9138 + stor21.length.field_1 + _688 + 101] = 0
                                        return 32, mem[_9138 + stor21.length.field_1 + _688 + 69 len ceil32(_19974) + 32]
                                    mem[stor21.length.field_1 + mem[64] + 32] = 0
                                    mem[_9138 + stor21.length.field_1 + 32 len ceil32(_688)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_688)]
                                    mem[_9138 + stor21.length.field_1 + _688 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_688) <= _688:
                                        _19313 = mem[64]
                                        mem[64] = _9138 + stor21.length.field_1 + _688 + 37
                                        mem[_9138 + stor21.length.field_1 + _688 + 37] = 32
                                        _19975 = mem[_19313]
                                        mem[_9138 + stor21.length.field_1 + _688 + 69] = mem[_19313]
                                        mem[_9138 + stor21.length.field_1 + _688 + 101 len ceil32(_19975)] = mem[_19313 + 32 len ceil32(_19975)]
                                        if ceil32(_19975) > _19975:
                                            mem[_19975 + _9138 + stor21.length.field_1 + _688 + 101] = 0
                                        return 32, mem[_9138 + stor21.length.field_1 + _688 + 69 len ceil32(_19975) + 32]
                                    _19314 = mem[64]
                                    mem[64] = _9138 + stor21.length.field_1 + _688 + 37
                                    mem[_9138 + stor21.length.field_1 + _688 + 37] = 32
                                    _19976 = mem[_19314]
                                    mem[_9138 + stor21.length.field_1 + _688 + 69] = mem[_19314]
                                    mem[_9138 + stor21.length.field_1 + _688 + 101 len ceil32(_19976)] = mem[_19314 + 32 len ceil32(_19976)]
                                    if ceil32(_19976) > _19976:
                                        mem[_19976 + _9138 + stor21.length.field_1 + _688 + 101] = 0
                                    return 32, mem[_9138 + stor21.length.field_1 + _688 + 69 len ceil32(_19976) + 32]
                                if 31 >= stor21.length.field_1:
                                    mem[160] = 256 * stor21.length.field_8
                                    if not stor26:
                                        if not cd[4]:
                                            mem[ceil32(stor21.length.field_1) + 256 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 262] = 32
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294] = mem[ceil32(stor21.length.field_1) + 224]
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])] = mem[ceil32(stor21.length.field_1) + 256 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 224]) <= mem[ceil32(stor21.length.field_1) + 224]:
                                                return Array(len=mem[ceil32(stor21.length.field_1) + 224], data=mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]), 
                                            mem[mem[ceil32(stor21.length.field_1) + 224] + ceil32(stor21.length.field_1) + stor21.length.field_1 + 326] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294 len ceil32(mem[ceil32(stor21.length.field_1) + 224]) + 32], 
                                        s = 0
                                        idx = cd[4]
                                        while idx:
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            idx = idx / 10
                                            continue 
                                        if s > test266151307():
                                            revert with 0, 65
                                        mem[ceil32(stor21.length.field_1) + 160] = s
                                        if not s:
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                    _23301 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23301)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23301)]
                                                    if ceil32(_23301) > _23301:
                                                        mem[_23301 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23301) + 32], 
                                                _23302 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23302)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23302)]
                                                if ceil32(_23302) > _23302:
                                                    mem[_23302 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23302) + 32], 
                                            mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _23303 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23303)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23303)]
                                                if ceil32(_23303) > _23303:
                                                    mem[_23303 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23303) + 32], 
                                            _23304 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23304)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23304)]
                                            if ceil32(_23304) > _23304:
                                                mem[_23304 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23304) + 32], 
                                        mem[ceil32(stor21.length.field_1) + 192 len s] = call.data[calldata.size len s]
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _23305 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23305)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23305)]
                                                if ceil32(_23305) > _23305:
                                                    mem[_23305 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23305) + 32], 
                                            _23306 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23306)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23306)]
                                            if ceil32(_23306) > _23306:
                                                mem[_23306 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23306) + 32], 
                                        mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _23307 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23307)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23307)]
                                            if ceil32(_23307) > _23307:
                                                mem[_23307 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23307) + 32], 
                                        _23308 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23308)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23308)]
                                        if ceil32(_23308) > _23308:
                                            mem[_23308 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23308) + 32], 
                                    mem[ceil32(stor21.length.field_1) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(stor21.length.field_1) + 164] = cd[4]
                                    require ext_code.size(stor26)
                                    staticcall stor26.0xff74ef30 with:
                                            gas gas_remaining wei
                                           args cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(stor21.length.field_1) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160
                                    require return_data.size >= 32
                                    _691 = mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                    require mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                    require ceil32(stor21.length.field_1) + return_data.size + 160 > ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                    _759 = mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                    if mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                    mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160] = _759
                                    require _691 + _759 + 32 <= return_data.size
                                    mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_759)] = mem[ceil32(stor21.length.field_1) + _691 + 192 len ceil32(_759)]
                                    if ceil32(_759) <= _759:
                                        _9141 = mem[64]
                                        mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_759)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_759)]
                                            mem[_9141 + stor21.length.field_1 + _759 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_759) <= _759:
                                                _19321 = mem[64]
                                                mem[64] = _9141 + stor21.length.field_1 + _759 + 37
                                                mem[_9141 + stor21.length.field_1 + _759 + 37] = 32
                                                _20001 = mem[_19321]
                                                mem[_9141 + stor21.length.field_1 + _759 + 69] = mem[_19321]
                                                mem[_9141 + stor21.length.field_1 + _759 + 101 len ceil32(_20001)] = mem[_19321 + 32 len ceil32(_20001)]
                                                if ceil32(_20001) > _20001:
                                                    mem[_20001 + _9141 + stor21.length.field_1 + _759 + 101] = 0
                                                return 32, mem[_9141 + stor21.length.field_1 + _759 + 69 len ceil32(_20001) + 32]
                                            _19322 = mem[64]
                                            mem[64] = _9141 + stor21.length.field_1 + _759 + 37
                                            mem[_9141 + stor21.length.field_1 + _759 + 37] = 32
                                            _20002 = mem[_19322]
                                            mem[_9141 + stor21.length.field_1 + _759 + 69] = mem[_19322]
                                            mem[_9141 + stor21.length.field_1 + _759 + 101 len ceil32(_20002)] = mem[_19322 + 32 len ceil32(_20002)]
                                            if ceil32(_20002) > _20002:
                                                mem[_20002 + _9141 + stor21.length.field_1 + _759 + 101] = 0
                                            return 32, mem[_9141 + stor21.length.field_1 + _759 + 69 len ceil32(_20002) + 32]
                                        mem[stor21.length.field_1 + mem[64] + 32] = 0
                                        mem[_9141 + stor21.length.field_1 + 32 len ceil32(_759)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_759)]
                                        mem[_9141 + stor21.length.field_1 + _759 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_759) <= _759:
                                            _19323 = mem[64]
                                            mem[64] = _9141 + stor21.length.field_1 + _759 + 37
                                            mem[_9141 + stor21.length.field_1 + _759 + 37] = 32
                                            _20003 = mem[_19323]
                                            mem[_9141 + stor21.length.field_1 + _759 + 69] = mem[_19323]
                                            mem[_9141 + stor21.length.field_1 + _759 + 101 len ceil32(_20003)] = mem[_19323 + 32 len ceil32(_20003)]
                                            if ceil32(_20003) > _20003:
                                                mem[_20003 + _9141 + stor21.length.field_1 + _759 + 101] = 0
                                            return 32, mem[_9141 + stor21.length.field_1 + _759 + 69 len ceil32(_20003) + 32]
                                        _19324 = mem[64]
                                        mem[64] = _9141 + stor21.length.field_1 + _759 + 37
                                        mem[_9141 + stor21.length.field_1 + _759 + 37] = 32
                                        _20004 = mem[_19324]
                                        mem[_9141 + stor21.length.field_1 + _759 + 69] = mem[_19324]
                                        mem[_9141 + stor21.length.field_1 + _759 + 101 len ceil32(_20004)] = mem[_19324 + 32 len ceil32(_20004)]
                                        if ceil32(_20004) > _20004:
                                            mem[_20004 + _9141 + stor21.length.field_1 + _759 + 101] = 0
                                        return 32, mem[_9141 + stor21.length.field_1 + _759 + 69 len ceil32(_20004) + 32]
                                    mem[_759 + ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192] = 0
                                    _9142 = mem[64]
                                    mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_759)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_759)]
                                        mem[_9142 + stor21.length.field_1 + _759 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_759) <= _759:
                                            _19325 = mem[64]
                                            mem[64] = _9142 + stor21.length.field_1 + _759 + 37
                                            mem[_9142 + stor21.length.field_1 + _759 + 37] = 32
                                            _20005 = mem[_19325]
                                            mem[_9142 + stor21.length.field_1 + _759 + 69] = mem[_19325]
                                            mem[_9142 + stor21.length.field_1 + _759 + 101 len ceil32(_20005)] = mem[_19325 + 32 len ceil32(_20005)]
                                            if ceil32(_20005) > _20005:
                                                mem[_20005 + _9142 + stor21.length.field_1 + _759 + 101] = 0
                                            return 32, mem[_9142 + stor21.length.field_1 + _759 + 69 len ceil32(_20005) + 32]
                                        _19326 = mem[64]
                                        mem[64] = _9142 + stor21.length.field_1 + _759 + 37
                                        mem[_9142 + stor21.length.field_1 + _759 + 37] = 32
                                        _20006 = mem[_19326]
                                        mem[_9142 + stor21.length.field_1 + _759 + 69] = mem[_19326]
                                        mem[_9142 + stor21.length.field_1 + _759 + 101 len ceil32(_20006)] = mem[_19326 + 32 len ceil32(_20006)]
                                        if ceil32(_20006) > _20006:
                                            mem[_20006 + _9142 + stor21.length.field_1 + _759 + 101] = 0
                                        return 32, mem[_9142 + stor21.length.field_1 + _759 + 69 len ceil32(_20006) + 32]
                                    mem[stor21.length.field_1 + mem[64] + 32] = 0
                                    mem[_9142 + stor21.length.field_1 + 32 len ceil32(_759)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_759)]
                                    mem[_9142 + stor21.length.field_1 + _759 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_759) <= _759:
                                        _19327 = mem[64]
                                        mem[64] = _9142 + stor21.length.field_1 + _759 + 37
                                        mem[_9142 + stor21.length.field_1 + _759 + 37] = 32
                                        _20007 = mem[_19327]
                                        mem[_9142 + stor21.length.field_1 + _759 + 69] = mem[_19327]
                                        mem[_9142 + stor21.length.field_1 + _759 + 101 len ceil32(_20007)] = mem[_19327 + 32 len ceil32(_20007)]
                                        if ceil32(_20007) > _20007:
                                            mem[_20007 + _9142 + stor21.length.field_1 + _759 + 101] = 0
                                        return 32, mem[_9142 + stor21.length.field_1 + _759 + 69 len ceil32(_20007) + 32]
                                    _19328 = mem[64]
                                    mem[64] = _9142 + stor21.length.field_1 + _759 + 37
                                    mem[_9142 + stor21.length.field_1 + _759 + 37] = 32
                                    _20008 = mem[_19328]
                                    mem[_9142 + stor21.length.field_1 + _759 + 69] = mem[_19328]
                                    mem[_9142 + stor21.length.field_1 + _759 + 101 len ceil32(_20008)] = mem[_19328 + 32 len ceil32(_20008)]
                                    if ceil32(_20008) > _20008:
                                        mem[_20008 + _9142 + stor21.length.field_1 + _759 + 101] = 0
                                    return 32, mem[_9142 + stor21.length.field_1 + _759 + 69 len ceil32(_20008) + 32]
                                mem[0] = 21
                                mem[160] = uint256(stor21.field_0)
                                idx = 160
                                s = 0
                                while stor21.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor21[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if not stor26:
                                    if not cd[4]:
                                        mem[ceil32(stor21.length.field_1) + 256 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 262] = 32
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294] = mem[ceil32(stor21.length.field_1) + 224]
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])] = mem[ceil32(stor21.length.field_1) + 256 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 224]) <= mem[ceil32(stor21.length.field_1) + 224]:
                                            return Array(len=mem[ceil32(stor21.length.field_1) + 224], data=mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]), 
                                        mem[mem[ceil32(stor21.length.field_1) + 224] + ceil32(stor21.length.field_1) + stor21.length.field_1 + 326] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294 len ceil32(mem[ceil32(stor21.length.field_1) + 224]) + 32], 
                                    s = 0
                                    idx = cd[4]
                                    while idx:
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        idx = idx / 10
                                        continue 
                                    if s > test266151307():
                                        revert with 0, 65
                                    mem[ceil32(stor21.length.field_1) + 160] = s
                                    if not s:
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _25137 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25137)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25137)]
                                                if ceil32(_25137) > _25137:
                                                    mem[_25137 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25137) + 32], 
                                            _25138 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25138)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25138)]
                                            if ceil32(_25138) > _25138:
                                                mem[_25138 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25138) + 32], 
                                        mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _25139 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25139)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25139)]
                                            if ceil32(_25139) > _25139:
                                                mem[_25139 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25139) + 32], 
                                        _25140 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25140)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25140)]
                                        if ceil32(_25140) > _25140:
                                            mem[_25140 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25140) + 32], 
                                    mem[ceil32(stor21.length.field_1) + 192 len s] = call.data[calldata.size len s]
                                    t = s
                                    idx = cd[4]
                                    while idx:
                                        if t < 1:
                                            revert with 0, 17
                                        if 48 > !(idx % 10):
                                            revert with 0, 17
                                        if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                            revert with 0, 50
                                        mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                        t = t - 1
                                        idx = idx / 10
                                        continue 
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _25141 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25141)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25141)]
                                            if ceil32(_25141) > _25141:
                                                mem[_25141 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25141) + 32], 
                                        _25142 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25142)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25142)]
                                        if ceil32(_25142) > _25142:
                                            mem[_25142 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25142) + 32], 
                                    mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                    if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                        _25143 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25143)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25143)]
                                        if ceil32(_25143) > _25143:
                                            mem[_25143 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25143) + 32], 
                                    _25144 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25144)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25144)]
                                    if ceil32(_25144) > _25144:
                                        mem[_25144 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25144) + 32], 
                                mem[ceil32(stor21.length.field_1) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(stor21.length.field_1) + 164] = cd[4]
                                require ext_code.size(stor26)
                                staticcall stor26.0xff74ef30 with:
                                        gas gas_remaining wei
                                       args cd[4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(stor21.length.field_1) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160
                                require return_data.size >= 32
                                _9754 = mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                require mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                require ceil32(stor21.length.field_1) + return_data.size + 160 > ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                _10715 = mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                if mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                    revert with 0, 65
                                mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160] = _10715
                                require _9754 + _10715 + 32 <= return_data.size
                                mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10715)] = mem[ceil32(stor21.length.field_1) + _9754 + 192 len ceil32(_10715)]
                                if ceil32(_10715) <= _10715:
                                    _15488 = mem[64]
                                    mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_10715)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10715)]
                                        mem[_15488 + stor21.length.field_1 + _10715 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_10715) <= _10715:
                                            _22509 = mem[64]
                                            mem[64] = _15488 + stor21.length.field_1 + _10715 + 37
                                            mem[_15488 + stor21.length.field_1 + _10715 + 37] = 32
                                            _23285 = mem[_22509]
                                            mem[_15488 + stor21.length.field_1 + _10715 + 69] = mem[_22509]
                                            mem[_15488 + stor21.length.field_1 + _10715 + 101 len ceil32(_23285)] = mem[_22509 + 32 len ceil32(_23285)]
                                            if ceil32(_23285) > _23285:
                                                mem[_23285 + _15488 + stor21.length.field_1 + _10715 + 101] = 0
                                            return 32, mem[_15488 + stor21.length.field_1 + _10715 + 69 len ceil32(_23285) + 32]
                                        _22510 = mem[64]
                                        mem[64] = _15488 + stor21.length.field_1 + _10715 + 37
                                        mem[_15488 + stor21.length.field_1 + _10715 + 37] = 32
                                        _23286 = mem[_22510]
                                        mem[_15488 + stor21.length.field_1 + _10715 + 69] = mem[_22510]
                                        mem[_15488 + stor21.length.field_1 + _10715 + 101 len ceil32(_23286)] = mem[_22510 + 32 len ceil32(_23286)]
                                        if ceil32(_23286) > _23286:
                                            mem[_23286 + _15488 + stor21.length.field_1 + _10715 + 101] = 0
                                        return 32, mem[_15488 + stor21.length.field_1 + _10715 + 69 len ceil32(_23286) + 32]
                                    mem[stor21.length.field_1 + mem[64] + 32] = 0
                                    mem[_15488 + stor21.length.field_1 + 32 len ceil32(_10715)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10715)]
                                    mem[_15488 + stor21.length.field_1 + _10715 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_10715) <= _10715:
                                        _22511 = mem[64]
                                        mem[64] = _15488 + stor21.length.field_1 + _10715 + 37
                                        mem[_15488 + stor21.length.field_1 + _10715 + 37] = 32
                                        _23287 = mem[_22511]
                                        mem[_15488 + stor21.length.field_1 + _10715 + 69] = mem[_22511]
                                        mem[_15488 + stor21.length.field_1 + _10715 + 101 len ceil32(_23287)] = mem[_22511 + 32 len ceil32(_23287)]
                                        if ceil32(_23287) > _23287:
                                            mem[_23287 + _15488 + stor21.length.field_1 + _10715 + 101] = 0
                                        return 32, mem[_15488 + stor21.length.field_1 + _10715 + 69 len ceil32(_23287) + 32]
                                    _22512 = mem[64]
                                    mem[64] = _15488 + stor21.length.field_1 + _10715 + 37
                                    mem[_15488 + stor21.length.field_1 + _10715 + 37] = 32
                                    _23288 = mem[_22512]
                                    mem[_15488 + stor21.length.field_1 + _10715 + 69] = mem[_22512]
                                    mem[_15488 + stor21.length.field_1 + _10715 + 101 len ceil32(_23288)] = mem[_22512 + 32 len ceil32(_23288)]
                                    if ceil32(_23288) > _23288:
                                        mem[_23288 + _15488 + stor21.length.field_1 + _10715 + 101] = 0
                                    return 32, mem[_15488 + stor21.length.field_1 + _10715 + 69 len ceil32(_23288) + 32]
                                mem[_10715 + ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192] = 0
                                _15489 = mem[64]
                                mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                    mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_10715)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10715)]
                                    mem[_15489 + stor21.length.field_1 + _10715 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_10715) <= _10715:
                                        _22513 = mem[64]
                                        mem[64] = _15489 + stor21.length.field_1 + _10715 + 37
                                        mem[_15489 + stor21.length.field_1 + _10715 + 37] = 32
                                        _23289 = mem[_22513]
                                        mem[_15489 + stor21.length.field_1 + _10715 + 69] = mem[_22513]
                                        mem[_15489 + stor21.length.field_1 + _10715 + 101 len ceil32(_23289)] = mem[_22513 + 32 len ceil32(_23289)]
                                        if ceil32(_23289) > _23289:
                                            mem[_23289 + _15489 + stor21.length.field_1 + _10715 + 101] = 0
                                        return 32, mem[_15489 + stor21.length.field_1 + _10715 + 69 len ceil32(_23289) + 32]
                                    _22514 = mem[64]
                                    mem[64] = _15489 + stor21.length.field_1 + _10715 + 37
                                    mem[_15489 + stor21.length.field_1 + _10715 + 37] = 32
                                    _23290 = mem[_22514]
                                    mem[_15489 + stor21.length.field_1 + _10715 + 69] = mem[_22514]
                                    mem[_15489 + stor21.length.field_1 + _10715 + 101 len ceil32(_23290)] = mem[_22514 + 32 len ceil32(_23290)]
                                    if ceil32(_23290) > _23290:
                                        mem[_23290 + _15489 + stor21.length.field_1 + _10715 + 101] = 0
                                    return 32, mem[_15489 + stor21.length.field_1 + _10715 + 69 len ceil32(_23290) + 32]
                                mem[stor21.length.field_1 + mem[64] + 32] = 0
                                mem[_15489 + stor21.length.field_1 + 32 len ceil32(_10715)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10715)]
                                mem[_15489 + stor21.length.field_1 + _10715 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                if ceil32(_10715) <= _10715:
                                    _22515 = mem[64]
                                    mem[64] = _15489 + stor21.length.field_1 + _10715 + 37
                                    mem[_15489 + stor21.length.field_1 + _10715 + 37] = 32
                                    _23291 = mem[_22515]
                                    mem[_15489 + stor21.length.field_1 + _10715 + 69] = mem[_22515]
                                    mem[_15489 + stor21.length.field_1 + _10715 + 101 len ceil32(_23291)] = mem[_22515 + 32 len ceil32(_23291)]
                                    if ceil32(_23291) > _23291:
                                        mem[_23291 + _15489 + stor21.length.field_1 + _10715 + 101] = 0
                                    return 32, mem[_15489 + stor21.length.field_1 + _10715 + 69 len ceil32(_23291) + 32]
                                _22516 = mem[64]
                                mem[64] = _15489 + stor21.length.field_1 + _10715 + 37
                                mem[_15489 + stor21.length.field_1 + _10715 + 37] = 32
                                _23292 = mem[_22516]
                                mem[_15489 + stor21.length.field_1 + _10715 + 69] = mem[_22516]
                                mem[_15489 + stor21.length.field_1 + _10715 + 101 len ceil32(_23292)] = mem[_22516 + 32 len ceil32(_23292)]
                                if ceil32(_23292) > _23292:
                                    mem[_23292 + _15489 + stor21.length.field_1 + _10715 + 101] = 0
                                return 32, mem[_15489 + stor21.length.field_1 + _10715 + 69 len ceil32(_23292) + 32]
                            if bool(stor21.length) == stor21.length.field_1 < 32:
                                revert with 0, 34
                            if stor21.length.field_1 <= 0:
                                return ''
                            if bool(stor21.length):
                                if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                                    revert with 0, 34
                                mem[128] = uint255(stor21.length) * 0.5
                                if bool(stor21.length):
                                    if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not Mask(256, -1, stor21.length):
                                        if not stor26:
                                            if not cd[4]:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 262] = 32
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294] = mem[ceil32(uint255(stor21.length) * 0.5) + 224]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])] = mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 224]:
                                                    return Array(len=mem[ceil32(uint255(stor21.length) * 0.5) + 224], data=mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]), 
                                                mem[mem[ceil32(uint255(stor21.length) * 0.5) + 224] + ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) + 32], 
                                            s = 0
                                            idx = cd[4]
                                            while idx:
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                idx = idx / 10
                                                continue 
                                            if s > test266151307():
                                                revert with 0, 65
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 160] = s
                                            if not s:
                                                t = s
                                                idx = cd[4]
                                                while idx:
                                                    if t < 1:
                                                        revert with 0, 17
                                                    if 48 > !(idx % 10):
                                                        revert with 0, 17
                                                    if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        revert with 0, 50
                                                    mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                    t = t - 1
                                                    idx = idx / 10
                                                    continue 
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                    if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        _23309 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23309)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23309)]
                                                        if ceil32(_23309) > _23309:
                                                            mem[_23309 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23309) + 32], 
                                                    _23310 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23310)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23310)]
                                                    if ceil32(_23310) > _23310:
                                                        mem[_23310 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23310) + 32], 
                                                mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _23311 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23311)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23311)]
                                                    if ceil32(_23311) > _23311:
                                                        mem[_23311 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23311) + 32], 
                                                _23312 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23312)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23312)]
                                                if ceil32(_23312) > _23312:
                                                    mem[_23312 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23312) + 32], 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _23313 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23313)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23313)]
                                                    if ceil32(_23313) > _23313:
                                                        mem[_23313 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23313) + 32], 
                                                _23314 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23314)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23314)]
                                                if ceil32(_23314) > _23314:
                                                    mem[_23314 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23314) + 32], 
                                            mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _23315 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23315)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23315)]
                                                if ceil32(_23315) > _23315:
                                                    mem[_23315 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23315) + 32], 
                                            _23316 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23316)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23316)]
                                            if ceil32(_23316) > _23316:
                                                mem[_23316 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23316) + 32], 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 164] = cd[4]
                                        require ext_code.size(stor26)
                                        staticcall stor26.0xff74ef30 with:
                                                gas gas_remaining wei
                                               args cd[4]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _584 = mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                        require mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                        require ceil32(uint255(stor21.length) * 0.5) + return_data.size + 160 > ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                        _659 = mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                        if mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                            revert with 0, 65
                                        if ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160] = _659
                                        require _584 + _659 + 32 <= return_data.size
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_659)] = mem[ceil32(uint255(stor21.length) * 0.5) + _584 + 192 len ceil32(_659)]
                                        if ceil32(_659) <= _659:
                                            _9143 = mem[64]
                                            mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_659)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_659)]
                                                mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                if ceil32(_659) <= _659:
                                                    _19329 = mem[64]
                                                    mem[64] = _9143 + (uint255(stor21.length) * 0.5) + _659 + 37
                                                    mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 37] = 32
                                                    _20017 = mem[_19329]
                                                    mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 69] = mem[_19329]
                                                    mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 101 len ceil32(_20017)] = mem[_19329 + 32 len ceil32(_20017)]
                                                    if ceil32(_20017) > _20017:
                                                        mem[_20017 + _9143 + (uint255(stor21.length) * 0.5) + _659 + 101] = 0
                                                    return 32, mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 69 len ceil32(_20017) + 32]
                                                _19330 = mem[64]
                                                mem[64] = _9143 + (uint255(stor21.length) * 0.5) + _659 + 37
                                                mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 37] = 32
                                                _20018 = mem[_19330]
                                                mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 69] = mem[_19330]
                                                mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 101 len ceil32(_20018)] = mem[_19330 + 32 len ceil32(_20018)]
                                                if ceil32(_20018) > _20018:
                                                    mem[_20018 + _9143 + (uint255(stor21.length) * 0.5) + _659 + 101] = 0
                                                return 32, mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 69 len ceil32(_20018) + 32]
                                            mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                            mem[_9143 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_659)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_659)]
                                            mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_659) <= _659:
                                                _19331 = mem[64]
                                                mem[64] = _9143 + (uint255(stor21.length) * 0.5) + _659 + 37
                                                mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 37] = 32
                                                _20019 = mem[_19331]
                                                mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 69] = mem[_19331]
                                                mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 101 len ceil32(_20019)] = mem[_19331 + 32 len ceil32(_20019)]
                                                if ceil32(_20019) > _20019:
                                                    mem[_20019 + _9143 + (uint255(stor21.length) * 0.5) + _659 + 101] = 0
                                                return 32, mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 69 len ceil32(_20019) + 32]
                                            _19332 = mem[64]
                                            mem[64] = _9143 + (uint255(stor21.length) * 0.5) + _659 + 37
                                            mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 37] = 32
                                            _20020 = mem[_19332]
                                            mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 69] = mem[_19332]
                                            mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 101 len ceil32(_20020)] = mem[_19332 + 32 len ceil32(_20020)]
                                            if ceil32(_20020) > _20020:
                                                mem[_20020 + _9143 + (uint255(stor21.length) * 0.5) + _659 + 101] = 0
                                            return 32, mem[_9143 + (uint255(stor21.length) * 0.5) + _659 + 69 len ceil32(_20020) + 32]
                                        mem[_659 + ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192] = 0
                                        _9144 = mem[64]
                                        mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_659)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_659)]
                                            mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_659) <= _659:
                                                _19333 = mem[64]
                                                mem[64] = _9144 + (uint255(stor21.length) * 0.5) + _659 + 37
                                                mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 37] = 32
                                                _20021 = mem[_19333]
                                                mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 69] = mem[_19333]
                                                mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 101 len ceil32(_20021)] = mem[_19333 + 32 len ceil32(_20021)]
                                                if ceil32(_20021) > _20021:
                                                    mem[_20021 + _9144 + (uint255(stor21.length) * 0.5) + _659 + 101] = 0
                                                return 32, mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 69 len ceil32(_20021) + 32]
                                            _19334 = mem[64]
                                            mem[64] = _9144 + (uint255(stor21.length) * 0.5) + _659 + 37
                                            mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 37] = 32
                                            _20022 = mem[_19334]
                                            mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 69] = mem[_19334]
                                            mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 101 len ceil32(_20022)] = mem[_19334 + 32 len ceil32(_20022)]
                                            if ceil32(_20022) > _20022:
                                                mem[_20022 + _9144 + (uint255(stor21.length) * 0.5) + _659 + 101] = 0
                                            return 32, mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 69 len ceil32(_20022) + 32]
                                        mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                        mem[_9144 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_659)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_659)]
                                        mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_659) <= _659:
                                            _19335 = mem[64]
                                            mem[64] = _9144 + (uint255(stor21.length) * 0.5) + _659 + 37
                                            mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 37] = 32
                                            _20023 = mem[_19335]
                                            mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 69] = mem[_19335]
                                            mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 101 len ceil32(_20023)] = mem[_19335 + 32 len ceil32(_20023)]
                                            if ceil32(_20023) > _20023:
                                                mem[_20023 + _9144 + (uint255(stor21.length) * 0.5) + _659 + 101] = 0
                                            return 32, mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 69 len ceil32(_20023) + 32]
                                        _19336 = mem[64]
                                        mem[64] = _9144 + (uint255(stor21.length) * 0.5) + _659 + 37
                                        mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 37] = 32
                                        _20024 = mem[_19336]
                                        mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 69] = mem[_19336]
                                        mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 101 len ceil32(_20024)] = mem[_19336 + 32 len ceil32(_20024)]
                                        if ceil32(_20024) > _20024:
                                            mem[_20024 + _9144 + (uint255(stor21.length) * 0.5) + _659 + 101] = 0
                                        return 32, mem[_9144 + (uint255(stor21.length) * 0.5) + _659 + 69 len ceil32(_20024) + 32]
                                    if 31 >= uint255(stor21.length) * 0.5:
                                        mem[160] = 256 * stor21.length.field_8
                                        if not stor26:
                                            if not cd[4]:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 262] = 32
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294] = mem[ceil32(uint255(stor21.length) * 0.5) + 224]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])] = mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 224]:
                                                    return Array(len=mem[ceil32(uint255(stor21.length) * 0.5) + 224], data=mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]), 
                                                mem[mem[ceil32(uint255(stor21.length) * 0.5) + 224] + ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) + 32], 
                                            s = 0
                                            idx = cd[4]
                                            while idx:
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                idx = idx / 10
                                                continue 
                                            if s > test266151307():
                                                revert with 0, 65
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 160] = s
                                            if not s:
                                                t = s
                                                idx = cd[4]
                                                while idx:
                                                    if t < 1:
                                                        revert with 0, 17
                                                    if 48 > !(idx % 10):
                                                        revert with 0, 17
                                                    if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        revert with 0, 50
                                                    mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                    t = t - 1
                                                    idx = idx / 10
                                                    continue 
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                                if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                    if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                        _23333 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23333)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23333)]
                                                        if ceil32(_23333) > _23333:
                                                            mem[_23333 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23333) + 32], 
                                                    _23334 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23334)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23334)]
                                                    if ceil32(_23334) > _23334:
                                                        mem[_23334 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23334) + 32], 
                                                mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _23335 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23335)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23335)]
                                                    if ceil32(_23335) > _23335:
                                                        mem[_23335 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23335) + 32], 
                                                _23336 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23336)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23336)]
                                                if ceil32(_23336) > _23336:
                                                    mem[_23336 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23336) + 32], 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _23337 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23337)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23337)]
                                                    if ceil32(_23337) > _23337:
                                                        mem[_23337 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23337) + 32], 
                                                _23338 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23338)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23338)]
                                                if ceil32(_23338) > _23338:
                                                    mem[_23338 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23338) + 32], 
                                            mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _23339 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23339)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23339)]
                                                if ceil32(_23339) > _23339:
                                                    mem[_23339 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23339) + 32], 
                                            _23340 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23340)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23340)]
                                            if ceil32(_23340) > _23340:
                                                mem[_23340 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23340) + 32], 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 164] = cd[4]
                                        require ext_code.size(stor26)
                                        staticcall stor26.0xff74ef30 with:
                                                gas gas_remaining wei
                                               args cd[4]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _662 = mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                        require mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                        require ceil32(uint255(stor21.length) * 0.5) + return_data.size + 160 > ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                        _729 = mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                        if mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                            revert with 0, 65
                                        if ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160] = _729
                                        require _662 + _729 + 32 <= return_data.size
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_729)] = mem[ceil32(uint255(stor21.length) * 0.5) + _662 + 192 len ceil32(_729)]
                                        if ceil32(_729) <= _729:
                                            _9147 = mem[64]
                                            mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_729)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_729)]
                                                mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                if ceil32(_729) <= _729:
                                                    _19343 = mem[64]
                                                    mem[64] = _9147 + (uint255(stor21.length) * 0.5) + _729 + 37
                                                    mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 37] = 32
                                                    _20049 = mem[_19343]
                                                    mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 69] = mem[_19343]
                                                    mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 101 len ceil32(_20049)] = mem[_19343 + 32 len ceil32(_20049)]
                                                    if ceil32(_20049) > _20049:
                                                        mem[_20049 + _9147 + (uint255(stor21.length) * 0.5) + _729 + 101] = 0
                                                    return 32, mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 69 len ceil32(_20049) + 32]
                                                _19344 = mem[64]
                                                mem[64] = _9147 + (uint255(stor21.length) * 0.5) + _729 + 37
                                                mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 37] = 32
                                                _20050 = mem[_19344]
                                                mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 69] = mem[_19344]
                                                mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 101 len ceil32(_20050)] = mem[_19344 + 32 len ceil32(_20050)]
                                                if ceil32(_20050) > _20050:
                                                    mem[_20050 + _9147 + (uint255(stor21.length) * 0.5) + _729 + 101] = 0
                                                return 32, mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 69 len ceil32(_20050) + 32]
                                            mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                            mem[_9147 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_729)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_729)]
                                            mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_729) <= _729:
                                                _19345 = mem[64]
                                                mem[64] = _9147 + (uint255(stor21.length) * 0.5) + _729 + 37
                                                mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 37] = 32
                                                _20051 = mem[_19345]
                                                mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 69] = mem[_19345]
                                                mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 101 len ceil32(_20051)] = mem[_19345 + 32 len ceil32(_20051)]
                                                if ceil32(_20051) > _20051:
                                                    mem[_20051 + _9147 + (uint255(stor21.length) * 0.5) + _729 + 101] = 0
                                                return 32, mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 69 len ceil32(_20051) + 32]
                                            _19346 = mem[64]
                                            mem[64] = _9147 + (uint255(stor21.length) * 0.5) + _729 + 37
                                            mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 37] = 32
                                            _20052 = mem[_19346]
                                            mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 69] = mem[_19346]
                                            mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 101 len ceil32(_20052)] = mem[_19346 + 32 len ceil32(_20052)]
                                            if ceil32(_20052) > _20052:
                                                mem[_20052 + _9147 + (uint255(stor21.length) * 0.5) + _729 + 101] = 0
                                            return 32, mem[_9147 + (uint255(stor21.length) * 0.5) + _729 + 69 len ceil32(_20052) + 32]
                                        mem[_729 + ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192] = 0
                                        _9148 = mem[64]
                                        mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_729)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_729)]
                                            mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_729) <= _729:
                                                _19347 = mem[64]
                                                mem[64] = _9148 + (uint255(stor21.length) * 0.5) + _729 + 37
                                                mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 37] = 32
                                                _20053 = mem[_19347]
                                                mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 69] = mem[_19347]
                                                mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 101 len ceil32(_20053)] = mem[_19347 + 32 len ceil32(_20053)]
                                                if ceil32(_20053) > _20053:
                                                    mem[_20053 + _9148 + (uint255(stor21.length) * 0.5) + _729 + 101] = 0
                                                return 32, mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 69 len ceil32(_20053) + 32]
                                            _19348 = mem[64]
                                            mem[64] = _9148 + (uint255(stor21.length) * 0.5) + _729 + 37
                                            mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 37] = 32
                                            _20054 = mem[_19348]
                                            mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 69] = mem[_19348]
                                            mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 101 len ceil32(_20054)] = mem[_19348 + 32 len ceil32(_20054)]
                                            if ceil32(_20054) > _20054:
                                                mem[_20054 + _9148 + (uint255(stor21.length) * 0.5) + _729 + 101] = 0
                                            return 32, mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 69 len ceil32(_20054) + 32]
                                        mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                        mem[_9148 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_729)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_729)]
                                        mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_729) <= _729:
                                            _19349 = mem[64]
                                            mem[64] = _9148 + (uint255(stor21.length) * 0.5) + _729 + 37
                                            mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 37] = 32
                                            _20055 = mem[_19349]
                                            mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 69] = mem[_19349]
                                            mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 101 len ceil32(_20055)] = mem[_19349 + 32 len ceil32(_20055)]
                                            if ceil32(_20055) > _20055:
                                                mem[_20055 + _9148 + (uint255(stor21.length) * 0.5) + _729 + 101] = 0
                                            return 32, mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 69 len ceil32(_20055) + 32]
                                        _19350 = mem[64]
                                        mem[64] = _9148 + (uint255(stor21.length) * 0.5) + _729 + 37
                                        mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 37] = 32
                                        _20056 = mem[_19350]
                                        mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 69] = mem[_19350]
                                        mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 101 len ceil32(_20056)] = mem[_19350 + 32 len ceil32(_20056)]
                                        if ceil32(_20056) > _20056:
                                            mem[_20056 + _9148 + (uint255(stor21.length) * 0.5) + _729 + 101] = 0
                                        return 32, mem[_9148 + (uint255(stor21.length) * 0.5) + _729 + 69 len ceil32(_20056) + 32]
                                    mem[0] = 21
                                    mem[160] = uint256(stor21.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor21.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor21[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if not stor26:
                                        if not cd[4]:
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 262] = 32
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294] = mem[ceil32(uint255(stor21.length) * 0.5) + 224]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])] = mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 224]:
                                                return Array(len=mem[ceil32(uint255(stor21.length) * 0.5) + 224], data=mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]), 
                                            mem[mem[ceil32(uint255(stor21.length) * 0.5) + 224] + ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) + 32], 
                                        s = 0
                                        idx = cd[4]
                                        while idx:
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            idx = idx / 10
                                            continue 
                                        if s > test266151307():
                                            revert with 0, 65
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160] = s
                                        if not s:
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _25145 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25145)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25145)]
                                                    if ceil32(_25145) > _25145:
                                                        mem[_25145 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25145) + 32], 
                                                _25146 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25146)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25146)]
                                                if ceil32(_25146) > _25146:
                                                    mem[_25146 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25146) + 32], 
                                            mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _25147 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25147)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25147)]
                                                if ceil32(_25147) > _25147:
                                                    mem[_25147 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25147) + 32], 
                                            _25148 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25148)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25148)]
                                            if ceil32(_25148) > _25148:
                                                mem[_25148 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25148) + 32], 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _25149 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25149)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25149)]
                                                if ceil32(_25149) > _25149:
                                                    mem[_25149 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25149) + 32], 
                                            _25150 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25150)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25150)]
                                            if ceil32(_25150) > _25150:
                                                mem[_25150 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25150) + 32], 
                                        mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                            _25151 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25151)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25151)]
                                            if ceil32(_25151) > _25151:
                                                mem[_25151 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25151) + 32], 
                                        _25152 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25152)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25152)]
                                        if ceil32(_25152) > _25152:
                                            mem[_25152 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25152) + 32], 
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 164] = cd[4]
                                    require ext_code.size(stor26)
                                    staticcall stor26.0xff74ef30 with:
                                            gas gas_remaining wei
                                           args cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160
                                    require return_data.size >= 32
                                    _9764 = mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                    require mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                    require ceil32(uint255(stor21.length) * 0.5) + return_data.size + 160 > ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                    _10724 = mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                    if mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160] = _10724
                                    require _9764 + _10724 + 32 <= return_data.size
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10724)] = mem[ceil32(uint255(stor21.length) * 0.5) + _9764 + 192 len ceil32(_10724)]
                                    if ceil32(_10724) <= _10724:
                                        _15502 = mem[64]
                                        mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10724)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10724)]
                                            mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_10724) <= _10724:
                                                _22533 = mem[64]
                                                mem[64] = _15502 + (uint255(stor21.length) * 0.5) + _10724 + 37
                                                mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 37] = 32
                                                _23317 = mem[_22533]
                                                mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 69] = mem[_22533]
                                                mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 101 len ceil32(_23317)] = mem[_22533 + 32 len ceil32(_23317)]
                                                if ceil32(_23317) > _23317:
                                                    mem[_23317 + _15502 + (uint255(stor21.length) * 0.5) + _10724 + 101] = 0
                                                return 32, mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 69 len ceil32(_23317) + 32]
                                            _22534 = mem[64]
                                            mem[64] = _15502 + (uint255(stor21.length) * 0.5) + _10724 + 37
                                            mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 37] = 32
                                            _23318 = mem[_22534]
                                            mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 69] = mem[_22534]
                                            mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 101 len ceil32(_23318)] = mem[_22534 + 32 len ceil32(_23318)]
                                            if ceil32(_23318) > _23318:
                                                mem[_23318 + _15502 + (uint255(stor21.length) * 0.5) + _10724 + 101] = 0
                                            return 32, mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 69 len ceil32(_23318) + 32]
                                        mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                        mem[_15502 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10724)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10724)]
                                        mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_10724) <= _10724:
                                            _22535 = mem[64]
                                            mem[64] = _15502 + (uint255(stor21.length) * 0.5) + _10724 + 37
                                            mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 37] = 32
                                            _23319 = mem[_22535]
                                            mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 69] = mem[_22535]
                                            mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 101 len ceil32(_23319)] = mem[_22535 + 32 len ceil32(_23319)]
                                            if ceil32(_23319) > _23319:
                                                mem[_23319 + _15502 + (uint255(stor21.length) * 0.5) + _10724 + 101] = 0
                                            return 32, mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 69 len ceil32(_23319) + 32]
                                        _22536 = mem[64]
                                        mem[64] = _15502 + (uint255(stor21.length) * 0.5) + _10724 + 37
                                        mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 37] = 32
                                        _23320 = mem[_22536]
                                        mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 69] = mem[_22536]
                                        mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 101 len ceil32(_23320)] = mem[_22536 + 32 len ceil32(_23320)]
                                        if ceil32(_23320) > _23320:
                                            mem[_23320 + _15502 + (uint255(stor21.length) * 0.5) + _10724 + 101] = 0
                                        return 32, mem[_15502 + (uint255(stor21.length) * 0.5) + _10724 + 69 len ceil32(_23320) + 32]
                                    mem[_10724 + ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192] = 0
                                    _15503 = mem[64]
                                    mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                    if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                        mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10724)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10724)]
                                        mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_10724) <= _10724:
                                            _22537 = mem[64]
                                            mem[64] = _15503 + (uint255(stor21.length) * 0.5) + _10724 + 37
                                            mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 37] = 32
                                            _23321 = mem[_22537]
                                            mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 69] = mem[_22537]
                                            mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 101 len ceil32(_23321)] = mem[_22537 + 32 len ceil32(_23321)]
                                            if ceil32(_23321) > _23321:
                                                mem[_23321 + _15503 + (uint255(stor21.length) * 0.5) + _10724 + 101] = 0
                                            return 32, mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 69 len ceil32(_23321) + 32]
                                        _22538 = mem[64]
                                        mem[64] = _15503 + (uint255(stor21.length) * 0.5) + _10724 + 37
                                        mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 37] = 32
                                        _23322 = mem[_22538]
                                        mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 69] = mem[_22538]
                                        mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 101 len ceil32(_23322)] = mem[_22538 + 32 len ceil32(_23322)]
                                        if ceil32(_23322) > _23322:
                                            mem[_23322 + _15503 + (uint255(stor21.length) * 0.5) + _10724 + 101] = 0
                                        return 32, mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 69 len ceil32(_23322) + 32]
                                    mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                    mem[_15503 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10724)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10724)]
                                    mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_10724) <= _10724:
                                        _22539 = mem[64]
                                        mem[64] = _15503 + (uint255(stor21.length) * 0.5) + _10724 + 37
                                        mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 37] = 32
                                        _23323 = mem[_22539]
                                        mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 69] = mem[_22539]
                                        mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 101 len ceil32(_23323)] = mem[_22539 + 32 len ceil32(_23323)]
                                        if ceil32(_23323) > _23323:
                                            mem[_23323 + _15503 + (uint255(stor21.length) * 0.5) + _10724 + 101] = 0
                                        return 32, mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 69 len ceil32(_23323) + 32]
                                    _22540 = mem[64]
                                    mem[64] = _15503 + (uint255(stor21.length) * 0.5) + _10724 + 37
                                    mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 37] = 32
                                    _23324 = mem[_22540]
                                    mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 69] = mem[_22540]
                                    mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 101 len ceil32(_23324)] = mem[_22540 + 32 len ceil32(_23324)]
                                    if ceil32(_23324) > _23324:
                                        mem[_23324 + _15503 + (uint255(stor21.length) * 0.5) + _10724 + 101] = 0
                                    return 32, mem[_15503 + (uint255(stor21.length) * 0.5) + _10724 + 69 len ceil32(_23324) + 32]
                                if bool(stor21.length) == stor21.length.field_1 < 32:
                                    revert with 0, 34
                                if not stor21.length.field_1:
                                    if not stor26:
                                        if not cd[4]:
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 262] = 32
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294] = mem[ceil32(uint255(stor21.length) * 0.5) + 224]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])] = mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 224]:
                                                return Array(len=mem[ceil32(uint255(stor21.length) * 0.5) + 224], data=mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]), 
                                            mem[mem[ceil32(uint255(stor21.length) * 0.5) + 224] + ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) + 32], 
                                        s = 0
                                        idx = cd[4]
                                        while idx:
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            idx = idx / 10
                                            continue 
                                        if s > test266151307():
                                            revert with 0, 65
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160] = s
                                        if not s:
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _23341 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23341)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23341)]
                                                    if ceil32(_23341) > _23341:
                                                        mem[_23341 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23341) + 32], 
                                                _23342 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23342)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23342)]
                                                if ceil32(_23342) > _23342:
                                                    mem[_23342 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23342) + 32], 
                                            mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _23343 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23343)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23343)]
                                                if ceil32(_23343) > _23343:
                                                    mem[_23343 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23343) + 32], 
                                            _23344 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23344)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23344)]
                                            if ceil32(_23344) > _23344:
                                                mem[_23344 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23344) + 32], 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _23345 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23345)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23345)]
                                                if ceil32(_23345) > _23345:
                                                    mem[_23345 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23345) + 32], 
                                            _23346 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23346)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23346)]
                                            if ceil32(_23346) > _23346:
                                                mem[_23346 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23346) + 32], 
                                        mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                            _23347 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23347)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23347)]
                                            if ceil32(_23347) > _23347:
                                                mem[_23347 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23347) + 32], 
                                        _23348 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23348)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23348)]
                                        if ceil32(_23348) > _23348:
                                            mem[_23348 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23348) + 32], 
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 164] = cd[4]
                                    require ext_code.size(stor26)
                                    staticcall stor26.0xff74ef30 with:
                                            gas gas_remaining wei
                                           args cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160
                                    require return_data.size >= 32
                                    _623 = mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                    require mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                    require ceil32(uint255(stor21.length) * 0.5) + return_data.size + 160 > ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                    _694 = mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                    if mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160] = _694
                                    require _623 + _694 + 32 <= return_data.size
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_694)] = mem[ceil32(uint255(stor21.length) * 0.5) + _623 + 192 len ceil32(_694)]
                                    if ceil32(_694) <= _694:
                                        _9149 = mem[64]
                                        mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_694)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_694)]
                                            mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_694) <= _694:
                                                _19351 = mem[64]
                                                mem[64] = _9149 + (uint255(stor21.length) * 0.5) + _694 + 37
                                                mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 37] = 32
                                                _20065 = mem[_19351]
                                                mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 69] = mem[_19351]
                                                mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 101 len ceil32(_20065)] = mem[_19351 + 32 len ceil32(_20065)]
                                                if ceil32(_20065) > _20065:
                                                    mem[_20065 + _9149 + (uint255(stor21.length) * 0.5) + _694 + 101] = 0
                                                return 32, mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 69 len ceil32(_20065) + 32]
                                            _19352 = mem[64]
                                            mem[64] = _9149 + (uint255(stor21.length) * 0.5) + _694 + 37
                                            mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 37] = 32
                                            _20066 = mem[_19352]
                                            mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 69] = mem[_19352]
                                            mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 101 len ceil32(_20066)] = mem[_19352 + 32 len ceil32(_20066)]
                                            if ceil32(_20066) > _20066:
                                                mem[_20066 + _9149 + (uint255(stor21.length) * 0.5) + _694 + 101] = 0
                                            return 32, mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 69 len ceil32(_20066) + 32]
                                        mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                        mem[_9149 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_694)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_694)]
                                        mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_694) <= _694:
                                            _19353 = mem[64]
                                            mem[64] = _9149 + (uint255(stor21.length) * 0.5) + _694 + 37
                                            mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 37] = 32
                                            _20067 = mem[_19353]
                                            mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 69] = mem[_19353]
                                            mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 101 len ceil32(_20067)] = mem[_19353 + 32 len ceil32(_20067)]
                                            if ceil32(_20067) > _20067:
                                                mem[_20067 + _9149 + (uint255(stor21.length) * 0.5) + _694 + 101] = 0
                                            return 32, mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 69 len ceil32(_20067) + 32]
                                        _19354 = mem[64]
                                        mem[64] = _9149 + (uint255(stor21.length) * 0.5) + _694 + 37
                                        mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 37] = 32
                                        _20068 = mem[_19354]
                                        mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 69] = mem[_19354]
                                        mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 101 len ceil32(_20068)] = mem[_19354 + 32 len ceil32(_20068)]
                                        if ceil32(_20068) > _20068:
                                            mem[_20068 + _9149 + (uint255(stor21.length) * 0.5) + _694 + 101] = 0
                                        return 32, mem[_9149 + (uint255(stor21.length) * 0.5) + _694 + 69 len ceil32(_20068) + 32]
                                    mem[_694 + ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192] = 0
                                    _9150 = mem[64]
                                    mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                    if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                        mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_694)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_694)]
                                        mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_694) <= _694:
                                            _19355 = mem[64]
                                            mem[64] = _9150 + (uint255(stor21.length) * 0.5) + _694 + 37
                                            mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 37] = 32
                                            _20069 = mem[_19355]
                                            mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 69] = mem[_19355]
                                            mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 101 len ceil32(_20069)] = mem[_19355 + 32 len ceil32(_20069)]
                                            if ceil32(_20069) > _20069:
                                                mem[_20069 + _9150 + (uint255(stor21.length) * 0.5) + _694 + 101] = 0
                                            return 32, mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 69 len ceil32(_20069) + 32]
                                        _19356 = mem[64]
                                        mem[64] = _9150 + (uint255(stor21.length) * 0.5) + _694 + 37
                                        mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 37] = 32
                                        _20070 = mem[_19356]
                                        mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 69] = mem[_19356]
                                        mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 101 len ceil32(_20070)] = mem[_19356 + 32 len ceil32(_20070)]
                                        if ceil32(_20070) > _20070:
                                            mem[_20070 + _9150 + (uint255(stor21.length) * 0.5) + _694 + 101] = 0
                                        return 32, mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 69 len ceil32(_20070) + 32]
                                    mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                    mem[_9150 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_694)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_694)]
                                    mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_694) <= _694:
                                        _19357 = mem[64]
                                        mem[64] = _9150 + (uint255(stor21.length) * 0.5) + _694 + 37
                                        mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 37] = 32
                                        _20071 = mem[_19357]
                                        mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 69] = mem[_19357]
                                        mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 101 len ceil32(_20071)] = mem[_19357 + 32 len ceil32(_20071)]
                                        if ceil32(_20071) > _20071:
                                            mem[_20071 + _9150 + (uint255(stor21.length) * 0.5) + _694 + 101] = 0
                                        return 32, mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 69 len ceil32(_20071) + 32]
                                    _19358 = mem[64]
                                    mem[64] = _9150 + (uint255(stor21.length) * 0.5) + _694 + 37
                                    mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 37] = 32
                                    _20072 = mem[_19358]
                                    mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 69] = mem[_19358]
                                    mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 101 len ceil32(_20072)] = mem[_19358 + 32 len ceil32(_20072)]
                                    if ceil32(_20072) > _20072:
                                        mem[_20072 + _9150 + (uint255(stor21.length) * 0.5) + _694 + 101] = 0
                                    return 32, mem[_9150 + (uint255(stor21.length) * 0.5) + _694 + 69 len ceil32(_20072) + 32]
                                if 31 >= stor21.length.field_1:
                                    mem[160] = 256 * stor21.length.field_8
                                    if not stor26:
                                        if not cd[4]:
                                            mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 262] = 32
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294] = mem[ceil32(uint255(stor21.length) * 0.5) + 224]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])] = mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 224]:
                                                return Array(len=mem[ceil32(uint255(stor21.length) * 0.5) + 224], data=mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]), 
                                            mem[mem[ceil32(uint255(stor21.length) * 0.5) + 224] + ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) + 32], 
                                        s = 0
                                        idx = cd[4]
                                        while idx:
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            idx = idx / 10
                                            continue 
                                        if s > test266151307():
                                            revert with 0, 65
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 160] = s
                                        if not s:
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                            if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                    _23365 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23365)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23365)]
                                                    if ceil32(_23365) > _23365:
                                                        mem[_23365 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23365) + 32], 
                                                _23366 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23366)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23366)]
                                                if ceil32(_23366) > _23366:
                                                    mem[_23366 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23366) + 32], 
                                            mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _23367 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23367)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23367)]
                                                if ceil32(_23367) > _23367:
                                                    mem[_23367 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23367) + 32], 
                                            _23368 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23368)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23368)]
                                            if ceil32(_23368) > _23368:
                                                mem[_23368 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23368) + 32], 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _23369 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23369)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23369)]
                                                if ceil32(_23369) > _23369:
                                                    mem[_23369 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23369) + 32], 
                                            _23370 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23370)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23370)]
                                            if ceil32(_23370) > _23370:
                                                mem[_23370 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23370) + 32], 
                                        mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                            _23371 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23371)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23371)]
                                            if ceil32(_23371) > _23371:
                                                mem[_23371 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23371) + 32], 
                                        _23372 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_23372)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_23372)]
                                        if ceil32(_23372) > _23372:
                                            mem[_23372 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_23372) + 32], 
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 164] = cd[4]
                                    require ext_code.size(stor26)
                                    staticcall stor26.0xff74ef30 with:
                                            gas gas_remaining wei
                                           args cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160
                                    require return_data.size >= 32
                                    _697 = mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                    require mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                    require ceil32(uint255(stor21.length) * 0.5) + return_data.size + 160 > ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                    _764 = mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                    if mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160] = _764
                                    require _697 + _764 + 32 <= return_data.size
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_764)] = mem[ceil32(uint255(stor21.length) * 0.5) + _697 + 192 len ceil32(_764)]
                                    if ceil32(_764) <= _764:
                                        _9153 = mem[64]
                                        mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_764)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_764)]
                                            mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_764) <= _764:
                                                _19365 = mem[64]
                                                mem[64] = _9153 + (uint255(stor21.length) * 0.5) + _764 + 37
                                                mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 37] = 32
                                                _20097 = mem[_19365]
                                                mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 69] = mem[_19365]
                                                mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 101 len ceil32(_20097)] = mem[_19365 + 32 len ceil32(_20097)]
                                                if ceil32(_20097) > _20097:
                                                    mem[_20097 + _9153 + (uint255(stor21.length) * 0.5) + _764 + 101] = 0
                                                return 32, mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 69 len ceil32(_20097) + 32]
                                            _19366 = mem[64]
                                            mem[64] = _9153 + (uint255(stor21.length) * 0.5) + _764 + 37
                                            mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 37] = 32
                                            _20098 = mem[_19366]
                                            mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 69] = mem[_19366]
                                            mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 101 len ceil32(_20098)] = mem[_19366 + 32 len ceil32(_20098)]
                                            if ceil32(_20098) > _20098:
                                                mem[_20098 + _9153 + (uint255(stor21.length) * 0.5) + _764 + 101] = 0
                                            return 32, mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 69 len ceil32(_20098) + 32]
                                        mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                        mem[_9153 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_764)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_764)]
                                        mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_764) <= _764:
                                            _19367 = mem[64]
                                            mem[64] = _9153 + (uint255(stor21.length) * 0.5) + _764 + 37
                                            mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 37] = 32
                                            _20099 = mem[_19367]
                                            mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 69] = mem[_19367]
                                            mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 101 len ceil32(_20099)] = mem[_19367 + 32 len ceil32(_20099)]
                                            if ceil32(_20099) > _20099:
                                                mem[_20099 + _9153 + (uint255(stor21.length) * 0.5) + _764 + 101] = 0
                                            return 32, mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 69 len ceil32(_20099) + 32]
                                        _19368 = mem[64]
                                        mem[64] = _9153 + (uint255(stor21.length) * 0.5) + _764 + 37
                                        mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 37] = 32
                                        _20100 = mem[_19368]
                                        mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 69] = mem[_19368]
                                        mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 101 len ceil32(_20100)] = mem[_19368 + 32 len ceil32(_20100)]
                                        if ceil32(_20100) > _20100:
                                            mem[_20100 + _9153 + (uint255(stor21.length) * 0.5) + _764 + 101] = 0
                                        return 32, mem[_9153 + (uint255(stor21.length) * 0.5) + _764 + 69 len ceil32(_20100) + 32]
                                    mem[_764 + ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192] = 0
                                    _9154 = mem[64]
                                    mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                    if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                        mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_764)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_764)]
                                        mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_764) <= _764:
                                            _19369 = mem[64]
                                            mem[64] = _9154 + (uint255(stor21.length) * 0.5) + _764 + 37
                                            mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 37] = 32
                                            _20101 = mem[_19369]
                                            mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 69] = mem[_19369]
                                            mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 101 len ceil32(_20101)] = mem[_19369 + 32 len ceil32(_20101)]
                                            if ceil32(_20101) > _20101:
                                                mem[_20101 + _9154 + (uint255(stor21.length) * 0.5) + _764 + 101] = 0
                                            return 32, mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 69 len ceil32(_20101) + 32]
                                        _19370 = mem[64]
                                        mem[64] = _9154 + (uint255(stor21.length) * 0.5) + _764 + 37
                                        mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 37] = 32
                                        _20102 = mem[_19370]
                                        mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 69] = mem[_19370]
                                        mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 101 len ceil32(_20102)] = mem[_19370 + 32 len ceil32(_20102)]
                                        if ceil32(_20102) > _20102:
                                            mem[_20102 + _9154 + (uint255(stor21.length) * 0.5) + _764 + 101] = 0
                                        return 32, mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 69 len ceil32(_20102) + 32]
                                    mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                    mem[_9154 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_764)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_764)]
                                    mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_764) <= _764:
                                        _19371 = mem[64]
                                        mem[64] = _9154 + (uint255(stor21.length) * 0.5) + _764 + 37
                                        mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 37] = 32
                                        _20103 = mem[_19371]
                                        mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 69] = mem[_19371]
                                        mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 101 len ceil32(_20103)] = mem[_19371 + 32 len ceil32(_20103)]
                                        if ceil32(_20103) > _20103:
                                            mem[_20103 + _9154 + (uint255(stor21.length) * 0.5) + _764 + 101] = 0
                                        return 32, mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 69 len ceil32(_20103) + 32]
                                    _19372 = mem[64]
                                    mem[64] = _9154 + (uint255(stor21.length) * 0.5) + _764 + 37
                                    mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 37] = 32
                                    _20104 = mem[_19372]
                                    mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 69] = mem[_19372]
                                    mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 101 len ceil32(_20104)] = mem[_19372 + 32 len ceil32(_20104)]
                                    if ceil32(_20104) > _20104:
                                        mem[_20104 + _9154 + (uint255(stor21.length) * 0.5) + _764 + 101] = 0
                                    return 32, mem[_9154 + (uint255(stor21.length) * 0.5) + _764 + 69 len ceil32(_20104) + 32]
                                mem[0] = 21
                                mem[160] = uint256(stor21.field_0)
                                idx = 160
                                s = 0
                                while stor21.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor21[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if not stor26:
                                    if not cd[4]:
                                        mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 262] = 32
                                        mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294] = mem[ceil32(uint255(stor21.length) * 0.5) + 224]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])] = mem[ceil32(uint255(stor21.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]
                                        if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 224]:
                                            return Array(len=mem[ceil32(uint255(stor21.length) * 0.5) + 224], data=mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224])]), 
                                        mem[mem[ceil32(uint255(stor21.length) * 0.5) + 224] + ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 326] = 0
                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 224]) + 32], 
                                    s = 0
                                    idx = cd[4]
                                    while idx:
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        idx = idx / 10
                                        continue 
                                    if s > test266151307():
                                        revert with 0, 65
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 160] = s
                                    if not s:
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                        if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                                _25153 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25153)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25153)]
                                                if ceil32(_25153) > _25153:
                                                    mem[_25153 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                                return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25153) + 32], 
                                            _25154 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25154)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25154)]
                                            if ceil32(_25154) > _25154:
                                                mem[_25154 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25154) + 32], 
                                        mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                            _25155 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25155)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25155)]
                                            if ceil32(_25155) > _25155:
                                                mem[_25155 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25155) + 32], 
                                        _25156 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25156)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25156)]
                                        if ceil32(_25156) > _25156:
                                            mem[_25156 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25156) + 32], 
                                    mem[ceil32(uint255(stor21.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                    t = s
                                    idx = cd[4]
                                    while idx:
                                        if t < 1:
                                            revert with 0, 17
                                        if 48 > !(idx % 10):
                                            revert with 0, 17
                                        if t - 1 >= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                            revert with 0, 50
                                        mem[t + ceil32(uint255(stor21.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                        t = t - 1
                                        idx = idx / 10
                                        continue 
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                    if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                            _25157 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                            mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25157)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25157)]
                                            if ceil32(_25157) > _25157:
                                                mem[_25157 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                            return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25157) + 32], 
                                        _25158 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25158)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25158)]
                                        if ceil32(_25158) > _25158:
                                            mem[_25158 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25158) + 32], 
                                    mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224] = 0
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])] = mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160])]
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 229] = 32
                                    if ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor21.length) * 0.5) + 160]:
                                        _25159 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                        mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25159)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25159)]
                                        if ceil32(_25159) > _25159:
                                            mem[_25159 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                        return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25159) + 32], 
                                    _25160 = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 192]
                                    mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293 len ceil32(_25160)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + 224 len ceil32(_25160)]
                                    if ceil32(_25160) > _25160:
                                        mem[_25160 + ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 293] = 0
                                    return 32, mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(s) + (uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160] + 261 len ceil32(_25160) + 32], 
                                mem[ceil32(uint255(stor21.length) * 0.5) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(uint255(stor21.length) * 0.5) + 164] = cd[4]
                                require ext_code.size(stor26)
                                staticcall stor26.0xff74ef30 with:
                                        gas gas_remaining wei
                                       args cd[4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(uint255(stor21.length) * 0.5) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160
                                require return_data.size >= 32
                                _9774 = mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                require mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                require ceil32(uint255(stor21.length) * 0.5) + return_data.size + 160 > ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                _10733 = mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                if mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                    revert with 0, 65
                                mem[64] = ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(uint255(stor21.length) * 0.5) + mem[ceil32(uint255(stor21.length) * 0.5) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 160] = _10733
                                require _9774 + _10733 + 32 <= return_data.size
                                mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10733)] = mem[ceil32(uint255(stor21.length) * 0.5) + _9774 + 192 len ceil32(_10733)]
                                if ceil32(_10733) <= _10733:
                                    _15516 = mem[64]
                                    mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                    if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                        mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10733)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10733)]
                                        mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_10733) <= _10733:
                                            _22557 = mem[64]
                                            mem[64] = _15516 + (uint255(stor21.length) * 0.5) + _10733 + 37
                                            mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 37] = 32
                                            _23349 = mem[_22557]
                                            mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 69] = mem[_22557]
                                            mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 101 len ceil32(_23349)] = mem[_22557 + 32 len ceil32(_23349)]
                                            if ceil32(_23349) > _23349:
                                                mem[_23349 + _15516 + (uint255(stor21.length) * 0.5) + _10733 + 101] = 0
                                            return 32, mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 69 len ceil32(_23349) + 32]
                                        _22558 = mem[64]
                                        mem[64] = _15516 + (uint255(stor21.length) * 0.5) + _10733 + 37
                                        mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 37] = 32
                                        _23350 = mem[_22558]
                                        mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 69] = mem[_22558]
                                        mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 101 len ceil32(_23350)] = mem[_22558 + 32 len ceil32(_23350)]
                                        if ceil32(_23350) > _23350:
                                            mem[_23350 + _15516 + (uint255(stor21.length) * 0.5) + _10733 + 101] = 0
                                        return 32, mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 69 len ceil32(_23350) + 32]
                                    mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                    mem[_15516 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10733)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10733)]
                                    mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_10733) <= _10733:
                                        _22559 = mem[64]
                                        mem[64] = _15516 + (uint255(stor21.length) * 0.5) + _10733 + 37
                                        mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 37] = 32
                                        _23351 = mem[_22559]
                                        mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 69] = mem[_22559]
                                        mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 101 len ceil32(_23351)] = mem[_22559 + 32 len ceil32(_23351)]
                                        if ceil32(_23351) > _23351:
                                            mem[_23351 + _15516 + (uint255(stor21.length) * 0.5) + _10733 + 101] = 0
                                        return 32, mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 69 len ceil32(_23351) + 32]
                                    _22560 = mem[64]
                                    mem[64] = _15516 + (uint255(stor21.length) * 0.5) + _10733 + 37
                                    mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 37] = 32
                                    _23352 = mem[_22560]
                                    mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 69] = mem[_22560]
                                    mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 101 len ceil32(_23352)] = mem[_22560 + 32 len ceil32(_23352)]
                                    if ceil32(_23352) > _23352:
                                        mem[_23352 + _15516 + (uint255(stor21.length) * 0.5) + _10733 + 101] = 0
                                    return 32, mem[_15516 + (uint255(stor21.length) * 0.5) + _10733 + 69 len ceil32(_23352) + 32]
                                mem[_10733 + ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192] = 0
                                _15517 = mem[64]
                                mem[mem[64] + 32 len ceil32(uint255(stor21.length) * 0.5)] = mem[160 len ceil32(uint255(stor21.length) * 0.5)]
                                if ceil32(uint255(stor21.length) * 0.5) <= uint255(stor21.length) * 0.5:
                                    mem[mem[64] + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10733)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10733)]
                                    mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_10733) <= _10733:
                                        _22561 = mem[64]
                                        mem[64] = _15517 + (uint255(stor21.length) * 0.5) + _10733 + 37
                                        mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 37] = 32
                                        _23353 = mem[_22561]
                                        mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 69] = mem[_22561]
                                        mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 101 len ceil32(_23353)] = mem[_22561 + 32 len ceil32(_23353)]
                                        if ceil32(_23353) > _23353:
                                            mem[_23353 + _15517 + (uint255(stor21.length) * 0.5) + _10733 + 101] = 0
                                        return 32, mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 69 len ceil32(_23353) + 32]
                                    _22562 = mem[64]
                                    mem[64] = _15517 + (uint255(stor21.length) * 0.5) + _10733 + 37
                                    mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 37] = 32
                                    _23354 = mem[_22562]
                                    mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 69] = mem[_22562]
                                    mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 101 len ceil32(_23354)] = mem[_22562 + 32 len ceil32(_23354)]
                                    if ceil32(_23354) > _23354:
                                        mem[_23354 + _15517 + (uint255(stor21.length) * 0.5) + _10733 + 101] = 0
                                    return 32, mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 69 len ceil32(_23354) + 32]
                                mem[(uint255(stor21.length) * 0.5) + mem[64] + 32] = 0
                                mem[_15517 + (uint255(stor21.length) * 0.5) + 32 len ceil32(_10733)] = mem[ceil32(uint255(stor21.length) * 0.5) + ceil32(return_data.size) + 192 len ceil32(_10733)]
                                mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                if ceil32(_10733) <= _10733:
                                    _22563 = mem[64]
                                    mem[64] = _15517 + (uint255(stor21.length) * 0.5) + _10733 + 37
                                    mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 37] = 32
                                    _23355 = mem[_22563]
                                    mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 69] = mem[_22563]
                                    mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 101 len ceil32(_23355)] = mem[_22563 + 32 len ceil32(_23355)]
                                    if ceil32(_23355) > _23355:
                                        mem[_23355 + _15517 + (uint255(stor21.length) * 0.5) + _10733 + 101] = 0
                                    return 32, mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 69 len ceil32(_23355) + 32]
                                _22564 = mem[64]
                                mem[64] = _15517 + (uint255(stor21.length) * 0.5) + _10733 + 37
                                mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 37] = 32
                                _23356 = mem[_22564]
                                mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 69] = mem[_22564]
                                mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 101 len ceil32(_23356)] = mem[_22564 + 32 len ceil32(_23356)]
                                if ceil32(_23356) > _23356:
                                    mem[_23356 + _15517 + (uint255(stor21.length) * 0.5) + _10733 + 101] = 0
                                return 32, mem[_15517 + (uint255(stor21.length) * 0.5) + _10733 + 69 len ceil32(_23356) + 32]
                            if bool(stor21.length) == stor21.length.field_1 < 32:
                                revert with 0, 34
                            mem[128] = stor21.length.field_1
                            if bool(stor21.length):
                                if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not Mask(256, -1, stor21.length):
                                    if not stor26:
                                        if not cd[4]:
                                            mem[ceil32(stor21.length.field_1) + 256 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 262] = 32
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294] = mem[ceil32(stor21.length.field_1) + 224]
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])] = mem[ceil32(stor21.length.field_1) + 256 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 224]) <= mem[ceil32(stor21.length.field_1) + 224]:
                                                return Array(len=mem[ceil32(stor21.length.field_1) + 224], data=mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]), 
                                            mem[mem[ceil32(stor21.length.field_1) + 224] + ceil32(stor21.length.field_1) + stor21.length.field_1 + 326] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294 len ceil32(mem[ceil32(stor21.length.field_1) + 224]) + 32], 
                                        s = 0
                                        idx = cd[4]
                                        while idx:
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            idx = idx / 10
                                            continue 
                                        if s > test266151307():
                                            revert with 0, 65
                                        mem[ceil32(stor21.length.field_1) + 160] = s
                                        if not s:
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                    _23373 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23373)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23373)]
                                                    if ceil32(_23373) > _23373:
                                                        mem[_23373 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23373) + 32], 
                                                _23374 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23374)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23374)]
                                                if ceil32(_23374) > _23374:
                                                    mem[_23374 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23374) + 32], 
                                            mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _23375 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23375)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23375)]
                                                if ceil32(_23375) > _23375:
                                                    mem[_23375 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23375) + 32], 
                                            _23376 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23376)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23376)]
                                            if ceil32(_23376) > _23376:
                                                mem[_23376 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23376) + 32], 
                                        mem[ceil32(stor21.length.field_1) + 192 len s] = call.data[calldata.size len s]
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _23377 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23377)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23377)]
                                                if ceil32(_23377) > _23377:
                                                    mem[_23377 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23377) + 32], 
                                            _23378 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23378)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23378)]
                                            if ceil32(_23378) > _23378:
                                                mem[_23378 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23378) + 32], 
                                        mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _23379 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23379)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23379)]
                                            if ceil32(_23379) > _23379:
                                                mem[_23379 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23379) + 32], 
                                        _23380 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23380)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23380)]
                                        if ceil32(_23380) > _23380:
                                            mem[_23380 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23380) + 32], 
                                    mem[ceil32(stor21.length.field_1) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(stor21.length.field_1) + 164] = cd[4]
                                    require ext_code.size(stor26)
                                    staticcall stor26.0xff74ef30 with:
                                            gas gas_remaining wei
                                           args cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(stor21.length.field_1) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160
                                    require return_data.size >= 32
                                    _629 = mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                    require mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                    require ceil32(stor21.length.field_1) + return_data.size + 160 > ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                    _699 = mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                    if mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                    mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160] = _699
                                    require _629 + _699 + 32 <= return_data.size
                                    mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_699)] = mem[ceil32(stor21.length.field_1) + _629 + 192 len ceil32(_699)]
                                    if ceil32(_699) <= _699:
                                        _9155 = mem[64]
                                        mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_699)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_699)]
                                            mem[_9155 + stor21.length.field_1 + _699 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_699) <= _699:
                                                _19373 = mem[64]
                                                mem[64] = _9155 + stor21.length.field_1 + _699 + 37
                                                mem[_9155 + stor21.length.field_1 + _699 + 37] = 32
                                                _20113 = mem[_19373]
                                                mem[_9155 + stor21.length.field_1 + _699 + 69] = mem[_19373]
                                                mem[_9155 + stor21.length.field_1 + _699 + 101 len ceil32(_20113)] = mem[_19373 + 32 len ceil32(_20113)]
                                                if ceil32(_20113) > _20113:
                                                    mem[_20113 + _9155 + stor21.length.field_1 + _699 + 101] = 0
                                                return 32, mem[_9155 + stor21.length.field_1 + _699 + 69 len ceil32(_20113) + 32]
                                            _19374 = mem[64]
                                            mem[64] = _9155 + stor21.length.field_1 + _699 + 37
                                            mem[_9155 + stor21.length.field_1 + _699 + 37] = 32
                                            _20114 = mem[_19374]
                                            mem[_9155 + stor21.length.field_1 + _699 + 69] = mem[_19374]
                                            mem[_9155 + stor21.length.field_1 + _699 + 101 len ceil32(_20114)] = mem[_19374 + 32 len ceil32(_20114)]
                                            if ceil32(_20114) > _20114:
                                                mem[_20114 + _9155 + stor21.length.field_1 + _699 + 101] = 0
                                            return 32, mem[_9155 + stor21.length.field_1 + _699 + 69 len ceil32(_20114) + 32]
                                        mem[stor21.length.field_1 + mem[64] + 32] = 0
                                        mem[_9155 + stor21.length.field_1 + 32 len ceil32(_699)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_699)]
                                        mem[_9155 + stor21.length.field_1 + _699 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_699) <= _699:
                                            _19375 = mem[64]
                                            mem[64] = _9155 + stor21.length.field_1 + _699 + 37
                                            mem[_9155 + stor21.length.field_1 + _699 + 37] = 32
                                            _20115 = mem[_19375]
                                            mem[_9155 + stor21.length.field_1 + _699 + 69] = mem[_19375]
                                            mem[_9155 + stor21.length.field_1 + _699 + 101 len ceil32(_20115)] = mem[_19375 + 32 len ceil32(_20115)]
                                            if ceil32(_20115) > _20115:
                                                mem[_20115 + _9155 + stor21.length.field_1 + _699 + 101] = 0
                                            return 32, mem[_9155 + stor21.length.field_1 + _699 + 69 len ceil32(_20115) + 32]
                                        _19376 = mem[64]
                                        mem[64] = _9155 + stor21.length.field_1 + _699 + 37
                                        mem[_9155 + stor21.length.field_1 + _699 + 37] = 32
                                        _20116 = mem[_19376]
                                        mem[_9155 + stor21.length.field_1 + _699 + 69] = mem[_19376]
                                        mem[_9155 + stor21.length.field_1 + _699 + 101 len ceil32(_20116)] = mem[_19376 + 32 len ceil32(_20116)]
                                        if ceil32(_20116) > _20116:
                                            mem[_20116 + _9155 + stor21.length.field_1 + _699 + 101] = 0
                                        return 32, mem[_9155 + stor21.length.field_1 + _699 + 69 len ceil32(_20116) + 32]
                                    mem[_699 + ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192] = 0
                                    _9156 = mem[64]
                                    mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_699)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_699)]
                                        mem[_9156 + stor21.length.field_1 + _699 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_699) <= _699:
                                            _19377 = mem[64]
                                            mem[64] = _9156 + stor21.length.field_1 + _699 + 37
                                            mem[_9156 + stor21.length.field_1 + _699 + 37] = 32
                                            _20117 = mem[_19377]
                                            mem[_9156 + stor21.length.field_1 + _699 + 69] = mem[_19377]
                                            mem[_9156 + stor21.length.field_1 + _699 + 101 len ceil32(_20117)] = mem[_19377 + 32 len ceil32(_20117)]
                                            if ceil32(_20117) > _20117:
                                                mem[_20117 + _9156 + stor21.length.field_1 + _699 + 101] = 0
                                            return 32, mem[_9156 + stor21.length.field_1 + _699 + 69 len ceil32(_20117) + 32]
                                        _19378 = mem[64]
                                        mem[64] = _9156 + stor21.length.field_1 + _699 + 37
                                        mem[_9156 + stor21.length.field_1 + _699 + 37] = 32
                                        _20118 = mem[_19378]
                                        mem[_9156 + stor21.length.field_1 + _699 + 69] = mem[_19378]
                                        mem[_9156 + stor21.length.field_1 + _699 + 101 len ceil32(_20118)] = mem[_19378 + 32 len ceil32(_20118)]
                                        if ceil32(_20118) > _20118:
                                            mem[_20118 + _9156 + stor21.length.field_1 + _699 + 101] = 0
                                        return 32, mem[_9156 + stor21.length.field_1 + _699 + 69 len ceil32(_20118) + 32]
                                    mem[stor21.length.field_1 + mem[64] + 32] = 0
                                    mem[_9156 + stor21.length.field_1 + 32 len ceil32(_699)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_699)]
                                    mem[_9156 + stor21.length.field_1 + _699 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_699) <= _699:
                                        _19379 = mem[64]
                                        mem[64] = _9156 + stor21.length.field_1 + _699 + 37
                                        mem[_9156 + stor21.length.field_1 + _699 + 37] = 32
                                        _20119 = mem[_19379]
                                        mem[_9156 + stor21.length.field_1 + _699 + 69] = mem[_19379]
                                        mem[_9156 + stor21.length.field_1 + _699 + 101 len ceil32(_20119)] = mem[_19379 + 32 len ceil32(_20119)]
                                        if ceil32(_20119) > _20119:
                                            mem[_20119 + _9156 + stor21.length.field_1 + _699 + 101] = 0
                                        return 32, mem[_9156 + stor21.length.field_1 + _699 + 69 len ceil32(_20119) + 32]
                                    _19380 = mem[64]
                                    mem[64] = _9156 + stor21.length.field_1 + _699 + 37
                                    mem[_9156 + stor21.length.field_1 + _699 + 37] = 32
                                    _20120 = mem[_19380]
                                    mem[_9156 + stor21.length.field_1 + _699 + 69] = mem[_19380]
                                    mem[_9156 + stor21.length.field_1 + _699 + 101 len ceil32(_20120)] = mem[_19380 + 32 len ceil32(_20120)]
                                    if ceil32(_20120) > _20120:
                                        mem[_20120 + _9156 + stor21.length.field_1 + _699 + 101] = 0
                                    return 32, mem[_9156 + stor21.length.field_1 + _699 + 69 len ceil32(_20120) + 32]
                                if 31 >= uint255(stor21.length) * 0.5:
                                    mem[160] = 256 * stor21.length.field_8
                                    if not stor26:
                                        if not cd[4]:
                                            mem[ceil32(stor21.length.field_1) + 256 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 262] = 32
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294] = mem[ceil32(stor21.length.field_1) + 224]
                                            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])] = mem[ceil32(stor21.length.field_1) + 256 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 224]) <= mem[ceil32(stor21.length.field_1) + 224]:
                                                return Array(len=mem[ceil32(stor21.length.field_1) + 224], data=mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]), 
                                            mem[mem[ceil32(stor21.length.field_1) + 224] + ceil32(stor21.length.field_1) + stor21.length.field_1 + 326] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294 len ceil32(mem[ceil32(stor21.length.field_1) + 224]) + 32], 
                                        s = 0
                                        idx = cd[4]
                                        while idx:
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            idx = idx / 10
                                            continue 
                                        if s > test266151307():
                                            revert with 0, 65
                                        mem[ceil32(stor21.length.field_1) + 160] = s
                                        if not s:
                                            t = s
                                            idx = cd[4]
                                            while idx:
                                                if t < 1:
                                                    revert with 0, 17
                                                if 48 > !(idx % 10):
                                                    revert with 0, 17
                                                if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                    revert with 0, 50
                                                mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                                t = t - 1
                                                idx = idx / 10
                                                continue 
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                            if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                                mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                                if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                    _23397 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23397)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23397)]
                                                    if ceil32(_23397) > _23397:
                                                        mem[_23397 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23397) + 32], 
                                                _23398 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23398)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23398)]
                                                if ceil32(_23398) > _23398:
                                                    mem[_23398 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23398) + 32], 
                                            mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _23399 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23399)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23399)]
                                                if ceil32(_23399) > _23399:
                                                    mem[_23399 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23399) + 32], 
                                            _23400 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23400)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23400)]
                                            if ceil32(_23400) > _23400:
                                                mem[_23400 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23400) + 32], 
                                        mem[ceil32(stor21.length.field_1) + 192 len s] = call.data[calldata.size len s]
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _23401 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23401)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23401)]
                                                if ceil32(_23401) > _23401:
                                                    mem[_23401 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23401) + 32], 
                                            _23402 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23402)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23402)]
                                            if ceil32(_23402) > _23402:
                                                mem[_23402 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23402) + 32], 
                                        mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _23403 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23403)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23403)]
                                            if ceil32(_23403) > _23403:
                                                mem[_23403 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23403) + 32], 
                                        _23404 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23404)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23404)]
                                        if ceil32(_23404) > _23404:
                                            mem[_23404 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23404) + 32], 
                                    mem[ceil32(stor21.length.field_1) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(stor21.length.field_1) + 164] = cd[4]
                                    require ext_code.size(stor26)
                                    staticcall stor26.0xff74ef30 with:
                                            gas gas_remaining wei
                                           args cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(stor21.length.field_1) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160
                                    require return_data.size >= 32
                                    _702 = mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                    require mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                    require ceil32(stor21.length.field_1) + return_data.size + 160 > ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                    _768 = mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                    if mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                    mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160] = _768
                                    require _702 + _768 + 32 <= return_data.size
                                    mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_768)] = mem[ceil32(stor21.length.field_1) + _702 + 192 len ceil32(_768)]
                                    if ceil32(_768) <= _768:
                                        _9159 = mem[64]
                                        mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_768)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_768)]
                                            mem[_9159 + stor21.length.field_1 + _768 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            if ceil32(_768) <= _768:
                                                _19387 = mem[64]
                                                mem[64] = _9159 + stor21.length.field_1 + _768 + 37
                                                mem[_9159 + stor21.length.field_1 + _768 + 37] = 32
                                                _20145 = mem[_19387]
                                                mem[_9159 + stor21.length.field_1 + _768 + 69] = mem[_19387]
                                                mem[_9159 + stor21.length.field_1 + _768 + 101 len ceil32(_20145)] = mem[_19387 + 32 len ceil32(_20145)]
                                                if ceil32(_20145) > _20145:
                                                    mem[_20145 + _9159 + stor21.length.field_1 + _768 + 101] = 0
                                                return 32, mem[_9159 + stor21.length.field_1 + _768 + 69 len ceil32(_20145) + 32]
                                            _19388 = mem[64]
                                            mem[64] = _9159 + stor21.length.field_1 + _768 + 37
                                            mem[_9159 + stor21.length.field_1 + _768 + 37] = 32
                                            _20146 = mem[_19388]
                                            mem[_9159 + stor21.length.field_1 + _768 + 69] = mem[_19388]
                                            mem[_9159 + stor21.length.field_1 + _768 + 101 len ceil32(_20146)] = mem[_19388 + 32 len ceil32(_20146)]
                                            if ceil32(_20146) > _20146:
                                                mem[_20146 + _9159 + stor21.length.field_1 + _768 + 101] = 0
                                            return 32, mem[_9159 + stor21.length.field_1 + _768 + 69 len ceil32(_20146) + 32]
                                        mem[stor21.length.field_1 + mem[64] + 32] = 0
                                        mem[_9159 + stor21.length.field_1 + 32 len ceil32(_768)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_768)]
                                        mem[_9159 + stor21.length.field_1 + _768 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_768) <= _768:
                                            _19389 = mem[64]
                                            mem[64] = _9159 + stor21.length.field_1 + _768 + 37
                                            mem[_9159 + stor21.length.field_1 + _768 + 37] = 32
                                            _20147 = mem[_19389]
                                            mem[_9159 + stor21.length.field_1 + _768 + 69] = mem[_19389]
                                            mem[_9159 + stor21.length.field_1 + _768 + 101 len ceil32(_20147)] = mem[_19389 + 32 len ceil32(_20147)]
                                            if ceil32(_20147) > _20147:
                                                mem[_20147 + _9159 + stor21.length.field_1 + _768 + 101] = 0
                                            return 32, mem[_9159 + stor21.length.field_1 + _768 + 69 len ceil32(_20147) + 32]
                                        _19390 = mem[64]
                                        mem[64] = _9159 + stor21.length.field_1 + _768 + 37
                                        mem[_9159 + stor21.length.field_1 + _768 + 37] = 32
                                        _20148 = mem[_19390]
                                        mem[_9159 + stor21.length.field_1 + _768 + 69] = mem[_19390]
                                        mem[_9159 + stor21.length.field_1 + _768 + 101 len ceil32(_20148)] = mem[_19390 + 32 len ceil32(_20148)]
                                        if ceil32(_20148) > _20148:
                                            mem[_20148 + _9159 + stor21.length.field_1 + _768 + 101] = 0
                                        return 32, mem[_9159 + stor21.length.field_1 + _768 + 69 len ceil32(_20148) + 32]
                                    mem[_768 + ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192] = 0
                                    _9160 = mem[64]
                                    mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_768)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_768)]
                                        mem[_9160 + stor21.length.field_1 + _768 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_768) <= _768:
                                            _19391 = mem[64]
                                            mem[64] = _9160 + stor21.length.field_1 + _768 + 37
                                            mem[_9160 + stor21.length.field_1 + _768 + 37] = 32
                                            _20149 = mem[_19391]
                                            mem[_9160 + stor21.length.field_1 + _768 + 69] = mem[_19391]
                                            mem[_9160 + stor21.length.field_1 + _768 + 101 len ceil32(_20149)] = mem[_19391 + 32 len ceil32(_20149)]
                                            if ceil32(_20149) > _20149:
                                                mem[_20149 + _9160 + stor21.length.field_1 + _768 + 101] = 0
                                            return 32, mem[_9160 + stor21.length.field_1 + _768 + 69 len ceil32(_20149) + 32]
                                        _19392 = mem[64]
                                        mem[64] = _9160 + stor21.length.field_1 + _768 + 37
                                        mem[_9160 + stor21.length.field_1 + _768 + 37] = 32
                                        _20150 = mem[_19392]
                                        mem[_9160 + stor21.length.field_1 + _768 + 69] = mem[_19392]
                                        mem[_9160 + stor21.length.field_1 + _768 + 101 len ceil32(_20150)] = mem[_19392 + 32 len ceil32(_20150)]
                                        if ceil32(_20150) > _20150:
                                            mem[_20150 + _9160 + stor21.length.field_1 + _768 + 101] = 0
                                        return 32, mem[_9160 + stor21.length.field_1 + _768 + 69 len ceil32(_20150) + 32]
                                    mem[stor21.length.field_1 + mem[64] + 32] = 0
                                    mem[_9160 + stor21.length.field_1 + 32 len ceil32(_768)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_768)]
                                    mem[_9160 + stor21.length.field_1 + _768 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_768) <= _768:
                                        _19393 = mem[64]
                                        mem[64] = _9160 + stor21.length.field_1 + _768 + 37
                                        mem[_9160 + stor21.length.field_1 + _768 + 37] = 32
                                        _20151 = mem[_19393]
                                        mem[_9160 + stor21.length.field_1 + _768 + 69] = mem[_19393]
                                        mem[_9160 + stor21.length.field_1 + _768 + 101 len ceil32(_20151)] = mem[_19393 + 32 len ceil32(_20151)]
                                        if ceil32(_20151) > _20151:
                                            mem[_20151 + _9160 + stor21.length.field_1 + _768 + 101] = 0
                                        return 32, mem[_9160 + stor21.length.field_1 + _768 + 69 len ceil32(_20151) + 32]
                                    _19394 = mem[64]
                                    mem[64] = _9160 + stor21.length.field_1 + _768 + 37
                                    mem[_9160 + stor21.length.field_1 + _768 + 37] = 32
                                    _20152 = mem[_19394]
                                    mem[_9160 + stor21.length.field_1 + _768 + 69] = mem[_19394]
                                    mem[_9160 + stor21.length.field_1 + _768 + 101 len ceil32(_20152)] = mem[_19394 + 32 len ceil32(_20152)]
                                    if ceil32(_20152) > _20152:
                                        mem[_20152 + _9160 + stor21.length.field_1 + _768 + 101] = 0
                                    return 32, mem[_9160 + stor21.length.field_1 + _768 + 69 len ceil32(_20152) + 32]
                                mem[0] = 21
                                mem[160] = uint256(stor21.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor21.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor21[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if not stor26:
                                    if not cd[4]:
                                        mem[ceil32(stor21.length.field_1) + 256 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 262] = 32
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294] = mem[ceil32(stor21.length.field_1) + 224]
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])] = mem[ceil32(stor21.length.field_1) + 256 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 224]) <= mem[ceil32(stor21.length.field_1) + 224]:
                                            return Array(len=mem[ceil32(stor21.length.field_1) + 224], data=mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]), 
                                        mem[mem[ceil32(stor21.length.field_1) + 224] + ceil32(stor21.length.field_1) + stor21.length.field_1 + 326] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294 len ceil32(mem[ceil32(stor21.length.field_1) + 224]) + 32], 
                                    s = 0
                                    idx = cd[4]
                                    while idx:
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        idx = idx / 10
                                        continue 
                                    if s > test266151307():
                                        revert with 0, 65
                                    mem[ceil32(stor21.length.field_1) + 160] = s
                                    if not s:
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _25161 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25161)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25161)]
                                                if ceil32(_25161) > _25161:
                                                    mem[_25161 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25161) + 32], 
                                            _25162 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25162)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25162)]
                                            if ceil32(_25162) > _25162:
                                                mem[_25162 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25162) + 32], 
                                        mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _25163 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25163)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25163)]
                                            if ceil32(_25163) > _25163:
                                                mem[_25163 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25163) + 32], 
                                        _25164 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25164)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25164)]
                                        if ceil32(_25164) > _25164:
                                            mem[_25164 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25164) + 32], 
                                    mem[ceil32(stor21.length.field_1) + 192 len s] = call.data[calldata.size len s]
                                    t = s
                                    idx = cd[4]
                                    while idx:
                                        if t < 1:
                                            revert with 0, 17
                                        if 48 > !(idx % 10):
                                            revert with 0, 17
                                        if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                            revert with 0, 50
                                        mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                        t = t - 1
                                        idx = idx / 10
                                        continue 
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _25165 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25165)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25165)]
                                            if ceil32(_25165) > _25165:
                                                mem[_25165 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25165) + 32], 
                                        _25166 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25166)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25166)]
                                        if ceil32(_25166) > _25166:
                                            mem[_25166 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25166) + 32], 
                                    mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                    if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                        _25167 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25167)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25167)]
                                        if ceil32(_25167) > _25167:
                                            mem[_25167 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25167) + 32], 
                                    _25168 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25168)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25168)]
                                    if ceil32(_25168) > _25168:
                                        mem[_25168 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25168) + 32], 
                                mem[ceil32(stor21.length.field_1) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(stor21.length.field_1) + 164] = cd[4]
                                require ext_code.size(stor26)
                                staticcall stor26.0xff74ef30 with:
                                        gas gas_remaining wei
                                       args cd[4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(stor21.length.field_1) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160
                                require return_data.size >= 32
                                _9784 = mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                require mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                require ceil32(stor21.length.field_1) + return_data.size + 160 > ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                _10742 = mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                if mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                    revert with 0, 65
                                mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160] = _10742
                                require _9784 + _10742 + 32 <= return_data.size
                                mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10742)] = mem[ceil32(stor21.length.field_1) + _9784 + 192 len ceil32(_10742)]
                                if ceil32(_10742) <= _10742:
                                    _15530 = mem[64]
                                    mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_10742)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10742)]
                                        mem[_15530 + stor21.length.field_1 + _10742 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_10742) <= _10742:
                                            _22581 = mem[64]
                                            mem[64] = _15530 + stor21.length.field_1 + _10742 + 37
                                            mem[_15530 + stor21.length.field_1 + _10742 + 37] = 32
                                            _23381 = mem[_22581]
                                            mem[_15530 + stor21.length.field_1 + _10742 + 69] = mem[_22581]
                                            mem[_15530 + stor21.length.field_1 + _10742 + 101 len ceil32(_23381)] = mem[_22581 + 32 len ceil32(_23381)]
                                            if ceil32(_23381) > _23381:
                                                mem[_23381 + _15530 + stor21.length.field_1 + _10742 + 101] = 0
                                            return 32, mem[_15530 + stor21.length.field_1 + _10742 + 69 len ceil32(_23381) + 32]
                                        _22582 = mem[64]
                                        mem[64] = _15530 + stor21.length.field_1 + _10742 + 37
                                        mem[_15530 + stor21.length.field_1 + _10742 + 37] = 32
                                        _23382 = mem[_22582]
                                        mem[_15530 + stor21.length.field_1 + _10742 + 69] = mem[_22582]
                                        mem[_15530 + stor21.length.field_1 + _10742 + 101 len ceil32(_23382)] = mem[_22582 + 32 len ceil32(_23382)]
                                        if ceil32(_23382) > _23382:
                                            mem[_23382 + _15530 + stor21.length.field_1 + _10742 + 101] = 0
                                        return 32, mem[_15530 + stor21.length.field_1 + _10742 + 69 len ceil32(_23382) + 32]
                                    mem[stor21.length.field_1 + mem[64] + 32] = 0
                                    mem[_15530 + stor21.length.field_1 + 32 len ceil32(_10742)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10742)]
                                    mem[_15530 + stor21.length.field_1 + _10742 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_10742) <= _10742:
                                        _22583 = mem[64]
                                        mem[64] = _15530 + stor21.length.field_1 + _10742 + 37
                                        mem[_15530 + stor21.length.field_1 + _10742 + 37] = 32
                                        _23383 = mem[_22583]
                                        mem[_15530 + stor21.length.field_1 + _10742 + 69] = mem[_22583]
                                        mem[_15530 + stor21.length.field_1 + _10742 + 101 len ceil32(_23383)] = mem[_22583 + 32 len ceil32(_23383)]
                                        if ceil32(_23383) > _23383:
                                            mem[_23383 + _15530 + stor21.length.field_1 + _10742 + 101] = 0
                                        return 32, mem[_15530 + stor21.length.field_1 + _10742 + 69 len ceil32(_23383) + 32]
                                    _22584 = mem[64]
                                    mem[64] = _15530 + stor21.length.field_1 + _10742 + 37
                                    mem[_15530 + stor21.length.field_1 + _10742 + 37] = 32
                                    _23384 = mem[_22584]
                                    mem[_15530 + stor21.length.field_1 + _10742 + 69] = mem[_22584]
                                    mem[_15530 + stor21.length.field_1 + _10742 + 101 len ceil32(_23384)] = mem[_22584 + 32 len ceil32(_23384)]
                                    if ceil32(_23384) > _23384:
                                        mem[_23384 + _15530 + stor21.length.field_1 + _10742 + 101] = 0
                                    return 32, mem[_15530 + stor21.length.field_1 + _10742 + 69 len ceil32(_23384) + 32]
                                mem[_10742 + ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192] = 0
                                _15531 = mem[64]
                                mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                    mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_10742)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10742)]
                                    mem[_15531 + stor21.length.field_1 + _10742 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_10742) <= _10742:
                                        _22585 = mem[64]
                                        mem[64] = _15531 + stor21.length.field_1 + _10742 + 37
                                        mem[_15531 + stor21.length.field_1 + _10742 + 37] = 32
                                        _23385 = mem[_22585]
                                        mem[_15531 + stor21.length.field_1 + _10742 + 69] = mem[_22585]
                                        mem[_15531 + stor21.length.field_1 + _10742 + 101 len ceil32(_23385)] = mem[_22585 + 32 len ceil32(_23385)]
                                        if ceil32(_23385) > _23385:
                                            mem[_23385 + _15531 + stor21.length.field_1 + _10742 + 101] = 0
                                        return 32, mem[_15531 + stor21.length.field_1 + _10742 + 69 len ceil32(_23385) + 32]
                                    _22586 = mem[64]
                                    mem[64] = _15531 + stor21.length.field_1 + _10742 + 37
                                    mem[_15531 + stor21.length.field_1 + _10742 + 37] = 32
                                    _23386 = mem[_22586]
                                    mem[_15531 + stor21.length.field_1 + _10742 + 69] = mem[_22586]
                                    mem[_15531 + stor21.length.field_1 + _10742 + 101 len ceil32(_23386)] = mem[_22586 + 32 len ceil32(_23386)]
                                    if ceil32(_23386) > _23386:
                                        mem[_23386 + _15531 + stor21.length.field_1 + _10742 + 101] = 0
                                    return 32, mem[_15531 + stor21.length.field_1 + _10742 + 69 len ceil32(_23386) + 32]
                                mem[stor21.length.field_1 + mem[64] + 32] = 0
                                mem[_15531 + stor21.length.field_1 + 32 len ceil32(_10742)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10742)]
                                mem[_15531 + stor21.length.field_1 + _10742 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                if ceil32(_10742) <= _10742:
                                    _22587 = mem[64]
                                    mem[64] = _15531 + stor21.length.field_1 + _10742 + 37
                                    mem[_15531 + stor21.length.field_1 + _10742 + 37] = 32
                                    _23387 = mem[_22587]
                                    mem[_15531 + stor21.length.field_1 + _10742 + 69] = mem[_22587]
                                    mem[_15531 + stor21.length.field_1 + _10742 + 101 len ceil32(_23387)] = mem[_22587 + 32 len ceil32(_23387)]
                                    if ceil32(_23387) > _23387:
                                        mem[_23387 + _15531 + stor21.length.field_1 + _10742 + 101] = 0
                                    return 32, mem[_15531 + stor21.length.field_1 + _10742 + 69 len ceil32(_23387) + 32]
                                _22588 = mem[64]
                                mem[64] = _15531 + stor21.length.field_1 + _10742 + 37
                                mem[_15531 + stor21.length.field_1 + _10742 + 37] = 32
                                _23388 = mem[_22588]
                                mem[_15531 + stor21.length.field_1 + _10742 + 69] = mem[_22588]
                                mem[_15531 + stor21.length.field_1 + _10742 + 101 len ceil32(_23388)] = mem[_22588 + 32 len ceil32(_23388)]
                                if ceil32(_23388) > _23388:
                                    mem[_23388 + _15531 + stor21.length.field_1 + _10742 + 101] = 0
                                return 32, mem[_15531 + stor21.length.field_1 + _10742 + 69 len ceil32(_23388) + 32]
                            if bool(stor21.length) == stor21.length.field_1 < 32:
                                revert with 0, 34
                            if not stor21.length.field_1:
                                if not stor26:
                                    if not cd[4]:
                                        mem[ceil32(stor21.length.field_1) + 256 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 262] = 32
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294] = mem[ceil32(stor21.length.field_1) + 224]
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])] = mem[ceil32(stor21.length.field_1) + 256 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 224]) <= mem[ceil32(stor21.length.field_1) + 224]:
                                            return Array(len=mem[ceil32(stor21.length.field_1) + 224], data=mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]), 
                                        mem[mem[ceil32(stor21.length.field_1) + 224] + ceil32(stor21.length.field_1) + stor21.length.field_1 + 326] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294 len ceil32(mem[ceil32(stor21.length.field_1) + 224]) + 32], 
                                    s = 0
                                    idx = cd[4]
                                    while idx:
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        idx = idx / 10
                                        continue 
                                    if s > test266151307():
                                        revert with 0, 65
                                    mem[ceil32(stor21.length.field_1) + 160] = s
                                    if not s:
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _23405 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23405)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23405)]
                                                if ceil32(_23405) > _23405:
                                                    mem[_23405 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23405) + 32], 
                                            _23406 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23406)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23406)]
                                            if ceil32(_23406) > _23406:
                                                mem[_23406 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23406) + 32], 
                                        mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _23407 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23407)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23407)]
                                            if ceil32(_23407) > _23407:
                                                mem[_23407 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23407) + 32], 
                                        _23408 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23408)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23408)]
                                        if ceil32(_23408) > _23408:
                                            mem[_23408 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23408) + 32], 
                                    mem[ceil32(stor21.length.field_1) + 192 len s] = call.data[calldata.size len s]
                                    t = s
                                    idx = cd[4]
                                    while idx:
                                        if t < 1:
                                            revert with 0, 17
                                        if 48 > !(idx % 10):
                                            revert with 0, 17
                                        if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                            revert with 0, 50
                                        mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                        t = t - 1
                                        idx = idx / 10
                                        continue 
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _23409 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23409)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23409)]
                                            if ceil32(_23409) > _23409:
                                                mem[_23409 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23409) + 32], 
                                        _23410 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23410)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23410)]
                                        if ceil32(_23410) > _23410:
                                            mem[_23410 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23410) + 32], 
                                    mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                    if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                        _23411 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23411)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23411)]
                                        if ceil32(_23411) > _23411:
                                            mem[_23411 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23411) + 32], 
                                    _23412 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23412)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23412)]
                                    if ceil32(_23412) > _23412:
                                        mem[_23412 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23412) + 32], 
                                mem[ceil32(stor21.length.field_1) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(stor21.length.field_1) + 164] = cd[4]
                                require ext_code.size(stor26)
                                staticcall stor26.0xff74ef30 with:
                                        gas gas_remaining wei
                                       args cd[4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(stor21.length.field_1) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160
                                require return_data.size >= 32
                                _666 = mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                require mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                require ceil32(stor21.length.field_1) + return_data.size + 160 > ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                _732 = mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                if mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                    revert with 0, 65
                                mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160] = _732
                                require _666 + _732 + 32 <= return_data.size
                                mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_732)] = mem[ceil32(stor21.length.field_1) + _666 + 192 len ceil32(_732)]
                                if ceil32(_732) <= _732:
                                    _9161 = mem[64]
                                    mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_732)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_732)]
                                        mem[_9161 + stor21.length.field_1 + _732 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_732) <= _732:
                                            _19395 = mem[64]
                                            mem[64] = _9161 + stor21.length.field_1 + _732 + 37
                                            mem[_9161 + stor21.length.field_1 + _732 + 37] = 32
                                            _20161 = mem[_19395]
                                            mem[_9161 + stor21.length.field_1 + _732 + 69] = mem[_19395]
                                            mem[_9161 + stor21.length.field_1 + _732 + 101 len ceil32(_20161)] = mem[_19395 + 32 len ceil32(_20161)]
                                            if ceil32(_20161) > _20161:
                                                mem[_20161 + _9161 + stor21.length.field_1 + _732 + 101] = 0
                                            return 32, mem[_9161 + stor21.length.field_1 + _732 + 69 len ceil32(_20161) + 32]
                                        _19396 = mem[64]
                                        mem[64] = _9161 + stor21.length.field_1 + _732 + 37
                                        mem[_9161 + stor21.length.field_1 + _732 + 37] = 32
                                        _20162 = mem[_19396]
                                        mem[_9161 + stor21.length.field_1 + _732 + 69] = mem[_19396]
                                        mem[_9161 + stor21.length.field_1 + _732 + 101 len ceil32(_20162)] = mem[_19396 + 32 len ceil32(_20162)]
                                        if ceil32(_20162) > _20162:
                                            mem[_20162 + _9161 + stor21.length.field_1 + _732 + 101] = 0
                                        return 32, mem[_9161 + stor21.length.field_1 + _732 + 69 len ceil32(_20162) + 32]
                                    mem[stor21.length.field_1 + mem[64] + 32] = 0
                                    mem[_9161 + stor21.length.field_1 + 32 len ceil32(_732)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_732)]
                                    mem[_9161 + stor21.length.field_1 + _732 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_732) <= _732:
                                        _19397 = mem[64]
                                        mem[64] = _9161 + stor21.length.field_1 + _732 + 37
                                        mem[_9161 + stor21.length.field_1 + _732 + 37] = 32
                                        _20163 = mem[_19397]
                                        mem[_9161 + stor21.length.field_1 + _732 + 69] = mem[_19397]
                                        mem[_9161 + stor21.length.field_1 + _732 + 101 len ceil32(_20163)] = mem[_19397 + 32 len ceil32(_20163)]
                                        if ceil32(_20163) > _20163:
                                            mem[_20163 + _9161 + stor21.length.field_1 + _732 + 101] = 0
                                        return 32, mem[_9161 + stor21.length.field_1 + _732 + 69 len ceil32(_20163) + 32]
                                    _19398 = mem[64]
                                    mem[64] = _9161 + stor21.length.field_1 + _732 + 37
                                    mem[_9161 + stor21.length.field_1 + _732 + 37] = 32
                                    _20164 = mem[_19398]
                                    mem[_9161 + stor21.length.field_1 + _732 + 69] = mem[_19398]
                                    mem[_9161 + stor21.length.field_1 + _732 + 101 len ceil32(_20164)] = mem[_19398 + 32 len ceil32(_20164)]
                                    if ceil32(_20164) > _20164:
                                        mem[_20164 + _9161 + stor21.length.field_1 + _732 + 101] = 0
                                    return 32, mem[_9161 + stor21.length.field_1 + _732 + 69 len ceil32(_20164) + 32]
                                mem[_732 + ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192] = 0
                                _9162 = mem[64]
                                mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                    mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_732)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_732)]
                                    mem[_9162 + stor21.length.field_1 + _732 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_732) <= _732:
                                        _19399 = mem[64]
                                        mem[64] = _9162 + stor21.length.field_1 + _732 + 37
                                        mem[_9162 + stor21.length.field_1 + _732 + 37] = 32
                                        _20165 = mem[_19399]
                                        mem[_9162 + stor21.length.field_1 + _732 + 69] = mem[_19399]
                                        mem[_9162 + stor21.length.field_1 + _732 + 101 len ceil32(_20165)] = mem[_19399 + 32 len ceil32(_20165)]
                                        if ceil32(_20165) > _20165:
                                            mem[_20165 + _9162 + stor21.length.field_1 + _732 + 101] = 0
                                        return 32, mem[_9162 + stor21.length.field_1 + _732 + 69 len ceil32(_20165) + 32]
                                    _19400 = mem[64]
                                    mem[64] = _9162 + stor21.length.field_1 + _732 + 37
                                    mem[_9162 + stor21.length.field_1 + _732 + 37] = 32
                                    _20166 = mem[_19400]
                                    mem[_9162 + stor21.length.field_1 + _732 + 69] = mem[_19400]
                                    mem[_9162 + stor21.length.field_1 + _732 + 101 len ceil32(_20166)] = mem[_19400 + 32 len ceil32(_20166)]
                                    if ceil32(_20166) > _20166:
                                        mem[_20166 + _9162 + stor21.length.field_1 + _732 + 101] = 0
                                    return 32, mem[_9162 + stor21.length.field_1 + _732 + 69 len ceil32(_20166) + 32]
                                mem[stor21.length.field_1 + mem[64] + 32] = 0
                                mem[_9162 + stor21.length.field_1 + 32 len ceil32(_732)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_732)]
                                mem[_9162 + stor21.length.field_1 + _732 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                if ceil32(_732) <= _732:
                                    _19401 = mem[64]
                                    mem[64] = _9162 + stor21.length.field_1 + _732 + 37
                                    mem[_9162 + stor21.length.field_1 + _732 + 37] = 32
                                    _20167 = mem[_19401]
                                    mem[_9162 + stor21.length.field_1 + _732 + 69] = mem[_19401]
                                    mem[_9162 + stor21.length.field_1 + _732 + 101 len ceil32(_20167)] = mem[_19401 + 32 len ceil32(_20167)]
                                    if ceil32(_20167) > _20167:
                                        mem[_20167 + _9162 + stor21.length.field_1 + _732 + 101] = 0
                                    return 32, mem[_9162 + stor21.length.field_1 + _732 + 69 len ceil32(_20167) + 32]
                                _19402 = mem[64]
                                mem[64] = _9162 + stor21.length.field_1 + _732 + 37
                                mem[_9162 + stor21.length.field_1 + _732 + 37] = 32
                                _20168 = mem[_19402]
                                mem[_9162 + stor21.length.field_1 + _732 + 69] = mem[_19402]
                                mem[_9162 + stor21.length.field_1 + _732 + 101 len ceil32(_20168)] = mem[_19402 + 32 len ceil32(_20168)]
                                if ceil32(_20168) > _20168:
                                    mem[_20168 + _9162 + stor21.length.field_1 + _732 + 101] = 0
                                return 32, mem[_9162 + stor21.length.field_1 + _732 + 69 len ceil32(_20168) + 32]
                            if 31 >= stor21.length.field_1:
                                mem[160] = 256 * stor21.length.field_8
                                if not stor26:
                                    if not cd[4]:
                                        mem[ceil32(stor21.length.field_1) + 256 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 262] = 32
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294] = mem[ceil32(stor21.length.field_1) + 224]
                                        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])] = mem[ceil32(stor21.length.field_1) + 256 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 224]) <= mem[ceil32(stor21.length.field_1) + 224]:
                                            return Array(len=mem[ceil32(stor21.length.field_1) + 224], data=mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]), 
                                        mem[mem[ceil32(stor21.length.field_1) + 224] + ceil32(stor21.length.field_1) + stor21.length.field_1 + 326] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294 len ceil32(mem[ceil32(stor21.length.field_1) + 224]) + 32], 
                                    s = 0
                                    idx = cd[4]
                                    while idx:
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        idx = idx / 10
                                        continue 
                                    if s > test266151307():
                                        revert with 0, 65
                                    mem[ceil32(stor21.length.field_1) + 160] = s
                                    if not s:
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                        if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                            mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                            if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                                _23429 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23429)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23429)]
                                                if ceil32(_23429) > _23429:
                                                    mem[_23429 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23429) + 32], 
                                            _23430 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23430)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23430)]
                                            if ceil32(_23430) > _23430:
                                                mem[_23430 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23430) + 32], 
                                        mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _23431 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23431)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23431)]
                                            if ceil32(_23431) > _23431:
                                                mem[_23431 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23431) + 32], 
                                        _23432 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23432)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23432)]
                                        if ceil32(_23432) > _23432:
                                            mem[_23432 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23432) + 32], 
                                    mem[ceil32(stor21.length.field_1) + 192 len s] = call.data[calldata.size len s]
                                    t = s
                                    idx = cd[4]
                                    while idx:
                                        if t < 1:
                                            revert with 0, 17
                                        if 48 > !(idx % 10):
                                            revert with 0, 17
                                        if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                            revert with 0, 50
                                        mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                        t = t - 1
                                        idx = idx / 10
                                        continue 
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _23433 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23433)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23433)]
                                            if ceil32(_23433) > _23433:
                                                mem[_23433 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23433) + 32], 
                                        _23434 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23434)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23434)]
                                        if ceil32(_23434) > _23434:
                                            mem[_23434 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23434) + 32], 
                                    mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                    if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                        _23435 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23435)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23435)]
                                        if ceil32(_23435) > _23435:
                                            mem[_23435 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23435) + 32], 
                                    _23436 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_23436)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_23436)]
                                    if ceil32(_23436) > _23436:
                                        mem[_23436 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_23436) + 32], 
                                mem[ceil32(stor21.length.field_1) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(stor21.length.field_1) + 164] = cd[4]
                                require ext_code.size(stor26)
                                staticcall stor26.0xff74ef30 with:
                                        gas gas_remaining wei
                                       args cd[4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(stor21.length.field_1) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160
                                require return_data.size >= 32
                                _735 = mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                                require mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                                require ceil32(stor21.length.field_1) + return_data.size + 160 > ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                                _805 = mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                                if mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                    revert with 0, 65
                                mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                                mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160] = _805
                                require _735 + _805 + 32 <= return_data.size
                                mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_805)] = mem[ceil32(stor21.length.field_1) + _735 + 192 len ceil32(_805)]
                                if ceil32(_805) <= _805:
                                    _9165 = mem[64]
                                    mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_805)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_805)]
                                        mem[_9165 + stor21.length.field_1 + _805 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        if ceil32(_805) <= _805:
                                            _19409 = mem[64]
                                            mem[64] = _9165 + stor21.length.field_1 + _805 + 37
                                            mem[_9165 + stor21.length.field_1 + _805 + 37] = 32
                                            _20193 = mem[_19409]
                                            mem[_9165 + stor21.length.field_1 + _805 + 69] = mem[_19409]
                                            mem[_9165 + stor21.length.field_1 + _805 + 101 len ceil32(_20193)] = mem[_19409 + 32 len ceil32(_20193)]
                                            if ceil32(_20193) > _20193:
                                                mem[_20193 + _9165 + stor21.length.field_1 + _805 + 101] = 0
                                            return 32, mem[_9165 + stor21.length.field_1 + _805 + 69 len ceil32(_20193) + 32]
                                        _19410 = mem[64]
                                        mem[64] = _9165 + stor21.length.field_1 + _805 + 37
                                        mem[_9165 + stor21.length.field_1 + _805 + 37] = 32
                                        _20194 = mem[_19410]
                                        mem[_9165 + stor21.length.field_1 + _805 + 69] = mem[_19410]
                                        mem[_9165 + stor21.length.field_1 + _805 + 101 len ceil32(_20194)] = mem[_19410 + 32 len ceil32(_20194)]
                                        if ceil32(_20194) > _20194:
                                            mem[_20194 + _9165 + stor21.length.field_1 + _805 + 101] = 0
                                        return 32, mem[_9165 + stor21.length.field_1 + _805 + 69 len ceil32(_20194) + 32]
                                    mem[stor21.length.field_1 + mem[64] + 32] = 0
                                    mem[_9165 + stor21.length.field_1 + 32 len ceil32(_805)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_805)]
                                    mem[_9165 + stor21.length.field_1 + _805 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_805) <= _805:
                                        _19411 = mem[64]
                                        mem[64] = _9165 + stor21.length.field_1 + _805 + 37
                                        mem[_9165 + stor21.length.field_1 + _805 + 37] = 32
                                        _20195 = mem[_19411]
                                        mem[_9165 + stor21.length.field_1 + _805 + 69] = mem[_19411]
                                        mem[_9165 + stor21.length.field_1 + _805 + 101 len ceil32(_20195)] = mem[_19411 + 32 len ceil32(_20195)]
                                        if ceil32(_20195) > _20195:
                                            mem[_20195 + _9165 + stor21.length.field_1 + _805 + 101] = 0
                                        return 32, mem[_9165 + stor21.length.field_1 + _805 + 69 len ceil32(_20195) + 32]
                                    _19412 = mem[64]
                                    mem[64] = _9165 + stor21.length.field_1 + _805 + 37
                                    mem[_9165 + stor21.length.field_1 + _805 + 37] = 32
                                    _20196 = mem[_19412]
                                    mem[_9165 + stor21.length.field_1 + _805 + 69] = mem[_19412]
                                    mem[_9165 + stor21.length.field_1 + _805 + 101 len ceil32(_20196)] = mem[_19412 + 32 len ceil32(_20196)]
                                    if ceil32(_20196) > _20196:
                                        mem[_20196 + _9165 + stor21.length.field_1 + _805 + 101] = 0
                                    return 32, mem[_9165 + stor21.length.field_1 + _805 + 69 len ceil32(_20196) + 32]
                                mem[_805 + ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192] = 0
                                _9166 = mem[64]
                                mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                    mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_805)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_805)]
                                    mem[_9166 + stor21.length.field_1 + _805 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_805) <= _805:
                                        _19413 = mem[64]
                                        mem[64] = _9166 + stor21.length.field_1 + _805 + 37
                                        mem[_9166 + stor21.length.field_1 + _805 + 37] = 32
                                        _20197 = mem[_19413]
                                        mem[_9166 + stor21.length.field_1 + _805 + 69] = mem[_19413]
                                        mem[_9166 + stor21.length.field_1 + _805 + 101 len ceil32(_20197)] = mem[_19413 + 32 len ceil32(_20197)]
                                        if ceil32(_20197) > _20197:
                                            mem[_20197 + _9166 + stor21.length.field_1 + _805 + 101] = 0
                                        return 32, mem[_9166 + stor21.length.field_1 + _805 + 69 len ceil32(_20197) + 32]
                                    _19414 = mem[64]
                                    mem[64] = _9166 + stor21.length.field_1 + _805 + 37
                                    mem[_9166 + stor21.length.field_1 + _805 + 37] = 32
                                    _20198 = mem[_19414]
                                    mem[_9166 + stor21.length.field_1 + _805 + 69] = mem[_19414]
                                    mem[_9166 + stor21.length.field_1 + _805 + 101 len ceil32(_20198)] = mem[_19414 + 32 len ceil32(_20198)]
                                    if ceil32(_20198) > _20198:
                                        mem[_20198 + _9166 + stor21.length.field_1 + _805 + 101] = 0
                                    return 32, mem[_9166 + stor21.length.field_1 + _805 + 69 len ceil32(_20198) + 32]
                                mem[stor21.length.field_1 + mem[64] + 32] = 0
                                mem[_9166 + stor21.length.field_1 + 32 len ceil32(_805)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_805)]
                                mem[_9166 + stor21.length.field_1 + _805 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                if ceil32(_805) <= _805:
                                    _19415 = mem[64]
                                    mem[64] = _9166 + stor21.length.field_1 + _805 + 37
                                    mem[_9166 + stor21.length.field_1 + _805 + 37] = 32
                                    _20199 = mem[_19415]
                                    mem[_9166 + stor21.length.field_1 + _805 + 69] = mem[_19415]
                                    mem[_9166 + stor21.length.field_1 + _805 + 101 len ceil32(_20199)] = mem[_19415 + 32 len ceil32(_20199)]
                                    if ceil32(_20199) > _20199:
                                        mem[_20199 + _9166 + stor21.length.field_1 + _805 + 101] = 0
                                    return 32, mem[_9166 + stor21.length.field_1 + _805 + 69 len ceil32(_20199) + 32]
                                _19416 = mem[64]
                                mem[64] = _9166 + stor21.length.field_1 + _805 + 37
                                mem[_9166 + stor21.length.field_1 + _805 + 37] = 32
                                _20200 = mem[_19416]
                                mem[_9166 + stor21.length.field_1 + _805 + 69] = mem[_19416]
                                mem[_9166 + stor21.length.field_1 + _805 + 101 len ceil32(_20200)] = mem[_19416 + 32 len ceil32(_20200)]
                                if ceil32(_20200) > _20200:
                                    mem[_20200 + _9166 + stor21.length.field_1 + _805 + 101] = 0
                                return 32, mem[_9166 + stor21.length.field_1 + _805 + 69 len ceil32(_20200) + 32]
                            mem[0] = 21
                            mem[160] = uint256(stor21.field_0)
                            idx = 160
                            s = 0
                            while stor21.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor21[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor26:
                                if not cd[4]:
                                    mem[ceil32(stor21.length.field_1) + 256 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 257] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 262] = 32
                                    mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294] = mem[ceil32(stor21.length.field_1) + 224]
                                    mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])] = mem[ceil32(stor21.length.field_1) + 256 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]
                                    if ceil32(mem[ceil32(stor21.length.field_1) + 224]) <= mem[ceil32(stor21.length.field_1) + 224]:
                                        return Array(len=mem[ceil32(stor21.length.field_1) + 224], data=mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 326 len ceil32(mem[ceil32(stor21.length.field_1) + 224])]), 
                                    mem[mem[ceil32(stor21.length.field_1) + 224] + ceil32(stor21.length.field_1) + stor21.length.field_1 + 326] = 0
                                    return 32, mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 294 len ceil32(mem[ceil32(stor21.length.field_1) + 224]) + 32], 
                                s = 0
                                idx = cd[4]
                                while idx:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    idx = idx / 10
                                    continue 
                                if s > test266151307():
                                    revert with 0, 65
                                mem[ceil32(stor21.length.field_1) + 160] = s
                                if not s:
                                    t = s
                                    idx = cd[4]
                                    while idx:
                                        if t < 1:
                                            revert with 0, 17
                                        if 48 > !(idx % 10):
                                            revert with 0, 17
                                        if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                            revert with 0, 50
                                        mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                        t = t - 1
                                        idx = idx / 10
                                        continue 
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                    if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                        mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                        if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                            _25169 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                            mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25169)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25169)]
                                            if ceil32(_25169) > _25169:
                                                mem[_25169 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                            return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25169) + 32], 
                                        _25170 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25170)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25170)]
                                        if ceil32(_25170) > _25170:
                                            mem[_25170 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25170) + 32], 
                                    mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                    if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                        _25171 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25171)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25171)]
                                        if ceil32(_25171) > _25171:
                                            mem[_25171 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25171) + 32], 
                                    _25172 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25172)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25172)]
                                    if ceil32(_25172) > _25172:
                                        mem[_25172 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25172) + 32], 
                                mem[ceil32(stor21.length.field_1) + 192 len s] = call.data[calldata.size len s]
                                t = s
                                idx = cd[4]
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[ceil32(stor21.length.field_1) + 160]:
                                        revert with 0, 50
                                    mem[t + ceil32(stor21.length.field_1) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                    if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                        _25173 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                        mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25173)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25173)]
                                        if ceil32(_25173) > _25173:
                                            mem[_25173 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                        return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25173) + 32], 
                                    _25174 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25174)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25174)]
                                    if ceil32(_25174) > _25174:
                                        mem[_25174 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25174) + 32], 
                                mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + ceil32(s) + 224] = 0
                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + 224 len ceil32(mem[ceil32(stor21.length.field_1) + 160])] = mem[ceil32(stor21.length.field_1) + 192 len ceil32(mem[ceil32(stor21.length.field_1) + 160])]
                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 224] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                mem[64] = ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229
                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 229] = 32
                                if ceil32(mem[ceil32(stor21.length.field_1) + 160]) <= mem[ceil32(stor21.length.field_1) + 160]:
                                    _25175 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                    mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25175)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25175)]
                                    if ceil32(_25175) > _25175:
                                        mem[_25175 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                    return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25175) + 32], 
                                _25176 = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 192]
                                mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293 len ceil32(_25176)] = mem[ceil32(stor21.length.field_1) + ceil32(s) + 224 len ceil32(_25176)]
                                if ceil32(_25176) > _25176:
                                    mem[_25176 + ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 293] = 0
                                return 32, mem[ceil32(stor21.length.field_1) + ceil32(s) + stor21.length.field_1 + mem[ceil32(stor21.length.field_1) + 160] + 261 len ceil32(_25176) + 32], 
                            mem[ceil32(stor21.length.field_1) + 160] = 0xff74ef3000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(stor21.length.field_1) + 164] = cd[4]
                            require ext_code.size(stor26)
                            staticcall stor26.0xff74ef30 with:
                                    gas gas_remaining wei
                                   args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(stor21.length.field_1) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160
                            require return_data.size >= 32
                            _9794 = mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32
                            require mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                            require ceil32(stor21.length.field_1) + return_data.size + 160 > ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191
                            _10751 = mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
                            if mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 1 < 0 or ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161 > test266151307():
                                revert with 0, 65
                            mem[64] = ceil32(stor21.length.field_1) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(stor21.length.field_1) + mem[ceil32(stor21.length.field_1) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160])) + 161
                            mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 160] = _10751
                            require _9794 + _10751 + 32 <= return_data.size
                            mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10751)] = mem[ceil32(stor21.length.field_1) + _9794 + 192 len ceil32(_10751)]
                            if ceil32(_10751) <= _10751:
                                _15544 = mem[64]
                                mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                                if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                    mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_10751)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10751)]
                                    mem[_15544 + stor21.length.field_1 + _10751 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                    if ceil32(_10751) <= _10751:
                                        _22605 = mem[64]
                                        mem[64] = _15544 + stor21.length.field_1 + _10751 + 37
                                        mem[_15544 + stor21.length.field_1 + _10751 + 37] = 32
                                        _23413 = mem[_22605]
                                        mem[_15544 + stor21.length.field_1 + _10751 + 69] = mem[_22605]
                                        mem[_15544 + stor21.length.field_1 + _10751 + 101 len ceil32(_23413)] = mem[_22605 + 32 len ceil32(_23413)]
                                        if ceil32(_23413) > _23413:
                                            mem[_23413 + _15544 + stor21.length.field_1 + _10751 + 101] = 0
                                        return 32, mem[_15544 + stor21.length.field_1 + _10751 + 69 len ceil32(_23413) + 32]
                                    _22606 = mem[64]
                                    mem[64] = _15544 + stor21.length.field_1 + _10751 + 37
                                    mem[_15544 + stor21.length.field_1 + _10751 + 37] = 32
                                    _23414 = mem[_22606]
                                    mem[_15544 + stor21.length.field_1 + _10751 + 69] = mem[_22606]
                                    mem[_15544 + stor21.length.field_1 + _10751 + 101 len ceil32(_23414)] = mem[_22606 + 32 len ceil32(_23414)]
                                    if ceil32(_23414) > _23414:
                                        mem[_23414 + _15544 + stor21.length.field_1 + _10751 + 101] = 0
                                    return 32, mem[_15544 + stor21.length.field_1 + _10751 + 69 len ceil32(_23414) + 32]
                                mem[stor21.length.field_1 + mem[64] + 32] = 0
                                mem[_15544 + stor21.length.field_1 + 32 len ceil32(_10751)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10751)]
                                mem[_15544 + stor21.length.field_1 + _10751 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                if ceil32(_10751) <= _10751:
                                    _22607 = mem[64]
                                    mem[64] = _15544 + stor21.length.field_1 + _10751 + 37
                                    mem[_15544 + stor21.length.field_1 + _10751 + 37] = 32
                                    _23415 = mem[_22607]
                                    mem[_15544 + stor21.length.field_1 + _10751 + 69] = mem[_22607]
                                    mem[_15544 + stor21.length.field_1 + _10751 + 101 len ceil32(_23415)] = mem[_22607 + 32 len ceil32(_23415)]
                                    if ceil32(_23415) > _23415:
                                        mem[_23415 + _15544 + stor21.length.field_1 + _10751 + 101] = 0
                                    return 32, mem[_15544 + stor21.length.field_1 + _10751 + 69 len ceil32(_23415) + 32]
                                _22608 = mem[64]
                                mem[64] = _15544 + stor21.length.field_1 + _10751 + 37
                                mem[_15544 + stor21.length.field_1 + _10751 + 37] = 32
                                _23416 = mem[_22608]
                                mem[_15544 + stor21.length.field_1 + _10751 + 69] = mem[_22608]
                                mem[_15544 + stor21.length.field_1 + _10751 + 101 len ceil32(_23416)] = mem[_22608 + 32 len ceil32(_23416)]
                                if ceil32(_23416) > _23416:
                                    mem[_23416 + _15544 + stor21.length.field_1 + _10751 + 101] = 0
                                return 32, mem[_15544 + stor21.length.field_1 + _10751 + 69 len ceil32(_23416) + 32]
                            mem[_10751 + ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192] = 0
                            _15545 = mem[64]
                            mem[mem[64] + 32 len ceil32(stor21.length.field_1)] = mem[160 len ceil32(stor21.length.field_1)]
                            if ceil32(stor21.length.field_1) <= stor21.length.field_1:
                                mem[mem[64] + stor21.length.field_1 + 32 len ceil32(_10751)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10751)]
                                mem[_15545 + stor21.length.field_1 + _10751 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                                if ceil32(_10751) <= _10751:
                                    _22609 = mem[64]
                                    mem[64] = _15545 + stor21.length.field_1 + _10751 + 37
                                    mem[_15545 + stor21.length.field_1 + _10751 + 37] = 32
                                    _23417 = mem[_22609]
                                    mem[_15545 + stor21.length.field_1 + _10751 + 69] = mem[_22609]
                                    mem[_15545 + stor21.length.field_1 + _10751 + 101 len ceil32(_23417)] = mem[_22609 + 32 len ceil32(_23417)]
                                    if ceil32(_23417) > _23417:
                                        mem[_23417 + _15545 + stor21.length.field_1 + _10751 + 101] = 0
                                    return 32, mem[_15545 + stor21.length.field_1 + _10751 + 69 len ceil32(_23417) + 32]
                                _22610 = mem[64]
                                mem[64] = _15545 + stor21.length.field_1 + _10751 + 37
                                mem[_15545 + stor21.length.field_1 + _10751 + 37] = 32
                                _23418 = mem[_22610]
                                mem[_15545 + stor21.length.field_1 + _10751 + 69] = mem[_22610]
                                mem[_15545 + stor21.length.field_1 + _10751 + 101 len ceil32(_23418)] = mem[_22610 + 32 len ceil32(_23418)]
                                if ceil32(_23418) > _23418:
                                    mem[_23418 + _15545 + stor21.length.field_1 + _10751 + 101] = 0
                                return 32, mem[_15545 + stor21.length.field_1 + _10751 + 69 len ceil32(_23418) + 32]
                            mem[stor21.length.field_1 + mem[64] + 32] = 0
                            mem[_15545 + stor21.length.field_1 + 32 len ceil32(_10751)] = mem[ceil32(stor21.length.field_1) + ceil32(return_data.size) + 192 len ceil32(_10751)]
                            mem[_15545 + stor21.length.field_1 + _10751 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                            if ceil32(_10751) <= _10751:
                                _22611 = mem[64]
                                mem[64] = _15545 + stor21.length.field_1 + _10751 + 37
                                mem[_15545 + stor21.length.field_1 + _10751 + 37] = 32
                                _23419 = mem[_22611]
                                mem[_15545 + stor21.length.field_1 + _10751 + 69] = mem[_22611]
                                mem[_15545 + stor21.length.field_1 + _10751 + 101 len ceil32(_23419)] = mem[_22611 + 32 len ceil32(_23419)]
                                if ceil32(_23419) > _23419:
                                    mem[_23419 + _15545 + stor21.length.field_1 + _10751 + 101] = 0
                                return 32, mem[_15545 + stor21.length.field_1 + _10751 + 69 len ceil32(_23419) + 32]
                            _22612 = mem[64]
                            mem[64] = _15545 + stor21.length.field_1 + _10751 + 37
                            mem[_15545 + stor21.length.field_1 + _10751 + 37] = 32
                            _23420 = mem[_22612]
                            mem[_15545 + stor21.length.field_1 + _10751 + 69] = mem[_22612]
                            mem[_15545 + stor21.length.field_1 + _10751 + 101 len ceil32(_23420)] = mem[_22612 + 32 len ceil32(_23420)]
                            if ceil32(_23420) > _23420:
                                mem[_23420 + _15545 + stor21.length.field_1 + _10751 + 101] = 0
                            return 32, mem[_15545 + stor21.length.field_1 + _10751 + 69 len ceil32(_23420) + 32]
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        require cd[100] <= test266151307()
                        require calldata.size > cd[100] + 35
                        if ('cd', 100).length > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = ('cd', 100).length
                        require cd[100] + ('cd', 100).length + 36 <= calldata.size
                        mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: operator query for nonexistent token'
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        if ownerOf[cd[68]] != msg.sender:
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: approved query for nonexistent token'
                            if approved[cd[68]] != msg.sender:
                                if not stor23[address(msg.sender)]:
                                    if not stor8[stor5[cd[68]]][address(msg.sender)]:
                                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        if ownerOf[cd[68]] != address(cd[4]):
                            revert with 0, 'ERC721: transfer of token that is not own'
                        if not address(cd[36]):
                            revert with 0, 'ERC721: transfer to the zero address'
                        if not address(cd[4]):
                            stor16[cd[68]] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = cd[68]
                        else:
                            if address(cd[4]) != address(cd[36]):
                                if not address(cd[4]):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                if balanceOf[address(cd[4])] < 1:
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] - 1 != stor14[cd[68]]:
                                    tokenOfOwnerByIndex[address(cd[4])][stor14[cd[68]]] = tokenOfOwnerByIndex[address(cd[4])][stor6[address(cd[4])] - 1]
                                    stor14[stor13[address(cd[4])][stor6[address(cd[4])] - 1]] = stor14[cd[68]]
                                stor14[cd[68]] = 0
                                tokenOfOwnerByIndex[address(cd[4])][stor6[address(cd[4])] - 1] = 0
                        if address(cd[36]):
                            if address(cd[36]) != address(cd[4]):
                                if not address(cd[36]):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(cd[36])][stor6[address(cd[36])]] = cd[68]
                                stor14[cd[68]] = balanceOf[address(cd[36])]
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor16[cd[68]] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor16[cd[68]]] = tokenByIndex[tokenByIndex.length]
                            stor16[stor15[stor15.length]] = stor16[cd[68]]
                            stor16[cd[68]] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                        if paused:
                            revert with 0, 'ERC721Pausable: token transfer while paused'
                        approved[cd[68]] = 0
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[cd[68]], 0, cd[68]);
                        if balanceOf[address(cd[4])] < 1:
                            revert with 0, 17
                        balanceOf[address(cd[4])]--
                        if balanceOf[address(cd[36])] > -2:
                            revert with 0, 17
                        balanceOf[address(cd[36])]++
                        ownerOf[cd[68]] = address(cd[36])
                        emit Transfer(address(cd[4]), address(cd[36]), cd[68]);
                        if ext_code.size(address(cd[36])):
                            mem[ceil32(ceil32(('cd', 100).length)) + 133] = msg.sender
                            mem[ceil32(ceil32(('cd', 100).length)) + 165] = address(cd[4])
                            mem[ceil32(ceil32(('cd', 100).length)) + 197] = cd[68]
                            mem[ceil32(ceil32(('cd', 100).length)) + 229] = 128
                            mem[ceil32(ceil32(('cd', 100).length)) + 261] = ('cd', 100).length
                            mem[ceil32(ceil32(('cd', 100).length)) + 293 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256, msg.sender) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256
                            if ceil32(('cd', 100).length) > ('cd', 100).length:
                                mem[('cd', 100).length + ceil32(ceil32(('cd', 100).length)) + 293] = 0
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(cd[4]), cd[68], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                            mem[ceil32(ceil32(('cd', 100).length)) + 129] = ext_call.return_data[0]
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
}



}
