contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#  - _fallback()
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
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor10;
array of uint256 tokenByIndex;
mapping of uint256 stor12;
uint8 paused;
uint256 stor16;
address owner;
uint256 mintPrice;
uint16 maxSupply;
array of struct sub_14248c40;
mapping of uint8 stor24;
array of uint256 stor25;
array of uint256 stor26;
address stor27;
uint256 stor28;
uint8 isLocked;
uint8 isMigrated; offset 8
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_14248c40(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_14248c40.length
    return sub_14248c40[arg1].field_0
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

function mintPrice() {
    return mintPrice
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
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function isLocked() {
    return bool(isLocked)
}

function isMigrated() {
    return bool(isMigrated)
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function maxSupply() {
    return maxSupply
}

function sub_e090656a(?) {
    return sub_14248c40.length
}

function destroyContract() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if isMigrated:
        if isMigrated:
            revert with 0, 'Wrong migration status.'
    selfdestruct(msg.sender)
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function lockContract() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if isLocked:
        revert with 0, 'Locked: contract is locked.'
    isLocked = 1
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor24[address(arg2)]:
        return bool(stor8[address(arg1)][address(arg2)])
    return 1
}

function migrationComplete() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if isMigrated:
        if isMigrated:
            revert with 0, 'Wrong migration status.'
    isMigrated = 1
}

function setRoyalty(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 > 750:
        revert with 0, 'Royalty must be between 0-7.5%.'
    stor0 = arg1
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

function sub_904e46e1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if isLocked:
        revert with 0, 'Locked: contract is locked.'
    stor27 = address(arg1)
}

function sub_31062623(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    emit 0x7822b340: bool(arg2), bool(stor24[address(arg1)]), address(arg1)
    stor24[address(arg1)] = uint8(bool(arg2))
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
    if stor16 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor16 = 2
    require ext_code.size(0xeb630a73b6e29547f9a115fc7dcd31e26d43798)
    delegate 0xeb630a73b6e29547f9a115fc7dcd31e26d43798.0x386d1eb6 with:
         gas gas_remaining wei
        args 17
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    stor16 = 1
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setMaxSupply(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if isLocked:
        revert with 0, 'Locked: contract is locked.'
    if arg1 >= maxSupply:
        revert with 0, 'Invalid supply.'
    if arg1 < stor28:
        revert with 0, 'Invalid supply.'
    maxSupply = arg1
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor16 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor16 = 2
    require ext_code.size(0xeb630a73b6e29547f9a115fc7dcd31e26d43798)
    delegate 0xeb630a73b6e29547f9a115fc7dcd31e26d43798.0x6ec2a423 with:
         gas gas_remaining wei
        args 17, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    stor16 = 1
}

function updateRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor16 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor16 = 2
    require ext_code.size(0xeb630a73b6e29547f9a115fc7dcd31e26d43798)
    delegate 0xeb630a73b6e29547f9a115fc7dcd31e26d43798.0x1625d8ba with:
         gas gas_remaining wei
        args 17, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    stor16 = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor24[address(msg.sender)]:
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
    if '*U Z' == Mask(32, 224, arg1):
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
        if '*U Z' == Mask(32, 224, arg1):
            return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_aaf6d56d(?) {
    mem[64] = (32 * sub_14248c40.length) + 128
    mem[96] = sub_14248c40.length
    if not sub_14248c40.length:
        mem[(32 * sub_14248c40.length) + 128] = 32
        mem[(32 * sub_14248c40.length) + 160] = sub_14248c40.length
        idx = 0
        s = (32 * sub_14248c40.length) + 192
        t = 128
        while idx < sub_14248c40.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_14248c40.length) + 128
           len (96 * sub_14248c40.length) + 64
    mem[128] = address(sub_14248c40.field_0)
    idx = 128
    s = 0
    while (32 * sub_14248c40.length) + 96 > idx:
        mem[idx + 32] = sub_14248c40[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_14248c40.length) + 128] = 32
    mem[(32 * sub_14248c40.length) + 160] = sub_14248c40.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_14248c40.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_14248c40.length) + -mem[64] + 192
}

function sub_9bdedea5(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if stor16 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor16 = 2
    mem[ceil32(32 * ('cd', 36).length) + 97] = 0x3af5509c00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 36).length) + 101] = 17
    require ext_code.size(0xeb630a73b6e29547f9a115fc7dcd31e26d43798)
    delegate 0xeb630a73b6e29547f9a115fc7dcd31e26d43798.0x3af5509c with:
         gas gas_remaining wei
        args 17, address(cd[4]), Array(len=('cd', 36).length, data=mem[128 len 32 * ('cd', 36).length])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    stor16 = 1
}

function sub_d8a778e9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_14248c40.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_14248c40.length > idx:
            sub_14248c40[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_14248c40[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_14248c40.length > idx:
            sub_14248c40[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_8be18e57(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if isLocked:
        revert with 0, 'Locked: contract is locked.'
    if bool(stor25.length):
        if bool(stor25.length) == uint255(stor25.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor25[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor25.length = 0
            idx = 0
            while (uint255(stor25.length) * 0.5) + 31 / 32 > idx:
                stor25[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor25.length) == stor25.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor25[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor25.length = 0
            idx = 0
            while stor25.length.field_1 + 31 / 32 > idx:
                stor25[idx].field_0 = 0
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
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if isLocked:
        revert with 0, 'Locked: contract is locked.'
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor26[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor26.length = 0
            idx = 0
            while (uint255(stor26.length) * 0.5) + 31 / 32 > idx:
                stor26[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor26[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor26.length = 0
            idx = 0
            while stor26.length.field_1 + 31 / 32 > idx:
                stor26[idx].field_0 = 0
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
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
            if not stor24[address(msg.sender)]:
                if not stor8[stor5[arg1]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor5[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor5[arg1]] - 1 != stor10[arg1]:
            tokenOfOwnerByIndex[stor5[arg1]][stor10[arg1]] = tokenOfOwnerByIndex[stor5[arg1]][stor6[stor5[arg1]] - 1]
            stor10[stor9[stor5[arg1]][stor6[stor5[arg1]] - 1]] = stor10[arg1]
        stor10[arg1] = 0
        tokenOfOwnerByIndex[stor5[arg1]][stor6[stor5[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor12[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor12[arg1]] = tokenByIndex[tokenByIndex.length]
    stor12[stor11[stor11.length]] = stor12[arg1]
    stor12[arg1] = 0
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
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

function sub_6ca5bc02(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        revert with 0, 'Only minters can gift.'
    if ownerOf[arg2]:
        revert with 0, 'This id already has an owner.'
    if arg2 >= stor28:
        revert with 0, 'This id cannot be gifted.'
    if arg2 > maxSupply:
        revert with 0, 'There are no more tokens.'
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    stor12[arg2] = tokenByIndex.length
    tokenByIndex.length++
    stor175B[stor11.length] = arg2
    if address(arg1):
        if address(arg1):
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)]] = arg2
            stor10[arg2] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor12[arg2] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor12[arg2]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[arg2]
        stor12[arg2] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0, 'ERC721Pausable: token transfer while paused'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[arg2] = address(arg1)
    emit Transfer(0, address(arg1), arg2);
    if ext_code.size(address(arg1)):
        require ext_code.size(address(arg1))
        call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, arg2, 128, 0
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
            if not stor24[address(msg.sender)]:
                if not stor8[stor5[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor12[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor175B[stor11.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor10[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1]
                stor10[stor9[address(arg1)][stor6[address(arg1)] - 1]] = stor10[arg3]
            stor10[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor6[address(arg2)]] = arg3
            stor10[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor12[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor12[arg3]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[arg3]
        stor12[arg3] = 0
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
            if not stor24[address(msg.sender)]:
                if not stor8[stor5[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor12[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor175B[stor11.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor10[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1]
                stor10[stor9[address(arg1)][stor6[address(arg1)] - 1]] = stor10[arg3]
            stor10[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor6[address(arg2)]] = arg3
            stor10[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor12[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor12[arg3]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[arg3]
        stor12[arg3] = 0
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
            if not stor24[address(msg.sender)]:
                if not stor8[stor5[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor12[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor175B[stor11.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor10[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1]
                stor10[stor9[address(arg1)][stor6[address(arg1)] - 1]] = stor10[arg3]
            stor10[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor6[address(arg2)]] = arg3
            stor10[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor12[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor12[arg3]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[arg3]
        stor12[arg3] = 0
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

function sub_1974ac4a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if not isMigrated:
        revert with 0, 'Wrong migration status.'
    if mintPrice and uint8(arg1) > -1 / mintPrice:
        revert with 0, 17
    if mintPrice * uint8(arg1) != msg.value:
        revert with 0, 'The value sent != the price.'
    idx = 0
    while idx < uint8(arg1):
        stor28++
        _136 = mem[64]
        mem[64] = mem[64] + 32
        mem[_136] = 0
        if stor28 > maxSupply:
            revert with 0, 'There are no more tokens.'
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor28]:
            revert with 0, 'ERC721: token already minted'
        stor12[stor28] = tokenByIndex.length
        tokenByIndex.length++
        stor175B[stor11.length] = stor28
        if msg.sender:
            if not msg.sender:
                if paused:
                    revert with 0, 'ERC721Pausable: token transfer while paused'
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor28
                mem[32] = 5
                ownerOf[stor28] = msg.sender
                emit Transfer(0, msg.sender, stor28);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor28
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _136 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor28, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
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
                    _274 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_274] == Mask(32, 224, mem[_274])
                    if Mask(32, 224, mem[_274]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor6[address(msg.sender)]] = stor28
                stor10[stor28] = balanceOf[address(msg.sender)]
                if paused:
                    revert with 0, 'ERC721Pausable: token transfer while paused'
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor28
                mem[32] = 5
                ownerOf[stor28] = msg.sender
                emit Transfer(0, msg.sender, stor28);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor28
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _136 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor28, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
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
                    _276 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_276] == Mask(32, 224, mem[_276])
                    if Mask(32, 224, mem[_276]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor12[stor28] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor12[stor28]] = tokenByIndex[tokenByIndex.length]
            stor12[stor11[stor11.length]] = stor12[stor28]
            stor12[stor28] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if paused:
                revert with 0, 'ERC721Pausable: token transfer while paused'
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor28
            mem[32] = 5
            ownerOf[stor28] = msg.sender
            emit Transfer(0, msg.sender, stor28);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor28
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _136 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor28, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
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
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_278] == Mask(32, 224, mem[_278])
                if Mask(32, 224, mem[_278]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0xf5a4ff0e: msg.sender, uint8(arg1)
}

function sub_b0e25d1f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not isMigrated:
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'Mismatched array lengths.'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _1502 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if idx >= mem[96]:
                revert with 0, 50
            _1506 = mem[(32 * idx) + 128]
            _1508 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1508] = 0
            if _1506 > maxSupply:
                revert with 0, 'There are no more tokens.'
            if not address(_1502):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[_1506]:
                revert with 0, 'ERC721: token already minted'
            stor12[_1506] = tokenByIndex.length
            tokenByIndex.length++
            stor175B[stor11.length] = _1506
            if address(_1502):
                if not address(_1502):
                    if paused:
                        revert with 0, 'ERC721Pausable: token transfer while paused'
                    if balanceOf[address(_1502)] > -2:
                        revert with 0, 17
                    balanceOf[address(_1502)]++
                    mem[0] = _1506
                    mem[32] = 5
                    ownerOf[_1506] = address(_1502)
                    emit Transfer(0, address(_1502), _1506);
                    if ext_code.size(address(_1502)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _1506
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1508 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_1502))
                        call address(_1502).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1506, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
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
                        _2000 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2000] == Mask(32, 224, mem[_2000])
                        if Mask(32, 224, mem[_2000]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not address(_1502):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(_1502)][stor6[address(_1502)]] = _1506
                    stor10[_1506] = balanceOf[address(_1502)]
                    if paused:
                        revert with 0, 'ERC721Pausable: token transfer while paused'
                    if balanceOf[address(_1502)] > -2:
                        revert with 0, 17
                    balanceOf[address(_1502)]++
                    mem[0] = _1506
                    mem[32] = 5
                    ownerOf[_1506] = address(_1502)
                    emit Transfer(0, address(_1502), _1506);
                    if ext_code.size(address(_1502)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _1506
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1508 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_1502))
                        call address(_1502).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1506, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
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
                        _2002 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2002] == Mask(32, 224, mem[_2002])
                        if Mask(32, 224, mem[_2002]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor12[_1506] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor12[_1506]] = tokenByIndex[tokenByIndex.length]
                stor12[stor11[stor11.length]] = stor12[_1506]
                stor12[_1506] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if paused:
                    revert with 0, 'ERC721Pausable: token transfer while paused'
                if balanceOf[address(_1502)] > -2:
                    revert with 0, 17
                balanceOf[address(_1502)]++
                mem[0] = _1506
                mem[32] = 5
                ownerOf[_1506] = address(_1502)
                emit Transfer(0, address(_1502), _1506);
                if ext_code.size(address(_1502)):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _1506
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1508 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(_1502))
                    call address(_1502).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, _1506, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
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
                    _2004 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2004] == Mask(32, 224, mem[_2004])
                    if Mask(32, 224, mem[_2004]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx >= mem[96]:
                revert with 0, 50
            if stor28 < mem[(32 * idx) + 128]:
                if idx >= mem[96]:
                    revert with 0, 50
                stor28 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            emit 0xf5a4ff0e: mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20], 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if isMigrated:
            revert with 0, 'Wrong migration status.'
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'Mismatched array lengths.'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _1504 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if idx >= mem[96]:
                revert with 0, 50
            _1507 = mem[(32 * idx) + 128]
            _1509 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1509] = 0
            if _1507 > maxSupply:
                revert with 0, 'There are no more tokens.'
            if not address(_1504):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[_1507]:
                revert with 0, 'ERC721: token already minted'
            stor12[_1507] = tokenByIndex.length
            tokenByIndex.length++
            stor175B[stor11.length] = _1507
            if address(_1504):
                if not address(_1504):
                    if paused:
                        revert with 0, 'ERC721Pausable: token transfer while paused'
                    if balanceOf[address(_1504)] > -2:
                        revert with 0, 17
                    balanceOf[address(_1504)]++
                    mem[0] = _1507
                    mem[32] = 5
                    ownerOf[_1507] = address(_1504)
                    emit Transfer(0, address(_1504), _1507);
                    if ext_code.size(address(_1504)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _1507
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1509 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_1504))
                        call address(_1504).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1507, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
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
                        _2006 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2006] == Mask(32, 224, mem[_2006])
                        if Mask(32, 224, mem[_2006]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not address(_1504):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(_1504)][stor6[address(_1504)]] = _1507
                    stor10[_1507] = balanceOf[address(_1504)]
                    if paused:
                        revert with 0, 'ERC721Pausable: token transfer while paused'
                    if balanceOf[address(_1504)] > -2:
                        revert with 0, 17
                    balanceOf[address(_1504)]++
                    mem[0] = _1507
                    mem[32] = 5
                    ownerOf[_1507] = address(_1504)
                    emit Transfer(0, address(_1504), _1507);
                    if ext_code.size(address(_1504)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _1507
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1509 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_1504))
                        call address(_1504).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1507, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
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
                        _2008 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2008] == Mask(32, 224, mem[_2008])
                        if Mask(32, 224, mem[_2008]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor12[_1507] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor12[_1507]] = tokenByIndex[tokenByIndex.length]
                stor12[stor11[stor11.length]] = stor12[_1507]
                stor12[_1507] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if paused:
                    revert with 0, 'ERC721Pausable: token transfer while paused'
                if balanceOf[address(_1504)] > -2:
                    revert with 0, 17
                balanceOf[address(_1504)]++
                mem[0] = _1507
                mem[32] = 5
                ownerOf[_1507] = address(_1504)
                emit Transfer(0, address(_1504), _1507);
                if ext_code.size(address(_1504)):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _1507
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1509 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(_1504))
                    call address(_1504).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, _1507, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
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
                    _2010 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2010] == Mask(32, 224, mem[_2010])
                    if Mask(32, 224, mem[_2010]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx >= mem[96]:
                revert with 0, 50
            if stor28 < mem[(32 * idx) + 128]:
                if idx >= mem[96]:
                    revert with 0, 50
                stor28 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            emit 0xf5a4ff0e: mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20], 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_e74bdd0a(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not isMigrated:
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'Mismatched array lengths.'
        if ('cd', 4).length != ('cd', 68).length:
            revert with 0, 'Mismatched array lengths.'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _4851 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                revert with 0, 50
            _4855 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
            if idx >= mem[96]:
                revert with 0, 50
            _4859 = mem[(32 * idx) + 128]
            _4860 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4860] = 0
            if not ownerOf[_4859]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_4859] != address(_4851):
                revert with 0, 'ERC721: transfer of token that is not own'
            if not address(_4855):
                revert with 0, 'ERC721: transfer to the zero address'
            if not address(_4851):
                stor12[_4859] = tokenByIndex.length
                tokenByIndex.length++
                stor175B[stor11.length] = _4859
                if address(_4855):
                    if address(_4855) == address(_4851):
                        if paused:
                            revert with 0, 'ERC721Pausable: token transfer while paused'
                        approved[_4859] = 0
                        if not ownerOf[_4859]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[_4859], 0, _4859);
                        if balanceOf[address(_4851)] < 1:
                            revert with 0, 17
                        balanceOf[address(_4851)]--
                        if balanceOf[address(_4855)] > -2:
                            revert with 0, 17
                        balanceOf[address(_4855)]++
                        mem[0] = _4859
                        mem[32] = 5
                        ownerOf[_4859] = address(_4855)
                        emit Transfer(address(_4851), address(_4855), _4859);
                        if ext_code.size(address(_4855)):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_4851)
                            mem[mem[64] + 68] = _4859
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _4860 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_4855))
                            call address(_4855).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(_4851), _4859, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
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
                            _6125 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6125] == Mask(32, 224, mem[_6125])
                            if Mask(32, 224, mem[_6125]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if not address(_4855):
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(_4855)][stor6[address(_4855)]] = _4859
                        stor10[_4859] = balanceOf[address(_4855)]
                        if paused:
                            revert with 0, 'ERC721Pausable: token transfer while paused'
                        approved[_4859] = 0
                        if not ownerOf[_4859]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[_4859], 0, _4859);
                        if balanceOf[address(_4851)] < 1:
                            revert with 0, 17
                        balanceOf[address(_4851)]--
                        if balanceOf[address(_4855)] > -2:
                            revert with 0, 17
                        balanceOf[address(_4855)]++
                        mem[0] = _4859
                        mem[32] = 5
                        ownerOf[_4859] = address(_4855)
                        emit Transfer(address(_4851), address(_4855), _4859);
                        if ext_code.size(address(_4855)):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_4851)
                            mem[mem[64] + 68] = _4859
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _4860 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_4855))
                            call address(_4855).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(_4851), _4859, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
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
                            _6127 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6127] == Mask(32, 224, mem[_6127])
                            if Mask(32, 224, mem[_6127]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor12[_4859] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor12[_4859]] = tokenByIndex[tokenByIndex.length]
                    stor12[stor11[stor11.length]] = stor12[_4859]
                    stor12[_4859] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if paused:
                        revert with 0, 'ERC721Pausable: token transfer while paused'
                    approved[_4859] = 0
                    if not ownerOf[_4859]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[_4859], 0, _4859);
                    if balanceOf[address(_4851)] < 1:
                        revert with 0, 17
                    balanceOf[address(_4851)]--
                    if balanceOf[address(_4855)] > -2:
                        revert with 0, 17
                    balanceOf[address(_4855)]++
                    mem[0] = _4859
                    mem[32] = 5
                    ownerOf[_4859] = address(_4855)
                    emit Transfer(address(_4851), address(_4855), _4859);
                    if ext_code.size(address(_4855)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_4851)
                        mem[mem[64] + 68] = _4859
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _4860 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_4855))
                        call address(_4855).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(_4851), _4859, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
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
                        _6129 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6129] == Mask(32, 224, mem[_6129])
                        if Mask(32, 224, mem[_6129]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if address(_4851) == address(_4855):
                    if address(_4855):
                        if address(_4855) == address(_4851):
                            if paused:
                                revert with 0, 'ERC721Pausable: token transfer while paused'
                            approved[_4859] = 0
                            if not ownerOf[_4859]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[_4859], 0, _4859);
                            if balanceOf[address(_4851)] < 1:
                                revert with 0, 17
                            balanceOf[address(_4851)]--
                            if balanceOf[address(_4855)] > -2:
                                revert with 0, 17
                            balanceOf[address(_4855)]++
                            mem[0] = _4859
                            mem[32] = 5
                            ownerOf[_4859] = address(_4855)
                            emit Transfer(address(_4851), address(_4855), _4859);
                            if ext_code.size(address(_4855)):
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(_4851)
                                mem[mem[64] + 68] = _4859
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _4860 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_4855))
                                call address(_4855).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(_4851), _4859, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
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
                                _6107 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6107] == Mask(32, 224, mem[_6107])
                                if Mask(32, 224, mem[_6107]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if not address(_4855):
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(_4855)][stor6[address(_4855)]] = _4859
                            stor10[_4859] = balanceOf[address(_4855)]
                            if paused:
                                revert with 0, 'ERC721Pausable: token transfer while paused'
                            approved[_4859] = 0
                            if not ownerOf[_4859]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[_4859], 0, _4859);
                            if balanceOf[address(_4851)] < 1:
                                revert with 0, 17
                            balanceOf[address(_4851)]--
                            if balanceOf[address(_4855)] > -2:
                                revert with 0, 17
                            balanceOf[address(_4855)]++
                            mem[0] = _4859
                            mem[32] = 5
                            ownerOf[_4859] = address(_4855)
                            emit Transfer(address(_4851), address(_4855), _4859);
                            if ext_code.size(address(_4855)):
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(_4851)
                                mem[mem[64] + 68] = _4859
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _4860 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_4855))
                                call address(_4855).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(_4851), _4859, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
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
                                _6109 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6109] == Mask(32, 224, mem[_6109])
                                if Mask(32, 224, mem[_6109]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor12[_4859] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor12[_4859]] = tokenByIndex[tokenByIndex.length]
                        stor12[stor11[stor11.length]] = stor12[_4859]
                        stor12[_4859] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if paused:
                            revert with 0, 'ERC721Pausable: token transfer while paused'
                        approved[_4859] = 0
                        if not ownerOf[_4859]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[_4859], 0, _4859);
                        if balanceOf[address(_4851)] < 1:
                            revert with 0, 17
                        balanceOf[address(_4851)]--
                        if balanceOf[address(_4855)] > -2:
                            revert with 0, 17
                        balanceOf[address(_4855)]++
                        mem[0] = _4859
                        mem[32] = 5
                        ownerOf[_4859] = address(_4855)
                        emit Transfer(address(_4851), address(_4855), _4859);
                        if ext_code.size(address(_4855)):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_4851)
                            mem[mem[64] + 68] = _4859
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _4860 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_4855))
                            call address(_4855).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(_4851), _4859, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
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
                            _6111 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6111] == Mask(32, 224, mem[_6111])
                            if Mask(32, 224, mem[_6111]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not address(_4851):
                        revert with 0, 'ERC721: balance query for the zero address'
                    if balanceOf[address(_4851)] < 1:
                        revert with 0, 17
                    if balanceOf[address(_4851)] - 1 == stor10[_4859]:
                        stor10[_4859] = 0
                        tokenOfOwnerByIndex[address(_4851)][stor6[address(_4851)] - 1] = 0
                        if address(_4855):
                            if address(_4855) == address(_4851):
                                if paused:
                                    revert with 0, 'ERC721Pausable: token transfer while paused'
                                approved[_4859] = 0
                                if not ownerOf[_4859]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[_4859], 0, _4859);
                                if balanceOf[address(_4851)] < 1:
                                    revert with 0, 17
                                balanceOf[address(_4851)]--
                                if balanceOf[address(_4855)] > -2:
                                    revert with 0, 17
                                balanceOf[address(_4855)]++
                                mem[0] = _4859
                                mem[32] = 5
                                ownerOf[_4859] = address(_4855)
                                emit Transfer(address(_4851), address(_4855), _4859);
                                if ext_code.size(address(_4855)):
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(_4851)
                                    mem[mem[64] + 68] = _4859
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 164] = mem[s + _4860 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_4855))
                                    call address(_4855).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_4851), _4859, 128, 0
                                    mem[mem[64]] = ext_call.return_data[0]
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
                                    _6113 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6113] == Mask(32, 224, mem[_6113])
                                    if Mask(32, 224, mem[_6113]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if not address(_4855):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(_4855)][stor6[address(_4855)]] = _4859
                                stor10[_4859] = balanceOf[address(_4855)]
                                if paused:
                                    revert with 0, 'ERC721Pausable: token transfer while paused'
                                approved[_4859] = 0
                                if not ownerOf[_4859]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[_4859], 0, _4859);
                                if balanceOf[address(_4851)] < 1:
                                    revert with 0, 17
                                balanceOf[address(_4851)]--
                                if balanceOf[address(_4855)] > -2:
                                    revert with 0, 17
                                balanceOf[address(_4855)]++
                                mem[0] = _4859
                                mem[32] = 5
                                ownerOf[_4859] = address(_4855)
                                emit Transfer(address(_4851), address(_4855), _4859);
                                if ext_code.size(address(_4855)):
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(_4851)
                                    mem[mem[64] + 68] = _4859
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 164] = mem[s + _4860 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_4855))
                                    call address(_4855).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_4851), _4859, 128, 0
                                    mem[mem[64]] = ext_call.return_data[0]
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
                                    _6115 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6115] == Mask(32, 224, mem[_6115])
                                    if Mask(32, 224, mem[_6115]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor12[_4859] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor12[_4859]] = tokenByIndex[tokenByIndex.length]
                            stor12[stor11[stor11.length]] = stor12[_4859]
                            stor12[_4859] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if paused:
                                revert with 0, 'ERC721Pausable: token transfer while paused'
                            approved[_4859] = 0
                            if not ownerOf[_4859]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[_4859], 0, _4859);
                            if balanceOf[address(_4851)] < 1:
                                revert with 0, 17
                            balanceOf[address(_4851)]--
                            if balanceOf[address(_4855)] > -2:
                                revert with 0, 17
                            balanceOf[address(_4855)]++
                            mem[0] = _4859
                            mem[32] = 5
                            ownerOf[_4859] = address(_4855)
                            emit Transfer(address(_4851), address(_4855), _4859);
                            if ext_code.size(address(_4855)):
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(_4851)
                                mem[mem[64] + 68] = _4859
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _4860 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_4855))
                                call address(_4855).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(_4851), _4859, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
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
                                _6117 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6117] == Mask(32, 224, mem[_6117])
                                if Mask(32, 224, mem[_6117]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        tokenOfOwnerByIndex[address(_4851)][stor10[_4859]] = tokenOfOwnerByIndex[address(_4851)][stor6[address(_4851)] - 1]
                        stor10[stor9[address(_4851)][stor6[address(_4851)] - 1]] = stor10[_4859]
                        stor10[_4859] = 0
                        tokenOfOwnerByIndex[address(_4851)][stor6[address(_4851)] - 1] = 0
                        if address(_4855):
                            if address(_4855) == address(_4851):
                                if paused:
                                    revert with 0, 'ERC721Pausable: token transfer while paused'
                                approved[_4859] = 0
                                if not ownerOf[_4859]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[_4859], 0, _4859);
                                if balanceOf[address(_4851)] < 1:
                                    revert with 0, 17
                                balanceOf[address(_4851)]--
                                if balanceOf[address(_4855)] > -2:
                                    revert with 0, 17
                                balanceOf[address(_4855)]++
                                mem[0] = _4859
                                mem[32] = 5
                                ownerOf[_4859] = address(_4855)
                                emit Transfer(address(_4851), address(_4855), _4859);
                                if ext_code.size(address(_4855)):
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(_4851)
                                    mem[mem[64] + 68] = _4859
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 164] = mem[s + _4860 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_4855))
                                    call address(_4855).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_4851), _4859, 128, 0
                                    mem[mem[64]] = ext_call.return_data[0]
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
                                    _6119 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6119] == Mask(32, 224, mem[_6119])
                                    if Mask(32, 224, mem[_6119]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if not address(_4855):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(_4855)][stor6[address(_4855)]] = _4859
                                stor10[_4859] = balanceOf[address(_4855)]
                                if paused:
                                    revert with 0, 'ERC721Pausable: token transfer while paused'
                                approved[_4859] = 0
                                if not ownerOf[_4859]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[_4859], 0, _4859);
                                if balanceOf[address(_4851)] < 1:
                                    revert with 0, 17
                                balanceOf[address(_4851)]--
                                if balanceOf[address(_4855)] > -2:
                                    revert with 0, 17
                                balanceOf[address(_4855)]++
                                mem[0] = _4859
                                mem[32] = 5
                                ownerOf[_4859] = address(_4855)
                                emit Transfer(address(_4851), address(_4855), _4859);
                                if ext_code.size(address(_4855)):
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(_4851)
                                    mem[mem[64] + 68] = _4859
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 164] = mem[s + _4860 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_4855))
                                    call address(_4855).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_4851), _4859, 128, 0
                                    mem[mem[64]] = ext_call.return_data[0]
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
                                    _6121 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6121] == Mask(32, 224, mem[_6121])
                                    if Mask(32, 224, mem[_6121]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor12[_4859] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor12[_4859]] = tokenByIndex[tokenByIndex.length]
                            stor12[stor11[stor11.length]] = stor12[_4859]
                            stor12[_4859] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if paused:
                                revert with 0, 'ERC721Pausable: token transfer while paused'
                            approved[_4859] = 0
                            if not ownerOf[_4859]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[_4859], 0, _4859);
                            if balanceOf[address(_4851)] < 1:
                                revert with 0, 17
                            balanceOf[address(_4851)]--
                            if balanceOf[address(_4855)] > -2:
                                revert with 0, 17
                            balanceOf[address(_4855)]++
                            mem[0] = _4859
                            mem[32] = 5
                            ownerOf[_4859] = address(_4855)
                            emit Transfer(address(_4851), address(_4855), _4859);
                            if ext_code.size(address(_4855)):
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(_4851)
                                mem[mem[64] + 68] = _4859
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _4860 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_4855))
                                call address(_4855).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(_4851), _4859, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
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
                                _6123 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6123] == Mask(32, 224, mem[_6123])
                                if Mask(32, 224, mem[_6123]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if isMigrated:
            revert with 0, 'Wrong migration status.'
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'Mismatched array lengths.'
        if ('cd', 4).length != ('cd', 68).length:
            revert with 0, 'Mismatched array lengths.'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _4853 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                revert with 0, 50
            _4857 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
            if idx >= mem[96]:
                revert with 0, 50
            _4861 = mem[(32 * idx) + 128]
            _4862 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4862] = 0
            if not ownerOf[_4861]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_4861] != address(_4853):
                revert with 0, 'ERC721: transfer of token that is not own'
            if not address(_4857):
                revert with 0, 'ERC721: transfer to the zero address'
            if not address(_4853):
                stor12[_4861] = tokenByIndex.length
                tokenByIndex.length++
                stor175B[stor11.length] = _4861
                if address(_4857):
                    if address(_4857) == address(_4853):
                        if paused:
                            revert with 0, 'ERC721Pausable: token transfer while paused'
                        approved[_4861] = 0
                        if not ownerOf[_4861]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[_4861], 0, _4861);
                        if balanceOf[address(_4853)] < 1:
                            revert with 0, 17
                        balanceOf[address(_4853)]--
                        if balanceOf[address(_4857)] > -2:
                            revert with 0, 17
                        balanceOf[address(_4857)]++
                        mem[0] = _4861
                        mem[32] = 5
                        ownerOf[_4861] = address(_4857)
                        emit Transfer(address(_4853), address(_4857), _4861);
                        if ext_code.size(address(_4857)):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_4853)
                            mem[mem[64] + 68] = _4861
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _4862 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_4857))
                            call address(_4857).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(_4853), _4861, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
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
                            _6149 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6149] == Mask(32, 224, mem[_6149])
                            if Mask(32, 224, mem[_6149]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if not address(_4857):
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(_4857)][stor6[address(_4857)]] = _4861
                        stor10[_4861] = balanceOf[address(_4857)]
                        if paused:
                            revert with 0, 'ERC721Pausable: token transfer while paused'
                        approved[_4861] = 0
                        if not ownerOf[_4861]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[_4861], 0, _4861);
                        if balanceOf[address(_4853)] < 1:
                            revert with 0, 17
                        balanceOf[address(_4853)]--
                        if balanceOf[address(_4857)] > -2:
                            revert with 0, 17
                        balanceOf[address(_4857)]++
                        mem[0] = _4861
                        mem[32] = 5
                        ownerOf[_4861] = address(_4857)
                        emit Transfer(address(_4853), address(_4857), _4861);
                        if ext_code.size(address(_4857)):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_4853)
                            mem[mem[64] + 68] = _4861
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _4862 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_4857))
                            call address(_4857).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(_4853), _4861, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
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
                            _6151 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6151] == Mask(32, 224, mem[_6151])
                            if Mask(32, 224, mem[_6151]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor12[_4861] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor12[_4861]] = tokenByIndex[tokenByIndex.length]
                    stor12[stor11[stor11.length]] = stor12[_4861]
                    stor12[_4861] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if paused:
                        revert with 0, 'ERC721Pausable: token transfer while paused'
                    approved[_4861] = 0
                    if not ownerOf[_4861]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[_4861], 0, _4861);
                    if balanceOf[address(_4853)] < 1:
                        revert with 0, 17
                    balanceOf[address(_4853)]--
                    if balanceOf[address(_4857)] > -2:
                        revert with 0, 17
                    balanceOf[address(_4857)]++
                    mem[0] = _4861
                    mem[32] = 5
                    ownerOf[_4861] = address(_4857)
                    emit Transfer(address(_4853), address(_4857), _4861);
                    if ext_code.size(address(_4857)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_4853)
                        mem[mem[64] + 68] = _4861
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _4862 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_4857))
                        call address(_4857).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(_4853), _4861, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
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
                        _6153 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6153] == Mask(32, 224, mem[_6153])
                        if Mask(32, 224, mem[_6153]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if address(_4853) == address(_4857):
                    if address(_4857):
                        if address(_4857) == address(_4853):
                            if paused:
                                revert with 0, 'ERC721Pausable: token transfer while paused'
                            approved[_4861] = 0
                            if not ownerOf[_4861]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[_4861], 0, _4861);
                            if balanceOf[address(_4853)] < 1:
                                revert with 0, 17
                            balanceOf[address(_4853)]--
                            if balanceOf[address(_4857)] > -2:
                                revert with 0, 17
                            balanceOf[address(_4857)]++
                            mem[0] = _4861
                            mem[32] = 5
                            ownerOf[_4861] = address(_4857)
                            emit Transfer(address(_4853), address(_4857), _4861);
                            if ext_code.size(address(_4857)):
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(_4853)
                                mem[mem[64] + 68] = _4861
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _4862 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_4857))
                                call address(_4857).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(_4853), _4861, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
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
                                _6131 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6131] == Mask(32, 224, mem[_6131])
                                if Mask(32, 224, mem[_6131]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if not address(_4857):
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(_4857)][stor6[address(_4857)]] = _4861
                            stor10[_4861] = balanceOf[address(_4857)]
                            if paused:
                                revert with 0, 'ERC721Pausable: token transfer while paused'
                            approved[_4861] = 0
                            if not ownerOf[_4861]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[_4861], 0, _4861);
                            if balanceOf[address(_4853)] < 1:
                                revert with 0, 17
                            balanceOf[address(_4853)]--
                            if balanceOf[address(_4857)] > -2:
                                revert with 0, 17
                            balanceOf[address(_4857)]++
                            mem[0] = _4861
                            mem[32] = 5
                            ownerOf[_4861] = address(_4857)
                            emit Transfer(address(_4853), address(_4857), _4861);
                            if ext_code.size(address(_4857)):
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(_4853)
                                mem[mem[64] + 68] = _4861
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _4862 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_4857))
                                call address(_4857).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(_4853), _4861, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
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
                                _6133 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6133] == Mask(32, 224, mem[_6133])
                                if Mask(32, 224, mem[_6133]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor12[_4861] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor12[_4861]] = tokenByIndex[tokenByIndex.length]
                        stor12[stor11[stor11.length]] = stor12[_4861]
                        stor12[_4861] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if paused:
                            revert with 0, 'ERC721Pausable: token transfer while paused'
                        approved[_4861] = 0
                        if not ownerOf[_4861]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[_4861], 0, _4861);
                        if balanceOf[address(_4853)] < 1:
                            revert with 0, 17
                        balanceOf[address(_4853)]--
                        if balanceOf[address(_4857)] > -2:
                            revert with 0, 17
                        balanceOf[address(_4857)]++
                        mem[0] = _4861
                        mem[32] = 5
                        ownerOf[_4861] = address(_4857)
                        emit Transfer(address(_4853), address(_4857), _4861);
                        if ext_code.size(address(_4857)):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_4853)
                            mem[mem[64] + 68] = _4861
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _4862 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_4857))
                            call address(_4857).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(_4853), _4861, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
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
                            _6135 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6135] == Mask(32, 224, mem[_6135])
                            if Mask(32, 224, mem[_6135]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not address(_4853):
                        revert with 0, 'ERC721: balance query for the zero address'
                    if balanceOf[address(_4853)] < 1:
                        revert with 0, 17
                    if balanceOf[address(_4853)] - 1 == stor10[_4861]:
                        stor10[_4861] = 0
                        tokenOfOwnerByIndex[address(_4853)][stor6[address(_4853)] - 1] = 0
                        if address(_4857):
                            if address(_4857) == address(_4853):
                                if paused:
                                    revert with 0, 'ERC721Pausable: token transfer while paused'
                                approved[_4861] = 0
                                if not ownerOf[_4861]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[_4861], 0, _4861);
                                if balanceOf[address(_4853)] < 1:
                                    revert with 0, 17
                                balanceOf[address(_4853)]--
                                if balanceOf[address(_4857)] > -2:
                                    revert with 0, 17
                                balanceOf[address(_4857)]++
                                mem[0] = _4861
                                mem[32] = 5
                                ownerOf[_4861] = address(_4857)
                                emit Transfer(address(_4853), address(_4857), _4861);
                                if ext_code.size(address(_4857)):
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(_4853)
                                    mem[mem[64] + 68] = _4861
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 164] = mem[s + _4862 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_4857))
                                    call address(_4857).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_4853), _4861, 128, 0
                                    mem[mem[64]] = ext_call.return_data[0]
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
                                    _6137 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6137] == Mask(32, 224, mem[_6137])
                                    if Mask(32, 224, mem[_6137]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if not address(_4857):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(_4857)][stor6[address(_4857)]] = _4861
                                stor10[_4861] = balanceOf[address(_4857)]
                                if paused:
                                    revert with 0, 'ERC721Pausable: token transfer while paused'
                                approved[_4861] = 0
                                if not ownerOf[_4861]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[_4861], 0, _4861);
                                if balanceOf[address(_4853)] < 1:
                                    revert with 0, 17
                                balanceOf[address(_4853)]--
                                if balanceOf[address(_4857)] > -2:
                                    revert with 0, 17
                                balanceOf[address(_4857)]++
                                mem[0] = _4861
                                mem[32] = 5
                                ownerOf[_4861] = address(_4857)
                                emit Transfer(address(_4853), address(_4857), _4861);
                                if ext_code.size(address(_4857)):
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(_4853)
                                    mem[mem[64] + 68] = _4861
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 164] = mem[s + _4862 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_4857))
                                    call address(_4857).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_4853), _4861, 128, 0
                                    mem[mem[64]] = ext_call.return_data[0]
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
                                    _6139 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6139] == Mask(32, 224, mem[_6139])
                                    if Mask(32, 224, mem[_6139]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor12[_4861] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor12[_4861]] = tokenByIndex[tokenByIndex.length]
                            stor12[stor11[stor11.length]] = stor12[_4861]
                            stor12[_4861] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if paused:
                                revert with 0, 'ERC721Pausable: token transfer while paused'
                            approved[_4861] = 0
                            if not ownerOf[_4861]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[_4861], 0, _4861);
                            if balanceOf[address(_4853)] < 1:
                                revert with 0, 17
                            balanceOf[address(_4853)]--
                            if balanceOf[address(_4857)] > -2:
                                revert with 0, 17
                            balanceOf[address(_4857)]++
                            mem[0] = _4861
                            mem[32] = 5
                            ownerOf[_4861] = address(_4857)
                            emit Transfer(address(_4853), address(_4857), _4861);
                            if ext_code.size(address(_4857)):
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(_4853)
                                mem[mem[64] + 68] = _4861
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _4862 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_4857))
                                call address(_4857).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(_4853), _4861, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
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
                                _6141 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6141] == Mask(32, 224, mem[_6141])
                                if Mask(32, 224, mem[_6141]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        tokenOfOwnerByIndex[address(_4853)][stor10[_4861]] = tokenOfOwnerByIndex[address(_4853)][stor6[address(_4853)] - 1]
                        stor10[stor9[address(_4853)][stor6[address(_4853)] - 1]] = stor10[_4861]
                        stor10[_4861] = 0
                        tokenOfOwnerByIndex[address(_4853)][stor6[address(_4853)] - 1] = 0
                        if address(_4857):
                            if address(_4857) == address(_4853):
                                if paused:
                                    revert with 0, 'ERC721Pausable: token transfer while paused'
                                approved[_4861] = 0
                                if not ownerOf[_4861]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[_4861], 0, _4861);
                                if balanceOf[address(_4853)] < 1:
                                    revert with 0, 17
                                balanceOf[address(_4853)]--
                                if balanceOf[address(_4857)] > -2:
                                    revert with 0, 17
                                balanceOf[address(_4857)]++
                                mem[0] = _4861
                                mem[32] = 5
                                ownerOf[_4861] = address(_4857)
                                emit Transfer(address(_4853), address(_4857), _4861);
                                if ext_code.size(address(_4857)):
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(_4853)
                                    mem[mem[64] + 68] = _4861
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 164] = mem[s + _4862 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_4857))
                                    call address(_4857).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_4853), _4861, 128, 0
                                    mem[mem[64]] = ext_call.return_data[0]
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
                                    _6143 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6143] == Mask(32, 224, mem[_6143])
                                    if Mask(32, 224, mem[_6143]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if not address(_4857):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(_4857)][stor6[address(_4857)]] = _4861
                                stor10[_4861] = balanceOf[address(_4857)]
                                if paused:
                                    revert with 0, 'ERC721Pausable: token transfer while paused'
                                approved[_4861] = 0
                                if not ownerOf[_4861]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[_4861], 0, _4861);
                                if balanceOf[address(_4853)] < 1:
                                    revert with 0, 17
                                balanceOf[address(_4853)]--
                                if balanceOf[address(_4857)] > -2:
                                    revert with 0, 17
                                balanceOf[address(_4857)]++
                                mem[0] = _4861
                                mem[32] = 5
                                ownerOf[_4861] = address(_4857)
                                emit Transfer(address(_4853), address(_4857), _4861);
                                if ext_code.size(address(_4857)):
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(_4853)
                                    mem[mem[64] + 68] = _4861
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 164] = mem[s + _4862 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_4857))
                                    call address(_4857).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_4853), _4861, 128, 0
                                    mem[mem[64]] = ext_call.return_data[0]
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
                                    _6145 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6145] == Mask(32, 224, mem[_6145])
                                    if Mask(32, 224, mem[_6145]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor12[_4861] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor12[_4861]] = tokenByIndex[tokenByIndex.length]
                            stor12[stor11[stor11.length]] = stor12[_4861]
                            stor12[_4861] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if paused:
                                revert with 0, 'ERC721Pausable: token transfer while paused'
                            approved[_4861] = 0
                            if not ownerOf[_4861]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[_4861], 0, _4861);
                            if balanceOf[address(_4853)] < 1:
                                revert with 0, 17
                            balanceOf[address(_4853)]--
                            if balanceOf[address(_4857)] > -2:
                                revert with 0, 17
                            balanceOf[address(_4857)]++
                            mem[0] = _4861
                            mem[32] = 5
                            ownerOf[_4861] = address(_4857)
                            emit Transfer(address(_4853), address(_4857), _4861);
                            if ext_code.size(address(_4857)):
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(_4853)
                                mem[mem[64] + 68] = _4861
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _4862 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_4857))
                                call address(_4857).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(_4853), _4861, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
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
                                _6147 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6147] == Mask(32, 224, mem[_6147])
                                if Mask(32, 224, mem[_6147]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
