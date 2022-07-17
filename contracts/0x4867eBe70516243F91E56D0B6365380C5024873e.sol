contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1, address arg2, address arg3)
#  - tokenURI(uint256 arg1)
#  - _fallback()
#
const getBalance = eth.balance(this.address)

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct stor151;
array of struct stor152;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor156;
array of struct stor157;
uint32 stor158;
uint256 totalSupply;
mapping of uint8 stor160;
uint256 mintFee;
uint256 maxMint;
uint256 royaltyFee;
uint8 enableMinter;
address stor164;
address royaltyAddress; offset 8
address stor165;
address stor166;
address stor167;
address stor168;
array of uint256 stor169;
mapping of uint8 stor115735116308211264584378798639139061516686732922554905406890050695344091519515;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function mintFee() {
    return mintFee
}

function totalSupply() {
    return uint256(totalSupply)
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
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

function maxMint() {
    return maxMint
}

function enableMinter() {
    return bool(enableMinter)
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function royaltyAddress() {
    return royaltyAddress
}

function royaltyFee() {
    return royaltyFee
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor156[address(arg1)][address(arg2)])
}

function sub_6834eaa8(?) {
    require msg.sender == stor165
    stor168 = 0
}

function renounceDeveloper() {
    require msg.sender == stor165
    stor165 = 0
}

function enableMinting() {
    if not storFFDF[msg.sender]:
        revert with 0, 'Not an owner'
    enableMinter = 1
}

function disableMinting() {
    if not storFFDF[msg.sender]:
        revert with 0, 'Not an owner'
    enableMinter = 0
}

function transferDeveloper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor165
    stor165 = arg1
}

function sub_b2cde224(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor165
    stor168 = address(arg1)
}

function sub_e68bb268(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor165
    stor166 = address(arg1)
}

function setMaxMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not storFFDF[msg.sender]:
        revert with 0, 'Not an owner'
    maxMint = arg1
}

function setRoyaltyPercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not storFFDF[msg.sender]:
        revert with 0, 'Not an owner'
    royaltyFee = arg1
}

function setPaymentAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not storFFDF[msg.sender]:
        revert with 0, 'Not an owner'
    stor167 = arg1
}

function setRoyaltiesAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not storFFDF[msg.sender]:
        revert with 0, 'Not an owner'
    royaltyAddress = arg1
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 / 1000 and royaltyFee > -1 / arg2 / 1000:
        revert with 0, 17
    return stor164, arg2 / 1000 * royaltyFee
}

function sweepEth() {
    require msg.sender == stor165
    call stor165 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= uint256(totalSupply):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return arg1
}

function setMintFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not storFFDF[msg.sender]:
        revert with 0, 'Not an owner'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    mintFee = 10^18 * arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor156[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sweepEthToAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor165
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sweepAnyTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor165
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor165, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return bool(stor160[Mask(32, 224, arg1)])
}

function sweepAnyTokensToAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor165
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor156[stor153[arg2]][msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function ownerMint(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not storFFDF[msg.sender]:
        revert with 0, 'Not an owner'
    if uint256(totalSupply) > !arg1:
        revert with 0, 17
    require uint256(totalSupply) + arg1 <= maxMint
    if not arg2:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[uint256(stor158)]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg2)] > !arg1:
        revert with 0, 17
    balanceOf[address(arg2)] += arg1
    if uint256(totalSupply) > !arg1:
        revert with 0, 17
    idx = uint256(totalSupply)
    while idx < uint256(totalSupply) + arg1:
        mem[0] = idx
        mem[32] = 153
        ownerOf[idx] = arg2
        emit Transfer(0, arg2, idx);
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
    if uint256(totalSupply) > !arg1:
        revert with 0, 17
    uint256(totalSupply) += arg1
    stor157[address(arg2)].field_0++
    stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(stor158)
    stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = uint32(arg1)
}

function sub_e5a7477e(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == stor165
    if bool(stor169.length):
        if bool(stor169.length) == uint255(stor169.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor169[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor169.length = 0
            idx = 0
            while (uint255(stor169.length) * 0.5) + 31 / 32 > idx:
                stor169[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor169.length) == stor169.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor169[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor169.length = 0
            idx = 0
            while stor169.length.field_1 + 31 / 32 > idx:
                stor169[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    idx = 0
    s = 0
    while idx < stor157[address(arg1)].field_0:
        mem[32] = 157
        if idx >= stor157[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 157)
        if s > !stor157[address(arg1)][idx].field_32:
            revert with 0, 17
        if s + stor157[address(arg1)][idx].field_32 <= arg2:
            if s > !stor157[address(arg1)][idx].field_32:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + stor157[address(arg1)][idx].field_32
            continue 
        if idx >= stor157[address(arg1)].field_0:
            revert with 0, 50
        if stor157[address(arg1)][idx].field_0 > !arg2:
            revert with 0, 17
        if stor157[address(arg1)][idx].field_0 + arg2 < s:
            revert with 0, 17
        return (stor157[address(arg1)][idx].field_0 + arg2 - s)
    revert with 0, 'Not found token index'
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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
}

function publicMint() payable {
    if bool(enableMinter) != 1:
        revert with 0, 'Not enabled'
    require msg.value == mintFee
    require uint256(totalSupply) < maxMint
    if mintFee / 10 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if mintFee < 3 * mintFee / 10:
        revert with 0, 17
    if mintFee - (3 * mintFee / 10) < mintFee / 5:
        revert with 0, 17
    call stor167 with:
       value mintFee - (3 * mintFee / 10) - (mintFee / 5) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor166 with:
       value 3 * mintFee / 10 wei
         gas 2300 * is_zero(value) wei
    call stor168 with:
       value mintFee / 5 wei
         gas 2300 * is_zero(value) wei
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[uint256(stor158)]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    if uint256(totalSupply) > -2:
        revert with 0, 17
    idx = uint256(totalSupply)
    while idx < uint256(totalSupply) + 1:
        mem[0] = idx
        mem[32] = 153
        ownerOf[idx] = msg.sender
        emit Transfer(0, msg.sender, idx);
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
    if uint256(totalSupply) > -2:
        revert with 0, 17
    uint256(totalSupply)++
    stor157[address(msg.sender)].field_0++
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = uint32(stor158)
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_32 = 1
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_40 = 0
}

function sub_8bd7da33(?) payable {
    if bool(enableMinter) != 1:
        revert with 0, 'Not enabled'
    if mintFee > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    require msg.value == 5 * mintFee
    if 5 > !uint256(totalSupply):
        revert with 0, 17
    require uint256(totalSupply) + 5 < maxMint
    if 5 * mintFee / 10 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if 5 * mintFee < 3 * 5 * mintFee / 10:
        revert with 0, 17
    if (5 * mintFee) - (3 * 5 * mintFee / 10) < 5 * mintFee / 5:
        revert with 0, 17
    call stor167 with:
       value (5 * mintFee) - (3 * 5 * mintFee / 10) - (5 * mintFee / 5) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor166 with:
       value 3 * 5 * mintFee / 10 wei
         gas 2300 * is_zero(value) wei
    call stor168 with:
       value 5 * mintFee / 5 wei
         gas 2300 * is_zero(value) wei
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[uint256(stor158)]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -6:
        revert with 0, 17
    balanceOf[address(msg.sender)] += 5
    if uint256(totalSupply) > -6:
        revert with 0, 17
    idx = uint256(totalSupply)
    while idx < uint256(totalSupply) + 5:
        mem[0] = idx
        mem[32] = 153
        ownerOf[idx] = msg.sender
        emit Transfer(0, msg.sender, idx);
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
    if uint256(totalSupply) > -6:
        revert with 0, 17
    uint256(totalSupply) += 5
    stor157[address(msg.sender)].field_0++
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = uint32(stor158)
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_32 = 5
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_40 = 0
}

function sub_3e839c26(?) payable {
    if bool(enableMinter) != 1:
        revert with 0, 'Not enabled'
    if mintFee > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
        revert with 0, 17
    require msg.value == 45 * mintFee
    if 50 > !uint256(totalSupply):
        revert with 0, 17
    require uint256(totalSupply) + 50 < maxMint
    if 45 * mintFee / 10 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if 45 * mintFee < 3 * 45 * mintFee / 10:
        revert with 0, 17
    if (45 * mintFee) - (3 * 45 * mintFee / 10) < 45 * mintFee / 5:
        revert with 0, 17
    call stor167 with:
       value (45 * mintFee) - (3 * 45 * mintFee / 10) - (45 * mintFee / 5) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor166 with:
       value 3 * 45 * mintFee / 10 wei
         gas 2300 * is_zero(value) wei
    call stor168 with:
       value 45 * mintFee / 5 wei
         gas 2300 * is_zero(value) wei
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[uint256(stor158)]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -51:
        revert with 0, 17
    balanceOf[address(msg.sender)] += 50
    if uint256(totalSupply) > -51:
        revert with 0, 17
    idx = uint256(totalSupply)
    while idx < uint256(totalSupply) + 50:
        mem[0] = idx
        mem[32] = 153
        ownerOf[idx] = msg.sender
        emit Transfer(0, msg.sender, idx);
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
    if uint256(totalSupply) > -51:
        revert with 0, 17
    uint256(totalSupply) += 50
    stor157[address(msg.sender)].field_0++
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = uint32(stor158)
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_32 = 50
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_40 = 0
}

function sub_a2878c39(?) payable {
    if bool(enableMinter) != 1:
        revert with 0, 'Not enabled'
    if mintFee > 0xd79435e50d79435e50d79435e50d79435e50d79435e50d79435e50d79435e50:
        revert with 0, 17
    require msg.value == 19 * mintFee
    if 20 > !uint256(totalSupply):
        revert with 0, 17
    require uint256(totalSupply) + 20 < maxMint
    if 19 * mintFee / 10 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if 19 * mintFee < 3 * 19 * mintFee / 10:
        revert with 0, 17
    if (19 * mintFee) - (3 * 19 * mintFee / 10) < 19 * mintFee / 5:
        revert with 0, 17
    call stor167 with:
       value (19 * mintFee) - (3 * 19 * mintFee / 10) - (19 * mintFee / 5) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor166 with:
       value 3 * 19 * mintFee / 10 wei
         gas 2300 * is_zero(value) wei
    call stor168 with:
       value 19 * mintFee / 5 wei
         gas 2300 * is_zero(value) wei
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[uint256(stor158)]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -21:
        revert with 0, 17
    balanceOf[address(msg.sender)] += 20
    if uint256(totalSupply) > -21:
        revert with 0, 17
    idx = uint256(totalSupply)
    while idx < uint256(totalSupply) + 20:
        mem[0] = idx
        mem[32] = 153
        ownerOf[idx] = msg.sender
        emit Transfer(0, msg.sender, idx);
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
    if uint256(totalSupply) > -21:
        revert with 0, 17
    uint256(totalSupply) += 20
    stor157[address(msg.sender)].field_0++
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = uint32(stor158)
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_32 = 20
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_40 = 0
}

function sub_f5ed3149(?) payable {
    if bool(enableMinter) != 1:
        revert with 0, 'Not enabled'
    if mintFee > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
        revert with 0, 17
    require msg.value == 90 * mintFee
    if 100 > !uint256(totalSupply):
        revert with 0, 17
    require uint256(totalSupply) + 100 < maxMint
    if 90 * mintFee / 10 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if 90 * mintFee < 3 * 90 * mintFee / 10:
        revert with 0, 17
    if (90 * mintFee) - (3 * 90 * mintFee / 10) < 90 * mintFee / 5:
        revert with 0, 17
    call stor167 with:
       value (90 * mintFee) - (3 * 90 * mintFee / 10) - (90 * mintFee / 5) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor166 with:
       value 3 * 90 * mintFee / 10 wei
         gas 2300 * is_zero(value) wei
    call stor168 with:
       value 90 * mintFee / 5 wei
         gas 2300 * is_zero(value) wei
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[uint256(stor158)]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -101:
        revert with 0, 17
    balanceOf[address(msg.sender)] += 100
    if uint256(totalSupply) > -101:
        revert with 0, 17
    idx = uint256(totalSupply)
    while idx < uint256(totalSupply) + 100:
        mem[0] = idx
        mem[32] = 153
        ownerOf[idx] = msg.sender
        emit Transfer(0, msg.sender, idx);
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
    if uint256(totalSupply) > -101:
        revert with 0, 17
    uint256(totalSupply) += 100
    stor157[address(msg.sender)].field_0++
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = uint32(stor158)
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_32 = 100
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_40 = 0
}

function sub_84f51f13(?) payable {
    if bool(enableMinter) != 1:
        revert with 0, 'Not enabled'
    if mintFee > 0x16c16c16c16c16c16c16c16c16c16c16c16c16c16c16c16c16c16c16c16c16c:
        revert with 0, 17
    require msg.value == 180 * mintFee
    if 200 > !uint256(totalSupply):
        revert with 0, 17
    require uint256(totalSupply) + 200 < maxMint
    if 180 * mintFee / 10 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if 180 * mintFee < 3 * 180 * mintFee / 10:
        revert with 0, 17
    if (180 * mintFee) - (3 * 180 * mintFee / 10) < 180 * mintFee / 5:
        revert with 0, 17
    call stor167 with:
       value (180 * mintFee) - (3 * 180 * mintFee / 10) - (180 * mintFee / 5) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor166 with:
       value 3 * 180 * mintFee / 10 wei
         gas 2300 * is_zero(value) wei
    call stor168 with:
       value 180 * mintFee / 5 wei
         gas 2300 * is_zero(value) wei
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[uint256(stor158)]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -201:
        revert with 0, 17
    balanceOf[address(msg.sender)] += 200
    if uint256(totalSupply) > -201:
        revert with 0, 17
    idx = uint256(totalSupply)
    while idx < uint256(totalSupply) + 200:
        mem[0] = idx
        mem[32] = 153
        ownerOf[idx] = msg.sender
        emit Transfer(0, msg.sender, idx);
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
    if uint256(totalSupply) > -201:
        revert with 0, 17
    uint256(totalSupply) += 200
    stor157[address(msg.sender)].field_0++
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = uint32(stor158)
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_32 = 200
    stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_40 = 0
}

function name() {
    if bool(stor151.length):
        if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor151.length):
            if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor151.length):
                if 31 < uint255(stor151.length) * 0.5:
                    mem[128] = uint256(stor151.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor151.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor151[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor151.length), data=mem[128 len ceil32(uint255(stor151.length) * 0.5)])
                mem[128] = 256 * stor151.length.field_8
        else:
            if bool(stor151.length) == stor151.length.field_1 < 32:
                revert with 0, 34
            if stor151.length.field_1:
                if 31 < stor151.length.field_1:
                    mem[128] = uint256(stor151.field_0)
                    idx = 128
                    s = 0
                    while stor151.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor151[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor151.length), data=mem[128 len ceil32(uint255(stor151.length) * 0.5)])
                mem[128] = 256 * stor151.length.field_8
        mem[ceil32(uint255(stor151.length) * 0.5) + 192 len ceil32(uint255(stor151.length) * 0.5)] = mem[128 len ceil32(uint255(stor151.length) * 0.5)]
        if ceil32(uint255(stor151.length) * 0.5) > uint255(stor151.length) * 0.5:
            mem[(uint255(stor151.length) * 0.5) + ceil32(uint255(stor151.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor151.length), data=mem[128 len ceil32(uint255(stor151.length) * 0.5)], mem[(2 * ceil32(uint255(stor151.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor151.length) * 0.5)]), 
    if bool(stor151.length) == stor151.length.field_1 < 32:
        revert with 0, 34
    if bool(stor151.length):
        if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor151.length):
            if 31 < uint255(stor151.length) * 0.5:
                mem[128] = uint256(stor151.field_0)
                idx = 128
                s = 0
                while (uint255(stor151.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor151[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1)])
            mem[128] = 256 * stor151.length.field_8
    else:
        if bool(stor151.length) == stor151.length.field_1 < 32:
            revert with 0, 34
        if stor151.length.field_1:
            if 31 < stor151.length.field_1:
                mem[128] = uint256(stor151.field_0)
                idx = 128
                s = 0
                while stor151.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor151[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1)])
            mem[128] = 256 * stor151.length.field_8
    mem[ceil32(stor151.length.field_1) + 192 len ceil32(stor151.length.field_1)] = mem[128 len ceil32(stor151.length.field_1)]
    if ceil32(stor151.length.field_1) > stor151.length.field_1:
        mem[stor151.length.field_1 + ceil32(stor151.length.field_1) + 192] = 0
    return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1)], mem[(2 * ceil32(stor151.length.field_1)) + 192 len 2 * ceil32(stor151.length.field_1)]), 
}

function symbol() {
    if bool(stor152.length):
        if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor152.length):
            if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor152.length):
                if 31 < uint255(stor152.length) * 0.5:
                    mem[128] = uint256(stor152.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor152.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor152[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor152.length), data=mem[128 len ceil32(uint255(stor152.length) * 0.5)])
                mem[128] = 256 * stor152.length.field_8
        else:
            if bool(stor152.length) == stor152.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor152.length), data=mem[128 len ceil32(uint255(stor152.length) * 0.5)])
                mem[128] = 256 * stor152.length.field_8
        mem[ceil32(uint255(stor152.length) * 0.5) + 192 len ceil32(uint255(stor152.length) * 0.5)] = mem[128 len ceil32(uint255(stor152.length) * 0.5)]
        if ceil32(uint255(stor152.length) * 0.5) > uint255(stor152.length) * 0.5:
            mem[(uint255(stor152.length) * 0.5) + ceil32(uint255(stor152.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor152.length), data=mem[128 len ceil32(uint255(stor152.length) * 0.5)], mem[(2 * ceil32(uint255(stor152.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor152.length) * 0.5)]), 
    if bool(stor152.length) == stor152.length.field_1 < 32:
        revert with 0, 34
    if bool(stor152.length):
        if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor152.length):
            if 31 < uint255(stor152.length) * 0.5:
                mem[128] = uint256(stor152.field_0)
                idx = 128
                s = 0
                while (uint255(stor152.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor152[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1)])
            mem[128] = 256 * stor152.length.field_8
    else:
        if bool(stor152.length) == stor152.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor152.length.field_1 + ceil32(stor152.length.field_1) + 192] = 0
    return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1)], mem[(2 * ceil32(stor152.length.field_1)) + 192 len 2 * ceil32(stor152.length.field_1)]), 
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    if not balanceOf[address(arg1)]:
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            s = 0
            t = 0
            while s < stor157[address(arg1)].field_0:
                mem[32] = 157
                if s >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 157)
                if t > !stor157[address(arg1)][s].field_32:
                    revert with 0, 17
                if t + stor157[address(arg1)][s].field_32 <= idx:
                    if t > !stor157[address(arg1)][s].field_32:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + stor157[address(arg1)][s].field_32
                    continue 
                mem[32] = 157
                if s >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 157)
                if stor157[address(arg1)][s].field_0 > !idx:
                    revert with 0, 17
                if stor157[address(arg1)][s].field_0 + idx < t:
                    revert with 0, 17
                if idx >= balanceOf[address(arg1)]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor157[address(arg1)][s].field_0 + idx - t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            revert with 0, 'Not found token index'
        mem[(32 * balanceOf[address(arg1)]) + 128] = 32
        mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
        mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = mem[128 len 32 * balanceOf[address(arg1)]]
    else:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            s = 0
            t = 0
            while s < stor157[address(arg1)].field_0:
                mem[32] = 157
                if s >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 157)
                if t > !stor157[address(arg1)][s].field_32:
                    revert with 0, 17
                if t + stor157[address(arg1)][s].field_32 <= idx:
                    if t > !stor157[address(arg1)][s].field_32:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + stor157[address(arg1)][s].field_32
                    continue 
                mem[32] = 157
                if s >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 157)
                if stor157[address(arg1)][s].field_0 > !idx:
                    revert with 0, 17
                if stor157[address(arg1)][s].field_0 + idx < t:
                    revert with 0, 17
                if idx >= balanceOf[address(arg1)]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor157[address(arg1)][s].field_0 + idx - t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            revert with 0, 'Not found token index'
        mem[(32 * balanceOf[address(arg1)]) + 128] = 32
        mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
        mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    return memory
      from (32 * balanceOf[address(arg1)]) + 128
       len (96 * balanceOf[address(arg1)]) + 64
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
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if arg1 == arg2:
        approved[arg3] = 0
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    else:
        if arg1:
            idx = 0
            while idx < stor157[address(arg1)].field_0:
                mem[32] = 157
                if idx >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 157)
                if arg3 < stor157[address(arg1)][idx].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                mem[32] = 157
                if idx >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 157)
                if stor157[address(arg1)][idx].field_0 > -stor157[address(arg1)][idx].field_32 + test266151307():
                    revert with 0, 17
                if arg3 > uint32(stor157[address(arg1)][idx].field_32 + stor157[address(arg1)][idx].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                if 1 == stor157[address(arg1)][idx].field_32:
                    if stor157[address(arg1)].field_0 < 1:
                        revert with 0, 17
                    if stor157[address(arg1)].field_0 - 1 >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    if idx >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    stor157[address(arg1)][idx].field_0 = stor157[address(arg1)][stor157[address(arg1)].field_0].field_0
                    stor157[address(arg1)][idx].field_0 = stor157[address(arg1)][stor157[address(arg1)].field_0].field_0
                    stor157[address(arg1)][idx].field_32 = stor157[address(arg1)][stor157[address(arg1)].field_0].field_0
                    if stor157[address(arg1)].field_0 < 1:
                        revert with 0, 17
                    if stor157[address(arg1)].field_0 - 1 >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = 0
                    if not arg2:
                        approved[arg3] = 0
                        if not ownerOf[arg3]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                    else:
                        stor157[address(arg2)].field_0++
                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
                        approved[arg3] = 0
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                else:
                    if idx >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    if idx >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    if arg3 == stor157[address(arg1)][idx].field_0:
                        if stor157[address(arg1)][idx].field_0 > 4294967294:
                            revert with 0, 17
                        stor157[address(arg1)][idx].field_0 = uint32(stor157[address(arg1)][idx].field_0 + 1)
                        if not arg2:
                            approved[arg3] = 0
                            if not ownerOf[arg3]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                        else:
                            stor157[address(arg2)].field_0++
                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
                            approved[arg3] = 0
                            if not ownerOf[arg3]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                    else:
                        if idx >= stor157[address(arg1)].field_0:
                            revert with 0, 50
                        if stor157[address(arg1)][idx].field_0 > -stor157[address(arg1)][idx].field_32 + test266151307():
                            revert with 0, 17
                        if idx >= stor157[address(arg1)].field_0:
                            revert with 0, 50
                        if arg3 == uint32(stor157[address(arg1)][idx].field_32 + stor157[address(arg1)][idx].field_0):
                            if stor157[address(arg1)][idx].field_32 < 1:
                                revert with 0, 17
                            stor157[address(arg1)][idx].field_32 = uint32(stor157[address(arg1)][idx].field_32 - 1)
                            if not arg2:
                                approved[arg3] = 0
                                if not ownerOf[arg3]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                            else:
                                stor157[address(arg2)].field_0++
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
                                approved[arg3] = 0
                                if not ownerOf[arg3]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                        else:
                            if idx >= stor157[address(arg1)].field_0:
                                revert with 0, 50
                            if stor157[address(arg1)][idx].field_32 > -stor157[address(arg1)][idx].field_0 + test266151307():
                                revert with 0, 17
                            if uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) < arg3:
                                revert with 0, 17
                            if uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) - arg3 < 1:
                                revert with 0, 17
                            if 1 > !arg3:
                                revert with 0, 17
                            stor157[address(arg1)].field_0++
                            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = uint32(arg3 + 1)
                            stor157[address(arg1)][stor157[address(arg1)].field_0].field_32 = uint32(uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) + -arg3 - 1)
                            if 1 > !(uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) + -arg3 - 1):
                                revert with 0, 17
                            if idx >= stor157[address(arg1)].field_0:
                                revert with 0, 50
                            if stor157[address(arg1)][idx].field_32 < uint32(uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) - arg3):
                                revert with 0, 17
                            stor157[address(arg1)][idx].field_32 = uint32(stor157[address(arg1)][idx].field_32 - uint32(uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) - arg3))
                            if arg2:
                                stor157[address(arg2)].field_0++
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
                            approved[arg3] = 0
                            if not ownerOf[arg3]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                ('bool', ('stor', ('map', ('param', 'arg3'), ('name', 'ownerOf', 153))))
                emit Approval(ownerOf[arg3], 0, arg3);
                if balanceOf[address(arg1)] < 1:
                    revert with 0, 17
                balanceOf[address(arg1)]--
                if balanceOf[address(arg2)] > -2:
                    revert with 0, 17
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
        if not arg2:
            approved[arg3] = 0
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        else:
            stor157[address(arg2)].field_0++
            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
            stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
            stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
            approved[arg3] = 0
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
    ('bool', ('stor', ('map', ('param', 'arg3'), ('name', 'ownerOf', 153))))
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
    mem[64] = 128
    mem[96] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if arg1 == arg2:
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
    else:
        if arg1:
            mem[0] = arg1
            mem[32] = 157
            idx = 0
            while idx < stor157[address(arg1)].field_0:
                mem[32] = 157
                if idx >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 157)
                if arg3 < stor157[address(arg1)][idx].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                mem[32] = 157
                if idx >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 157)
                if stor157[address(arg1)][idx].field_0 > -stor157[address(arg1)][idx].field_32 + test266151307():
                    revert with 0, 17
                if arg3 > uint32(stor157[address(arg1)][idx].field_32 + stor157[address(arg1)][idx].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                if 1 == stor157[address(arg1)][idx].field_32:
                    if stor157[address(arg1)].field_0 < 1:
                        revert with 0, 17
                    if stor157[address(arg1)].field_0 - 1 >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    if idx >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    stor157[address(arg1)][idx].field_0 = stor157[address(arg1)][stor157[address(arg1)].field_0].field_0
                    stor157[address(arg1)][idx].field_0 = stor157[address(arg1)][stor157[address(arg1)].field_0].field_0
                    stor157[address(arg1)][idx].field_32 = stor157[address(arg1)][stor157[address(arg1)].field_0].field_0
                    if stor157[address(arg1)].field_0 < 1:
                        revert with 0, 17
                    if stor157[address(arg1)].field_0 - 1 >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = 0
                    if not arg2:
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
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                idx = idx + 32
                                continue 
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
                        mem[128] = uint32(arg3)
                        stor157[address(arg2)].field_0++
                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
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
                            idx = 0
                            while idx < 0:
                                mem[idx + 356] = mem[idx + 128]
                                idx = idx + 32
                                continue 
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
                else:
                    if idx >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    if idx >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    if arg3 == stor157[address(arg1)][idx].field_0:
                        if stor157[address(arg1)][idx].field_0 > 4294967294:
                            revert with 0, 17
                        stor157[address(arg1)][idx].field_0 = uint32(stor157[address(arg1)][idx].field_0 + 1)
                        if not arg2:
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
                                mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[132] = msg.sender
                                idx = 0
                                while idx < 0:
                                    mem[idx + 292] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
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
                            mem[128] = uint32(arg3)
                            stor157[address(arg2)].field_0++
                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
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
                                idx = 0
                                while idx < 0:
                                    mem[idx + 356] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
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
                    else:
                        if idx >= stor157[address(arg1)].field_0:
                            revert with 0, 50
                        if stor157[address(arg1)][idx].field_0 > -stor157[address(arg1)][idx].field_32 + test266151307():
                            revert with 0, 17
                        if idx >= stor157[address(arg1)].field_0:
                            revert with 0, 50
                        if arg3 == uint32(stor157[address(arg1)][idx].field_32 + stor157[address(arg1)][idx].field_0):
                            if stor157[address(arg1)][idx].field_32 < 1:
                                revert with 0, 17
                            stor157[address(arg1)][idx].field_32 = uint32(stor157[address(arg1)][idx].field_32 - 1)
                            if not arg2:
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
                                    mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[132] = msg.sender
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + 292] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
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
                                mem[128] = uint32(arg3)
                                stor157[address(arg2)].field_0++
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
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
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + 356] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
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
                        else:
                            if idx >= stor157[address(arg1)].field_0:
                                revert with 0, 50
                            if stor157[address(arg1)][idx].field_32 > -stor157[address(arg1)][idx].field_0 + test266151307():
                                revert with 0, 17
                            if uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) < arg3:
                                revert with 0, 17
                            if uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) - arg3 < 1:
                                revert with 0, 17
                            if 1 > !arg3:
                                revert with 0, 17
                            mem[128] = uint32(arg3 + 1)
                            stor157[address(arg1)].field_0++
                            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = uint32(arg3 + 1)
                            stor157[address(arg1)][stor157[address(arg1)].field_0].field_32 = uint32(uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) + -arg3 - 1)
                            if 1 > !(uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) + -arg3 - 1):
                                revert with 0, 17
                            if idx >= stor157[address(arg1)].field_0:
                                revert with 0, 50
                            if stor157[address(arg1)][idx].field_32 < uint32(uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) - arg3):
                                revert with 0, 17
                            stor157[address(arg1)][idx].field_32 = uint32(stor157[address(arg1)][idx].field_32 - uint32(uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) - arg3))
                            if not arg2:
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
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + 356] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
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
                            else:
                                stor157[address(arg2)].field_0++
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
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
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + 420] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
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
        if not arg2:
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
        else:
            stor157[address(arg2)].field_0++
            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
            stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
            stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
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
    mem[64] = ceil32(ceil32(arg4.length)) + 97
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if arg1 == arg2:
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
    else:
        if arg1:
            mem[0] = arg1
            mem[32] = 157
            idx = 0
            while idx < stor157[address(arg1)].field_0:
                mem[32] = 157
                if idx >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 157)
                if arg3 < stor157[address(arg1)][idx].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                mem[32] = 157
                if idx >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 157)
                if stor157[address(arg1)][idx].field_0 > -stor157[address(arg1)][idx].field_32 + test266151307():
                    revert with 0, 17
                if arg3 > uint32(stor157[address(arg1)][idx].field_32 + stor157[address(arg1)][idx].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= stor157[address(arg1)].field_0:
                    revert with 0, 50
                if 1 == stor157[address(arg1)][idx].field_32:
                    if stor157[address(arg1)].field_0 < 1:
                        revert with 0, 17
                    if stor157[address(arg1)].field_0 - 1 >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    if idx >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    stor157[address(arg1)][idx].field_0 = stor157[address(arg1)][stor157[address(arg1)].field_0].field_0
                    stor157[address(arg1)][idx].field_0 = stor157[address(arg1)][stor157[address(arg1)].field_0].field_0
                    stor157[address(arg1)][idx].field_32 = stor157[address(arg1)][stor157[address(arg1)].field_0].field_0
                    if stor157[address(arg1)].field_0 < 1:
                        revert with 0, 17
                    if stor157[address(arg1)].field_0 - 1 >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = 0
                    if not arg2:
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
                            mem[ceil32(ceil32(arg4.length)) + 97] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg4.length)) + 101] = msg.sender
                            mem[ceil32(ceil32(arg4.length)) + 133] = arg1
                            idx = 0
                            while idx < arg4.length:
                                mem[idx + ceil32(ceil32(arg4.length)) + 261] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(arg4.length) > arg4.length:
                                mem[arg4.length + ceil32(ceil32(arg4.length)) + 261] = 0
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 261 len ceil32(arg4.length)])
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
                    else:
                        mem[ceil32(ceil32(arg4.length)) + 97] = uint32(arg3)
                        mem[ceil32(ceil32(arg4.length)) + 129] = 1
                        stor157[address(arg2)].field_0++
                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
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
                            idx = 0
                            while idx < arg4.length:
                                mem[idx + ceil32(ceil32(arg4.length)) + 325] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(arg4.length) > arg4.length:
                                mem[arg4.length + ceil32(ceil32(arg4.length)) + 325] = 0
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 325 len ceil32(arg4.length)])
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
                else:
                    if idx >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    if idx >= stor157[address(arg1)].field_0:
                        revert with 0, 50
                    if arg3 == stor157[address(arg1)][idx].field_0:
                        if stor157[address(arg1)][idx].field_0 > 4294967294:
                            revert with 0, 17
                        stor157[address(arg1)][idx].field_0 = uint32(stor157[address(arg1)][idx].field_0 + 1)
                        if not arg2:
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
                                mem[ceil32(ceil32(arg4.length)) + 97] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg4.length)) + 101] = msg.sender
                                mem[ceil32(ceil32(arg4.length)) + 133] = arg1
                                idx = 0
                                while idx < arg4.length:
                                    mem[idx + ceil32(ceil32(arg4.length)) + 261] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(arg4.length) > arg4.length:
                                    mem[arg4.length + ceil32(ceil32(arg4.length)) + 261] = 0
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 261 len ceil32(arg4.length)])
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
                        else:
                            mem[ceil32(ceil32(arg4.length)) + 97] = uint32(arg3)
                            mem[ceil32(ceil32(arg4.length)) + 129] = 1
                            stor157[address(arg2)].field_0++
                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
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
                                idx = 0
                                while idx < arg4.length:
                                    mem[idx + ceil32(ceil32(arg4.length)) + 325] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(arg4.length) > arg4.length:
                                    mem[arg4.length + ceil32(ceil32(arg4.length)) + 325] = 0
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 325 len ceil32(arg4.length)])
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
                    else:
                        if idx >= stor157[address(arg1)].field_0:
                            revert with 0, 50
                        if stor157[address(arg1)][idx].field_0 > -stor157[address(arg1)][idx].field_32 + test266151307():
                            revert with 0, 17
                        if idx >= stor157[address(arg1)].field_0:
                            revert with 0, 50
                        if arg3 == uint32(stor157[address(arg1)][idx].field_32 + stor157[address(arg1)][idx].field_0):
                            if stor157[address(arg1)][idx].field_32 < 1:
                                revert with 0, 17
                            stor157[address(arg1)][idx].field_32 = uint32(stor157[address(arg1)][idx].field_32 - 1)
                            if not arg2:
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
                                    mem[ceil32(ceil32(arg4.length)) + 97] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg4.length)) + 101] = msg.sender
                                    mem[ceil32(ceil32(arg4.length)) + 133] = arg1
                                    idx = 0
                                    while idx < arg4.length:
                                        mem[idx + ceil32(ceil32(arg4.length)) + 261] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(arg4.length) > arg4.length:
                                        mem[arg4.length + ceil32(ceil32(arg4.length)) + 261] = 0
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 261 len ceil32(arg4.length)])
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
                            else:
                                mem[ceil32(ceil32(arg4.length)) + 97] = uint32(arg3)
                                mem[ceil32(ceil32(arg4.length)) + 129] = 1
                                stor157[address(arg2)].field_0++
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
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
                                    idx = 0
                                    while idx < arg4.length:
                                        mem[idx + ceil32(ceil32(arg4.length)) + 325] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(arg4.length) > arg4.length:
                                        mem[arg4.length + ceil32(ceil32(arg4.length)) + 325] = 0
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 325 len ceil32(arg4.length)])
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
                        else:
                            if idx >= stor157[address(arg1)].field_0:
                                revert with 0, 50
                            if stor157[address(arg1)][idx].field_32 > -stor157[address(arg1)][idx].field_0 + test266151307():
                                revert with 0, 17
                            if uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) < arg3:
                                revert with 0, 17
                            if uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) - arg3 < 1:
                                revert with 0, 17
                            if 1 > !arg3:
                                revert with 0, 17
                            mem[ceil32(ceil32(arg4.length)) + 97] = uint32(arg3 + 1)
                            mem[ceil32(ceil32(arg4.length)) + 129] = uint32(uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) + -arg3 - 1)
                            stor157[address(arg1)].field_0++
                            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = uint32(arg3 + 1)
                            stor157[address(arg1)][stor157[address(arg1)].field_0].field_32 = uint32(uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) + -arg3 - 1)
                            if 1 > !(uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) + -arg3 - 1):
                                revert with 0, 17
                            if idx >= stor157[address(arg1)].field_0:
                                revert with 0, 50
                            if stor157[address(arg1)][idx].field_32 < uint32(uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) - arg3):
                                revert with 0, 17
                            stor157[address(arg1)][idx].field_32 = uint32(stor157[address(arg1)][idx].field_32 - uint32(uint32(stor157[address(arg1)][idx].field_0 + stor157[address(arg1)][idx].field_32) - arg3))
                            if not arg2:
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
                                    idx = 0
                                    while idx < arg4.length:
                                        mem[idx + ceil32(ceil32(arg4.length)) + 325] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(arg4.length) > arg4.length:
                                        mem[arg4.length + ceil32(ceil32(arg4.length)) + 325] = 0
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 325 len ceil32(arg4.length)])
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
                            else:
                                stor157[address(arg2)].field_0++
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
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
                                    idx = 0
                                    while idx < arg4.length:
                                        mem[idx + ceil32(ceil32(arg4.length)) + 389] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(arg4.length) > arg4.length:
                                        mem[arg4.length + ceil32(ceil32(arg4.length)) + 389] = 0
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 389 len ceil32(arg4.length)])
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
        if not arg2:
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
        else:
            stor157[address(arg2)].field_0++
            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = uint32(arg3)
            stor157[address(arg2)][stor157[address(arg2)].field_0].field_32 = 1
            stor157[address(arg2)][stor157[address(arg2)].field_0].field_40 = 0
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
                    args msg.sender, address(arg1), arg3, 128, arg4.length, arg4[all], 0
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



}
