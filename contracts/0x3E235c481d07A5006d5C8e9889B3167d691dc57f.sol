contract main {




// =====================  Runtime code  =====================


#
#  - processReward(uint256 arg1)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - tokenURI(uint256 arg1)
#  - mintById(uint256 arg1, address arg2)
#  - claimRewards(address arg1)
#
const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956


mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor2;
array of struct stor3;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
mapping of uint256 tokenOfOwnerByIndex;
array of uint256 tokenByIndex;
mapping of struct stor12;
uint256 _tokenIdTracker;
address uniswapV2RouterAddress;
array of uint256 stor15;
array of struct stor16;
uint256 price;
uint256 maxSupply;
uint256 maxMultipleMint;
uint256 sub_efee1a00;
uint256 sub_91d7b82f;
uint256 sub_c4dc12df;
uint8 stor23;
uint8 stor23; offset 8
uint8 stor23; offset 16
address sub_c337cad9Address; offset 24
uint256 stor23; offset 16
uint256 stor23; offset 8
uint256 stor23;
address paymentSplitterAddress;
uint256 reflectionBalance;
uint256 reflectionFee;
uint256 totalDividend;
uint256 gasForProcessing;
uint256 lastProcessedIndex;
uint256 sub_2f5518e7;
mapping of struct userReward;
mapping of address creator;
mapping of address sub_9d43585a;
mapping of uint256 stor34;
mapping of uint256 stor35;

function userReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userReward[arg1].field_0, userReward[arg1].field_256, userReward[arg1].field_512, userReward[arg1].field_768
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_2f5518e7(?) {
    return sub_2f5518e7
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

function lastProcessedIndex() {
    return lastProcessedIndex
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

function creator(uint256 arg1) {
    require calldata.size - 4 >= 32
    return creator[arg1]
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

function hasCustomClaimToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(sub_9d43585a[arg1])
}

function reflectionFee() {
    return reflectionFee
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

function sub_91d7b82f(?) {
    return sub_91d7b82f
}

function _tokenIdTracker() {
    return _tokenIdTracker
}

function gasForProcessing() {
    return gasForProcessing
}

function sub_9d43585a(?) {
    require calldata.size - 4 >= 32
    return sub_9d43585a[arg1]
}

function price() {
    return price
}

function maxMultipleMint() {
    return maxMultipleMint
}

function sub_bc040a6d(?) {
    return bool(uint8(stor23.field_16))
}

function sub_c337cad9(?) {
    return sub_c337cad9Address
}

function sub_c4dc12df(?) {
    return sub_c4dc12df
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function maxSupply() {
    return maxSupply
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function saleIsActive() {
    return bool(uint8(stor23.field_0))
}

function paymentSplitter() {
    return paymentSplitterAddress
}

function sub_efee1a00(?) {
    return sub_efee1a00
}

function sub_f833513d(?) {
    return bool(uint8(stor23.field_8))
}

function _fallback() payable {
    revert
}

function currentRate() {
    if tokenByIndex.length:
        return (reflectionBalance / tokenByIndex.length)
    else:
        return 0
}

function getNftMultiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor34[arg1]:
        return 1
    return stor34[arg1]
}

function clearDefaultClaimToken() {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    sub_c337cad9Address = 0
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    price = arg1
}

function setMaxSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    maxSupply = arg1
}

function setReflectionFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    reflectionFee = arg1
}

function setMaxMultipleClaim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    sub_efee1a00 = arg1
}

function setMaxMultipleMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    maxMultipleMint = arg1
}

function flipAutoRewardState() {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    Mask(248, 0, stor23.field_8) = Mask(248, 0, not uint8(stor23.field_8))
}

function setBlockDelayCustomReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    sub_c4dc12df = arg1
}

function updateGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    gasForProcessing = arg1
}

function flipAutoRewardAsCustom() {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    Mask(240, 0, stor23.field_16) = Mask(240, 0, not uint8(stor23.field_16))
}

function flipSaleState() {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    uint256(stor23.field_0) = not uint8(stor23.field_0) or Mask(248, 8, uint256(stor23.field_0))
}

function updateDefaultClaimToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    sub_c337cad9Address = arg1
}

function mineReserves(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(msg.sender)].field_0:
        revert with 0, 'Must have Minter role'
    if var86001 >= arg1:
    # nil
}

function mint() payable {
    if not uint8(stor23.field_0):
        revert with 0, 'Sale must be active to mint'
    if price != msg.value:
        revert with 0, 'Must send correct price'
    if tokenByIndex.length >= maxSupply:
        revert with 0, 'All NFTs have been minted'
    # nil
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

function setMaxNftMultiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    if arg1 <= 0:
        revert with 0, 'Must be positive'
    sub_91d7b82f = arg1
}

function setNftMultiplier(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    if arg2 > sub_91d7b82f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must be less or equal to max multiplier'
    stor34[arg1] = arg2
}

function clearNftCustomToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can only clear custom tokens for yourself'
    sub_9d43585a[arg1] = 0
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The router already has that address'
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must have admin role to update the router address'
    uniswapV2RouterAddress = arg1
}

function sub_146d9f8d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if paymentSplitterAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The paymentSplitter already has that address'
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must have admin role to update the paymentSplitter'
    paymentSplitterAddress = address(arg1)
}

function updateNftCustomToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can only set custom tokens for yourself'
    if not uint8(stor23.field_16):
        revert with 0, 'Custom auto rewards is disabled'
    sub_9d43585a[arg1] = arg2
}

function transferAnyERC20Tokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if 1 >= stor34[arg1]:
        if totalDividend < stor35[arg1]:
            revert with 0, 17
        if not sub_91d7b82f:
            revert with 0, 18
        return (totalDividend - stor35[arg1] / sub_91d7b82f)
    if stor34[arg1] >= sub_91d7b82f:
        if totalDividend < stor35[arg1]:
            revert with 0, 17
        return (totalDividend - stor35[arg1])
    if sub_91d7b82f < stor34[arg1]:
        revert with 0, 17
    if totalDividend < stor35[arg1]:
        revert with 0, 17
    if not sub_91d7b82f - stor34[arg1]:
        revert with 0, 18
    return (totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1])
}

function sub_adfc5763(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Address: insufficient balance'
    call address(arg1) with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function getAllRoleMembers(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[416 len 320] = call.data[calldata.size len 320]
    idx = 0
    while idx < roleMember[arg1].field_0:
        mem[32] = 1
        if idx >= roleMember[arg1].field_0:
            revert with 0, 50
        mem[0] = sha3(arg1, 1)
        if idx >= 10:
            revert with 0, 50
        mem[(32 * idx) + 416] = roleMember[arg1][idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 416
    t = 736
    while idx < 10:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from 736
       len 320
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

function clearUserCustomToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != msg.sender:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can only clear custom tokens for yourself'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 33
        sub_9d43585a[stor8[address(arg1)][idx]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updateUserCustomToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor23.field_16):
        revert with 0, 'Custom auto rewards is disabled'
    if arg1 != msg.sender:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can only clear custom tokens for yourself'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 33
        sub_9d43585a[stor8[address(arg1)][idx]] = arg2
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
        revert with 0, 'Must have Admin role'
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while (uint255(stor15.length) * 0.5) + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
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

function setContractURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Must have Admin role'
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
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
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
        revert with 0, 'Must have Admin role'
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

function mintMultiple(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor23.field_0):
        revert with 0, 'Sale must be active to mint'
    if arg1 > maxMultipleMint:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot mint too many NFTs at once'
    if price and arg1 > -1 / price:
        revert with 0, 17
    if price * arg1 != msg.value:
        revert with 0, 'Must send correct price'
    if tokenByIndex.length > !arg1:
        revert with 0, 17
    if tokenByIndex.length + arg1 < 1:
        revert with 0, 17
    if tokenByIndex.length + arg1 - 1 >= maxSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot mint more than total supply'
    if var96001 < arg1:
        # nil
    else:
        if not reflectionFee:
            revert with 0, 18
        if msg.value < msg.value / reflectionFee:
            revert with 0, 17
        if reflectionBalance > !(msg.value / reflectionFee):
            revert with 0, 17
        reflectionBalance += msg.value / reflectionFee
        if not tokenByIndex.length:
            revert with 0, 18
        if totalDividend > !(msg.value / reflectionFee / tokenByIndex.length):
            revert with 0, 17
        totalDividend += msg.value / reflectionFee / tokenByIndex.length
        call paymentSplitterAddress with:
           value msg.value - (msg.value / reflectionFee) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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

function getTotalReflectionBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        if 1 >= stor34[stor8[address(arg1)][idx]]:
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 35
            if totalDividend < stor35[stor8[address(arg1)][idx]]:
                revert with 0, 17
            if not sub_91d7b82f:
                revert with 0, 18
            if s > !(totalDividend - stor35[stor8[address(arg1)][idx]] / sub_91d7b82f):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (totalDividend - stor35[stor8[address(arg1)][idx]] / sub_91d7b82f)
            continue 
        if stor34[stor8[address(arg1)][idx]] >= sub_91d7b82f:
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 35
            if totalDividend < stor35[stor8[address(arg1)][idx]]:
                revert with 0, 17
            if s > !(totalDividend - stor35[stor8[address(arg1)][idx]]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + totalDividend - stor35[stor8[address(arg1)][idx]]
            continue 
        if sub_91d7b82f < stor34[stor8[address(arg1)][idx]]:
            revert with 0, 17
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 35
        if totalDividend < stor35[stor8[address(arg1)][idx]]:
            revert with 0, 17
        if not sub_91d7b82f - stor34[stor8[address(arg1)][idx]]:
            revert with 0, 18
        if s > !(totalDividend - stor35[stor8[address(arg1)][idx]] / sub_91d7b82f - stor34[stor8[address(arg1)][idx]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (totalDividend - stor35[stor8[address(arg1)][idx]] / sub_91d7b82f - stor34[stor8[address(arg1)][idx]])
        continue 
    return s
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

function contractURI() {
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor16.length):
                if 31 < uint255(stor16.length) * 0.5:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor16.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(uint255(stor16.length) * 0.5) + 192 len ceil32(uint255(stor16.length) * 0.5)] = mem[128 len ceil32(uint255(stor16.length) * 0.5)]
        if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
            mem[(uint255(stor16.length) * 0.5) + ceil32(uint255(stor16.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)], mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor16.length) * 0.5)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor16.length):
            if 31 < uint255(stor16.length) * 0.5:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while (uint255(stor16.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function claimReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0, 'Only nft owner can claim rewards'
    if 1 >= stor34[arg1]:
        if totalDividend < stor35[arg1]:
            revert with 0, 17
        if not sub_91d7b82f:
            revert with 0, 18
        if not totalDividend - stor35[arg1] / sub_91d7b82f:
            return (totalDividend - stor35[arg1] / sub_91d7b82f)
        if sub_2f5518e7 > !(totalDividend - stor35[arg1] / sub_91d7b82f):
            revert with 0, 17
        sub_2f5518e7 += totalDividend - stor35[arg1] / sub_91d7b82f
        stor35[arg1] = totalDividend
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if userReward[stor4[arg1]].field_0 > !(totalDividend - stor35[arg1] / sub_91d7b82f):
            revert with 0, 17
        userReward[stor4[arg1]].field_0 += totalDividend - stor35[arg1] / sub_91d7b82f
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        userReward[stor4[arg1]].field_256 = totalDividend - stor35[arg1] / sub_91d7b82f
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        userReward[stor4[arg1]].field_512 = block.timestamp
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if not sub_9d43585a[arg1]:
            call ownerOf[arg1] with:
               value totalDividend - stor35[arg1] / sub_91d7b82f wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return (totalDividend - stor35[arg1] / sub_91d7b82f)
        if not uint8(stor23.field_16):
            call ownerOf[arg1] with:
               value totalDividend - stor35[arg1] / sub_91d7b82f wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return (totalDividend - stor35[arg1] / sub_91d7b82f)
        mem[96] = 2
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WETH() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[0] = arg1
        mem[32] = 33
        mem[160] = sub_9d43585a[arg1]
        if block.timestamp > !sub_c4dc12df:
            revert with 0, 17
        mem[ceil32(return_data.size) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 0
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 324] = 2
        idx = 0
        s = ceil32(return_data.size) + 356
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 260] = ownerOf[arg1]
        mem[ceil32(return_data.size) + 292] = block.timestamp + sub_c4dc12df
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value totalDividend - stor35[arg1] / sub_91d7b82f wei
             gas gas_remaining wei
            args 0, 128, ownerOf[arg1], block.timestamp + sub_c4dc12df, 2, mem[ceil32(return_data.size) + 356 len 64]
        if ext_call.success:
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
                revert with 0, 65
            require return_data.size >= mem[ceil32(return_data.size) + 192 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32
            return (totalDividend - stor35[arg1] / sub_91d7b82f)
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        call ownerOf[arg1] with:
           value totalDividend - stor35[arg1] / sub_91d7b82f wei
             gas 3000 wei
        if ext_call.success:
            return (totalDividend - stor35[arg1] / sub_91d7b82f)
        if sub_2f5518e7 < totalDividend - stor35[arg1] / sub_91d7b82f:
            revert with 0, 17
        sub_2f5518e7 -= totalDividend - stor35[arg1] / sub_91d7b82f
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if userReward[stor4[arg1]].field_0 < totalDividend - stor35[arg1] / sub_91d7b82f:
            revert with 0, 17
        userReward[stor4[arg1]].field_0 -= totalDividend - stor35[arg1] / sub_91d7b82f
    else:
        if stor34[arg1] >= sub_91d7b82f:
            if totalDividend < stor35[arg1]:
                revert with 0, 17
            if not totalDividend - stor35[arg1]:
                return (totalDividend - stor35[arg1])
            if sub_2f5518e7 > !(totalDividend - stor35[arg1]):
                revert with 0, 17
            sub_2f5518e7 = sub_2f5518e7 + totalDividend - stor35[arg1]
            stor35[arg1] = totalDividend
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if userReward[stor4[arg1]].field_0 > !(totalDividend - stor35[arg1]):
                revert with 0, 17
            userReward[stor4[arg1]].field_0 = userReward[stor4[arg1]].field_0 + totalDividend - stor35[arg1]
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            userReward[stor4[arg1]].field_256 = totalDividend - stor35[arg1]
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            userReward[stor4[arg1]].field_512 = block.timestamp
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if not sub_9d43585a[arg1]:
                call ownerOf[arg1] with:
                   value totalDividend - stor35[arg1] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return (totalDividend - stor35[arg1])
            if not uint8(stor23.field_16):
                call ownerOf[arg1] with:
                   value totalDividend - stor35[arg1] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return (totalDividend - stor35[arg1])
            mem[96] = 2
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[128] = ext_call.return_data[12 len 20]
            mem[0] = arg1
            mem[32] = 33
            mem[160] = sub_9d43585a[arg1]
            if block.timestamp > !sub_c4dc12df:
                revert with 0, 17
            mem[ceil32(return_data.size) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = 0
            mem[ceil32(return_data.size) + 228] = 128
            mem[ceil32(return_data.size) + 324] = 2
            idx = 0
            s = ceil32(return_data.size) + 356
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 260] = ownerOf[arg1]
            mem[ceil32(return_data.size) + 292] = block.timestamp + sub_c4dc12df
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value totalDividend - stor35[arg1] wei
                 gas gas_remaining wei
                args 0, 128, ownerOf[arg1], block.timestamp + sub_c4dc12df, 2, mem[ceil32(return_data.size) + 356 len 64]
            if ext_call.success:
                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
                    revert with 0, 65
                require return_data.size >= mem[ceil32(return_data.size) + 192 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32
                return (totalDividend - stor35[arg1])
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            call ownerOf[arg1] with:
               value totalDividend - stor35[arg1] wei
                 gas 3000 wei
            if ext_call.success:
                return (totalDividend - stor35[arg1])
            if sub_2f5518e7 < totalDividend - stor35[arg1]:
                revert with 0, 17
            sub_2f5518e7 = sub_2f5518e7 - totalDividend + stor35[arg1]
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if userReward[stor4[arg1]].field_0 < totalDividend - stor35[arg1]:
                revert with 0, 17
            userReward[stor4[arg1]].field_0 = userReward[stor4[arg1]].field_0 - totalDividend + stor35[arg1]
        else:
            if sub_91d7b82f < stor34[arg1]:
                revert with 0, 17
            if totalDividend < stor35[arg1]:
                revert with 0, 17
            if not sub_91d7b82f - stor34[arg1]:
                revert with 0, 18
            if not totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1]:
                return (totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1])
            if sub_2f5518e7 > !(totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1]):
                revert with 0, 17
            sub_2f5518e7 += totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1]
            stor35[arg1] = totalDividend
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if userReward[stor4[arg1]].field_0 > !(totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1]):
                revert with 0, 17
            userReward[stor4[arg1]].field_0 += totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1]
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            userReward[stor4[arg1]].field_256 = totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1]
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            userReward[stor4[arg1]].field_512 = block.timestamp
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if not sub_9d43585a[arg1]:
                call ownerOf[arg1] with:
                   value totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return (totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1])
            if not uint8(stor23.field_16):
                call ownerOf[arg1] with:
                   value totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return (totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1])
            mem[96] = 2
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[128] = ext_call.return_data[12 len 20]
            mem[0] = arg1
            mem[32] = 33
            mem[160] = sub_9d43585a[arg1]
            if block.timestamp > !sub_c4dc12df:
                revert with 0, 17
            mem[ceil32(return_data.size) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = 0
            mem[ceil32(return_data.size) + 228] = 128
            mem[ceil32(return_data.size) + 324] = 2
            idx = 0
            s = ceil32(return_data.size) + 356
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 260] = ownerOf[arg1]
            mem[ceil32(return_data.size) + 292] = block.timestamp + sub_c4dc12df
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1] wei
                 gas gas_remaining wei
                args 0, 128, ownerOf[arg1], block.timestamp + sub_c4dc12df, 2, mem[ceil32(return_data.size) + 356 len 64]
            if ext_call.success:
                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
                    revert with 0, 65
                require return_data.size >= mem[ceil32(return_data.size) + 192 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32
                return (totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1])
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            call ownerOf[arg1] with:
               value totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1] wei
                 gas 3000 wei
            if ext_call.success:
                return (totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1])
            if sub_2f5518e7 < totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1]:
                revert with 0, 17
            sub_2f5518e7 -= totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1]
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if userReward[stor4[arg1]].field_0 < totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1]:
                revert with 0, 17
            userReward[stor4[arg1]].field_0 -= totalDividend - stor35[arg1] / sub_91d7b82f - stor34[arg1]
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    userReward[stor4[arg1]].field_256 = 0
    return 0
}



}
