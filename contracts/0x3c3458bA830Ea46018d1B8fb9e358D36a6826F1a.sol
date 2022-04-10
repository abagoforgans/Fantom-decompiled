contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - sub_c00e35db(?)
#
address owner;
array of uint256 stor1;
mapping of uint8 stor2;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor5;
mapping of address approved;
mapping of uint8 stor7;
array of uint256 name;
array of uint256 symbol;
array of struct stor10;
array of struct baseURI;
address stor12;
address stor13;
address sushiRouterAddress;
address wFTMAddress;
array of struct sub_a7f595e0;
array of struct stor17;
array of struct tokenSymbol;
mapping of struct sub_204120bc;
array of uint256 stor99;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor2[Mask(32, 224, arg1)])
}

function wFTM() {
    return wFTMAddress
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_204120bc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_204120bc[arg1].field_0, sub_204120bc[arg1].field_256
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    return tokenByIndex[arg1].field_0
}

function comptroller() {
    return address(stor1.length)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor5[arg1] - 1 < tokenByIndex.length
    return address(tokenByIndex[stor5[arg1] - 1].field_256)
}

function baseURI() {
    return baseURI[0 len baseURI.length].field_0
}

function sushiRouter() {
    return sushiRouterAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function getTokenSymbol(address arg1) {
    return tokenSymbol[address(arg1)][0 len tokenSymbol[address(arg1)].length].field_0
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a7f595e0(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_a7f595e0.length
    return address(sub_a7f595e0[arg1].field_256), 
           sub_a7f595e0[arg1].field_1024,
           address(sub_a7f595e0[arg1].field_512),
           sub_a7f595e0[arg1].field_1280,
           sub_a7f595e0[arg1].field_768,
           sub_a7f595e0[arg1].field_1536,
           sub_a7f595e0[arg1].field_2048,
           sub_a7f595e0[arg1].field_2304,
           sub_a7f595e0[arg1].field_2560
}

function getTokenPrice(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_204120bc[address(arg1)].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function sub_fb0b2b36(?) {
    return tokenSymbol[arg1][0 len tokenSymbol[arg1].length].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_2100dce2(?) payable {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
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

function balance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ed2872b1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_96acf774(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(stor12)
    staticcall stor12.flashFee(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getUnderlyingToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function addToken(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    stor17.length++
    address(stor17[stor17.length].field_0) = arg1
    tokenSymbol[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor12 != msg.sender:
        revert with 0, 'FlashBorrower: Untrusted lender'
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FlashBorrower: Untrusted loan initiator'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}

function sub_85d6810f(?) {
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] != 0:
        revert with 0, 'Comptroller.getAccountLiquidity failed.'
    if ext_call.return_data[64]:
        revert with 0, 'account underwater'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'account has excess collateral'
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function sub_21746615(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[128] = tokenSymbol[address(arg1)].field_0
    idx = 128
    s = 0
    while tokenSymbol[address(arg1)].length + 96 > idx:
        mem[idx + 32] = tokenSymbol[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(stor13)
    staticcall stor13.getReferenceData(string rg1, string rg2) with:
            gas gas_remaining wei
           args 64, ceil32(tokenSymbol[address(arg1)].length) + 96, tokenSymbol[address(arg1)].length, mem[128 len ceil32(tokenSymbol[address(arg1)].length)], 3, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(tokenSymbol[address(arg1)].length) + ceil32(return_data.size) + 384 <= test266151307())
    sub_204120bc[address(arg1)].field_0 = ext_call.return_data[0]
    sub_204120bc[address(arg1)].field_256 = block.timestamp
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor5[arg2] - 1 < tokenByIndex.length
    if arg1 == address(tokenByIndex[stor5[arg2] - 1].field_256):
        revert with 0, 'ERC721: approval to current owner'
    if address(tokenByIndex[stor5[arg2] - 1].field_256) != msg.sender:
        if not stor7[address(stor4[stor5[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor5[arg2] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor5[arg2] - 1].field_256), arg1, arg2);
}

function sub_1c20c970(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Failed to repay borrow from cToken'
    return arg2
}

function sub_dd41e3c2(?) {
    require calldata.size - 4 >= 128
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if not sub_204120bc[address(arg3)].field_0:
        if not sub_204120bc[address(arg4)].field_0:
            return 0
        if arg2 * sub_204120bc[address(arg4)].field_0 / sub_204120bc[address(arg4)].field_0 != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return 0, arg2 * sub_204120bc[address(arg4)].field_0 / 10^18
    if arg1 * sub_204120bc[address(arg3)].field_0 / sub_204120bc[address(arg3)].field_0 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not sub_204120bc[address(arg4)].field_0:
        return arg1 * sub_204120bc[address(arg3)].field_0 / 10^18, 0
    if arg2 * sub_204120bc[address(arg4)].field_0 / sub_204120bc[address(arg4)].field_0 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return arg1 * sub_204120bc[address(arg3)].field_0 / 10^18, arg2 * sub_204120bc[address(arg4)].field_0 / 10^18
}

function sub_e4f8a82e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 1
    mem[128] = address(arg1)
    mem[160] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[164] = 32
    mem[196] = 1
    idx = 0
    s = 128
    t = 228
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(stor1.length))
    call address(stor1.length).enterMarkets(address[] rg1) with:
         gas gas_remaining wei
        args Array(len=1, data=mem[228])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    _19 = mem[160 len 4], 0
    require mem[160 len 4], 0 <= test266151307()
    require return_data.size + 160 > mem[160 len 4], 0 + 191
    _20 = mem[mem[160 len 4], 0 + 160]
    require mem[mem[160 len 4], 0 + 160] <= test266151307()
    require (32 * mem[mem[160 len 4], 0 + 160]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[160 len 4], 0 + 160]) + 192 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[160 len 4], 0 + 160]) + 192
    mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], 0 + 160]
    require return_data.size >= _19 + (32 * _20) + 32
    mem[ceil32(return_data.size) + 192 len 32 * _20] = mem[_19 + 192 len 32 * _20]
    require 0 < _20
    if mem[ceil32(return_data.size) + 192] != 0:
        revert with 0, 'Comptroller.enterMarkets failed.'
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.mint(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Failed to mint cToken'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    else:
        return 0
}

function borrow(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.borrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Failed to borrow from cToken'
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    else:
        return 0
}

function getAmountsOut(uint256 arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[96] = 2
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg4)
    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _21 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _20 + (32 * _21) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _21] = mem[_20 + 224 len 32 * _21]
    require 1 < _21
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_821c6257(?) {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg4))
    staticcall address(arg4).getAmountsIn(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _21 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _20 + (32 * _21) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _21] = mem[_20 + 224 len 32 * _21]
    require 0 < _21
    mem[mem[64]] = mem[ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function redeem(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.redeem(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Failed to redeem cToken'
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    else:
        return 0
}

function sub_d61359dc(?) {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 1
    mem[260] = 160
    mem[356] = 2
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[292] = this.address
    mem[324] = block.timestamp
    require ext_code.size(address(arg4))
    call address(arg4).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _21 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _20 + (32 * _21) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _21] = mem[_20 + 224 len 32 * _21]
    require 1 < _21
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_e9ac2eb1(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _34 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_34] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_34 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_34 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _34
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        stor17.length++
        address(stor17[stor17.length].field_0) = mem[(32 * idx) + 140 len 20]
        require idx < mem[96]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 18
        _55 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
        mem[0] = sha3(mem[(32 * idx) + 140 len 20], 18)
        tokenSymbol[mem[(32 * idx) + 140 len 20]].field_0 = (2 * _55) + 1
        s = sha3(sha3(mem[(32 * idx) + 140 len 20], 18))
        t = mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32
        while mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + _55 + 32 > t:
            stor[s] = mem[t]
            s = s + 1
            t = t + 32
            continue 
        s = sha3(sha3(mem[(32 * idx) + 140 len 20], 18)) + (Mask(251, 0, _55 + 31) >> 5)
        while sha3(sha3(mem[(32 * idx) + 140 len 20], 18)) + (tokenSymbol[mem[(32 * idx) + 140 len 20]].length + 31 / 32) > s:
            stor[s] = 0
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}

function getPrice(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 160 >= 128 and ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307()
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 260] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292] = ceil32(arg1.length) + 96
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 356] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 388 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 388] = 0
    require ext_code.size(stor13)
    staticcall stor13.getReferenceData(string rg1, string rg2) with:
            gas gas_remaining wei
           args mem[ceil32(arg1.length) + ceil32(arg2.length) + 260 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 352 <= test266151307())
    return ext_call.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor5[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor5[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor5[arg3] - 1].field_256) != msg.sender:
        if not stor5[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[address(stor4[stor5[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor5[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor5[arg3] - 1].field_256) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    require stor5[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor5[arg3] - 1].field_256), 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        require tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor5[arg3]:
        require stor5[arg3] - 1 < tokenByIndex.length
        address(tokenByIndex[stor5[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor5[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor5[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[128] = stor10[arg1].field_0
    idx = 128
    s = 0
    while stor10[arg1].length + 96 > idx:
        mem[idx + 32] = stor10[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor10[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = ceil32(stor10[arg1].length) + 160
    s = 0
    while ceil32(stor10[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == baseURI.length:
        var36001 = ceil32(stor10[arg1].length)
        return Array(len=stor10[arg1].length, data=mem[128 len ceil32(stor10[arg1].length)])
    if stor10[arg1].length:
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(baseURI.length)] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(baseURI.length)]
        var34001 = ceil32(baseURI.length)
        if ceil32(baseURI.length) > baseURI.length:
            mem[baseURI.length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 192] = 0
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len ceil32(stor10[arg1].length)] = mem[128 len ceil32(stor10[arg1].length)]
        var40001 = ceil32(stor10[arg1].length)
        mem[stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 32
        mem[stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224] = mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160])]
        if ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160]) > mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160]:
            mem[mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160] + stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = 0
        return Array(len=mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160], data=mem[stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160])]), 
    if not arg1:
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(baseURI.length)] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(baseURI.length)]
        var38001 = ceil32(baseURI.length)
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224])]
        if ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224]) > mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224]:
            mem[mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224] + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321] = 0
        return Array(len=mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224], data=mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224])]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    if s:
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 192 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(baseURI.length)] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(baseURI.length)]
    if ceil32(baseURI.length) > baseURI.length:
        mem[baseURI.length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224] = 0
    mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len ceil32(s)] = mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(s)]
    mem[s + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] = 32
    mem[s + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256] = mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[s + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) <= mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]:
        return Array(len=mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192], data=mem[s + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]), 
    mem[mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + s + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288] = 0
    return 32, mem[s + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 32], 
}

function sub_de5b6c61(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 18
        _407 = sha3(mem[(32 * idx) + 140 len 20], 18)
        _408 = mem[64]
        mem[64] = mem[64] + ceil32(tokenSymbol[mem[(32 * idx) + 140 len 20]].length) + 32
        mem[_408] = tokenSymbol[mem[(32 * idx) + 140 len 20]].length
        mem[0] = _407
        mem[_408 + 32] = stor[sha3(_407)]
        s = _408 + 32
        t = sha3(_407)
        while _408 + stor[_407].length > s:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        _607 = mem[64]
        mem[64] = mem[64] + 64
        mem[_607] = 3
        mem[_607 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _608 = mem[64]
        mem[64] = mem[64] + 96
        mem[_608] = 0
        mem[_608 + 32] = 0
        mem[_608 + 64] = 0
        _611 = mem[64]
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        _614 = mem[_408]
        mem[mem[64] + 68] = mem[_408]
        s = 0
        while s < _614:
            mem[s + mem[64] + 100] = mem[s + _408 + 32]
            s = s + 32
            continue 
        if ceil32(_614) <= _614:
            mem[_611 + 36] = ceil32(_614) + 96
            _801 = mem[_607]
            mem[ceil32(_614) + _611 + 100] = mem[_607]
            s = 0
            while s < _801:
                mem[s + ceil32(_614) + _611 + 132] = mem[s + _607 + 32]
                s = s + 32
                continue 
            if ceil32(_801) <= _801:
                require ext_code.size(stor13)
                staticcall stor13.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_801) + ceil32(_614) + _611 + -mem[64] + 128]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _975 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _979 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_979] = mem[_975]
                mem[_979 + 32] = mem[_975 + 32]
                mem[_979 + 64] = mem[_975 + 64]
                _995 = mem[_979]
                _999 = mem[64]
                mem[64] = mem[64] + 64
                mem[_999] = 0
                mem[_999 + 32] = 0
                _1003 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1003] = _995
                mem[_1003 + 32] = block.timestamp
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 19
                sub_204120bc[mem[(32 * idx) + 140 len 20]].field_0 = _995
            else:
                mem[_801 + ceil32(_614) + _611 + 132] = 0
                require ext_code.size(stor13)
                staticcall stor13.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_801) + ceil32(_614) + _611 + -mem[64] + 128]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _976 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _980 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_980] = mem[_976]
                mem[_980 + 32] = mem[_976 + 32]
                mem[_980 + 64] = mem[_976 + 64]
                _996 = mem[_980]
                _1000 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1000] = 0
                mem[_1000 + 32] = 0
                _1005 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1005] = _996
                mem[_1005 + 32] = block.timestamp
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 19
                sub_204120bc[mem[(32 * idx) + 140 len 20]].field_0 = _996
        else:
            mem[_614 + _611 + 100] = 0
            mem[_611 + 36] = ceil32(_614) + 96
            _802 = mem[_607]
            mem[ceil32(_614) + _611 + 100] = mem[_607]
            s = 0
            while s < _802:
                mem[s + ceil32(_614) + _611 + 132] = mem[s + _607 + 32]
                s = s + 32
                continue 
            if ceil32(_802) <= _802:
                require ext_code.size(stor13)
                staticcall stor13.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_802) + ceil32(_614) + _611 + -mem[64] + 128]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _977 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _981 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_981] = mem[_977]
                mem[_981 + 32] = mem[_977 + 32]
                mem[_981 + 64] = mem[_977 + 64]
                _997 = mem[_981]
                _1001 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1001] = 0
                mem[_1001 + 32] = 0
                _1007 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1007] = _997
                mem[_1007 + 32] = block.timestamp
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 19
                sub_204120bc[mem[(32 * idx) + 140 len 20]].field_0 = _997
            else:
                mem[_802 + ceil32(_614) + _611 + 132] = 0
                require ext_code.size(stor13)
                staticcall stor13.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_802) + ceil32(_614) + _611 + -mem[64] + 128]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _978 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _982 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_982] = mem[_978]
                mem[_982 + 32] = mem[_978 + 32]
                mem[_982 + 64] = mem[_978 + 64]
                _998 = mem[_982]
                _1002 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1002] = 0
                mem[_1002 + 32] = 0
                _1009 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1009] = _998
                mem[_1009 + 32] = block.timestamp
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 19
                sub_204120bc[mem[(32 * idx) + 140 len 20]].field_0 = _998
        sub_204120bc[mem[(32 * idx) + 140 len 20]].field_256 = block.timestamp
        idx = idx + 1
        continue 
}

function updateTokenPrices() {
    mem[64] = (32 * stor17.length) + 128
    mem[96] = stor17.length
    if not stor17.length:
        idx = 0
        while idx < stor17.length:
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 18
            _207 = sha3(mem[(32 * idx) + 140 len 20], 18)
            _208 = mem[64]
            mem[64] = mem[64] + ceil32(tokenSymbol[mem[(32 * idx) + 140 len 20]].length) + 32
            mem[_208] = tokenSymbol[mem[(32 * idx) + 140 len 20]].length
            mem[0] = _207
            mem[_208 + 32] = stor[sha3(_207)]
            s = _208 + 32
            t = sha3(_207)
            while _208 + stor[_207].length > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            _407 = mem[64]
            mem[64] = mem[64] + 64
            mem[_407] = 3
            mem[_407 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            _410 = mem[64]
            mem[64] = mem[64] + 96
            mem[_410] = 0
            mem[_410 + 32] = 0
            mem[_410 + 64] = 0
            _416 = mem[64]
            mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _421 = mem[_208]
            mem[mem[64] + 68] = mem[_208]
            s = 0
            while s < _421:
                mem[s + mem[64] + 100] = mem[s + _208 + 32]
                s = s + 32
                continue 
            if ceil32(_421) <= _421:
                mem[mem[64] + 36] = ceil32(_421) + 96
                _809 = mem[_407]
                mem[ceil32(_421) + mem[64] + 100] = mem[_407]
                s = 0
                while s < _809:
                    mem[s + ceil32(_421) + mem[64] + 132] = mem[s + _407 + 32]
                    s = s + 32
                    continue 
                if ceil32(_809) <= _809:
                    require ext_code.size(stor13)
                    staticcall stor13.getReferenceData(string rg1, string rg2) with:
                            gas gas_remaining wei
                           args 64, ceil32(_421) + 96, mem[mem[64] + 68 len ceil32(_809) + ceil32(_421) + 64]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1186 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1195 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1195] = mem[_1186]
                    mem[_1195 + 32] = mem[_1186 + 32]
                    mem[_1195 + 64] = mem[_1186 + 64]
                    _1220 = mem[_1195]
                    _1234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1234] = 0
                    mem[_1234 + 32] = 0
                    _1238 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1238] = _1220
                    mem[_1238 + 32] = block.timestamp
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[(32 * idx) + 140 len 20]].field_0 = _1220
                else:
                    mem[_809 + ceil32(_421) + mem[64] + 132] = 0
                    require ext_code.size(stor13)
                    staticcall stor13.getReferenceData(string rg1, string rg2) with:
                            gas gas_remaining wei
                           args 64, ceil32(_421) + 96, mem[mem[64] + 68 len ceil32(_809) + ceil32(_421) + 64]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1187 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1196 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1196] = mem[_1187]
                    mem[_1196 + 32] = mem[_1187 + 32]
                    mem[_1196 + 64] = mem[_1187 + 64]
                    _1221 = mem[_1196]
                    _1235 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1235] = 0
                    mem[_1235 + 32] = 0
                    _1240 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1240] = _1221
                    mem[_1240 + 32] = block.timestamp
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[(32 * idx) + 140 len 20]].field_0 = _1221
            else:
                mem[_421 + mem[64] + 100] = 0
                mem[mem[64] + 36] = ceil32(_421) + 96
                _810 = mem[_407]
                mem[ceil32(_421) + mem[64] + 100] = mem[_407]
                s = 0
                while s < _810:
                    mem[s + ceil32(_421) + mem[64] + 132] = mem[s + _407 + 32]
                    s = s + 32
                    continue 
                if ceil32(_810) <= _810:
                    require ext_code.size(stor13)
                    staticcall stor13.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_810) + ceil32(_421) + _416 + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1188 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1197 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1197] = mem[_1188]
                    mem[_1197 + 32] = mem[_1188 + 32]
                    mem[_1197 + 64] = mem[_1188 + 64]
                    _1222 = mem[_1197]
                    _1236 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1236] = 0
                    mem[_1236 + 32] = 0
                    _1242 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1242] = _1222
                    mem[_1242 + 32] = block.timestamp
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[(32 * idx) + 140 len 20]].field_0 = _1222
                else:
                    mem[_810 + ceil32(_421) + _416 + 132] = 0
                    require ext_code.size(stor13)
                    staticcall stor13.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_810) + ceil32(_421) + _416 + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1189 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1198 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1198] = mem[_1189]
                    mem[_1198 + 32] = mem[_1189 + 32]
                    mem[_1198 + 64] = mem[_1189 + 64]
                    _1223 = mem[_1198]
                    _1237 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1237] = 0
                    mem[_1237 + 32] = 0
                    _1244 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1244] = _1223
                    mem[_1244 + 32] = block.timestamp
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[(32 * idx) + 140 len 20]].field_0 = _1223
            sub_204120bc[mem[(32 * idx) + 140 len 20]].field_256 = block.timestamp
            idx = idx + 1
            continue 
    else:
        mem[0] = 17
        mem[128] = address(stor17.field_0)
        idx = 128
        s = 0
        while (32 * stor17.length) + 96 > idx:
            mem[idx + 32] = address(stor17[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < stor17.length:
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 18
            _801 = sha3(mem[(32 * idx) + 140 len 20], 18)
            _802 = mem[64]
            mem[64] = mem[64] + ceil32(tokenSymbol[mem[(32 * idx) + 140 len 20]].length) + 32
            mem[_802] = tokenSymbol[mem[(32 * idx) + 140 len 20]].length
            mem[0] = _801
            mem[_802 + 32] = stor[sha3(_801)]
            s = _802 + 32
            t = sha3(_801)
            while _802 + stor[_801].length > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            _1175 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1175] = 3
            mem[_1175 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            _1176 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1176] = 0
            mem[_1176 + 32] = 0
            mem[_1176 + 64] = 0
            mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _1190 = mem[_802]
            mem[mem[64] + 68] = mem[_802]
            s = 0
            while s < _1190:
                mem[s + mem[64] + 100] = mem[s + _802 + 32]
                s = s + 32
                continue 
            if ceil32(_1190) <= _1190:
                mem[mem[64] + 36] = ceil32(_1190) + 96
                _1425 = mem[_1175]
                mem[ceil32(_1190) + mem[64] + 100] = mem[_1175]
                s = 0
                while s < _1425:
                    mem[s + ceil32(_1190) + mem[64] + 132] = mem[s + _1175 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1425) <= _1425:
                    require ext_code.size(stor13)
                    staticcall stor13.getReferenceData(string rg1, string rg2) with:
                            gas gas_remaining wei
                           args 64, ceil32(_1190) + 96, mem[mem[64] + 68 len ceil32(_1425) + ceil32(_1190) + 64]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1599 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1603 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1603] = mem[_1599]
                    mem[_1603 + 32] = mem[_1599 + 32]
                    mem[_1603 + 64] = mem[_1599 + 64]
                    _1619 = mem[_1603]
                    _1623 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1623] = 0
                    mem[_1623 + 32] = 0
                    _1627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1627] = _1619
                    mem[_1627 + 32] = block.timestamp
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[(32 * idx) + 140 len 20]].field_0 = _1619
                else:
                    mem[_1425 + ceil32(_1190) + mem[64] + 132] = 0
                    require ext_code.size(stor13)
                    staticcall stor13.getReferenceData(string rg1, string rg2) with:
                            gas gas_remaining wei
                           args 64, ceil32(_1190) + 96, mem[mem[64] + 68 len ceil32(_1425) + ceil32(_1190) + 64]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1600 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1604 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1604] = mem[_1600]
                    mem[_1604 + 32] = mem[_1600 + 32]
                    mem[_1604 + 64] = mem[_1600 + 64]
                    _1620 = mem[_1604]
                    _1624 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1624] = 0
                    mem[_1624 + 32] = 0
                    _1629 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1629] = _1620
                    mem[_1629 + 32] = block.timestamp
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[(32 * idx) + 140 len 20]].field_0 = _1620
            else:
                mem[_1190 + mem[64] + 100] = 0
                mem[mem[64] + 36] = ceil32(_1190) + 96
                _1426 = mem[_1175]
                mem[ceil32(_1190) + mem[64] + 100] = mem[_1175]
                s = 0
                while s < _1426:
                    mem[s + ceil32(_1190) + mem[64] + 132] = mem[s + _1175 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1426) <= _1426:
                    require ext_code.size(stor13)
                    staticcall stor13.getReferenceData(string rg1, string rg2) with:
                            gas gas_remaining wei
                           args 64, ceil32(_1190) + 96, mem[mem[64] + 68 len _1190 + 32], 0, mem[mem[64] + _1190 + 132 len ceil32(_1426) + ceil32(_1190) - _1190]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1601 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1605 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1605] = mem[_1601]
                    mem[_1605 + 32] = mem[_1601 + 32]
                    mem[_1605 + 64] = mem[_1601 + 64]
                    _1621 = mem[_1605]
                    _1625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1625] = 0
                    mem[_1625 + 32] = 0
                    _1631 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1631] = _1621
                    mem[_1631 + 32] = block.timestamp
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[(32 * idx) + 140 len 20]].field_0 = _1621
                else:
                    mem[_1426 + ceil32(_1190) + mem[64] + 132] = 0
                    require ext_code.size(stor13)
                    staticcall stor13.getReferenceData(string rg1, string rg2) with:
                            gas gas_remaining wei
                           args 64, ceil32(_1190) + 96, mem[mem[64] + 68 len _1190 + 32], 0, mem[mem[64] + _1190 + 132 len ceil32(_1426) + ceil32(_1190) - _1190]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1602 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1606 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1606] = mem[_1602]
                    mem[_1606 + 32] = mem[_1602 + 32]
                    mem[_1606 + 64] = mem[_1602 + 64]
                    _1622 = mem[_1606]
                    _1626 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1626] = 0
                    mem[_1626 + 32] = 0
                    _1633 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1633] = _1622
                    mem[_1633 + 32] = block.timestamp
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[(32 * idx) + 140 len 20]].field_0 = _1622
            sub_204120bc[mem[(32 * idx) + 140 len 20]].field_256 = block.timestamp
            idx = idx + 1
            continue 
}

function sub_ab102057(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg7 == address(arg7)
    require arg9 == address(arg9)
    if address(arg7) == address(arg1):
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg5:
            revert with 0, 'Manager: tokenIn balance not sufficient'
        mem[ceil32(return_data.size) + 100] = address(arg3)
        mem[ceil32(return_data.size) + 132] = arg5
        require ext_code.size(address(arg1))
        call address(arg1).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), arg5
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg3))
        staticcall address(arg3).underlying() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 100] = address(arg3)
        mem[(4 * ceil32(return_data.size)) + 132] = arg5
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), arg5
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 100] = arg5
        require ext_code.size(address(arg3))
        call address(arg3).mint(uint256 rg1) with:
             gas gas_remaining wei
            args arg5
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Failed to mint cToken'
        mem[(8 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[(10 * ceil32(return_data.size)) + 96] = 1
        mem[(10 * ceil32(return_data.size)) + 128] = address(arg3)
        mem[(10 * ceil32(return_data.size)) + 160] = 0xc299823800000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 164] = 32
        mem[(10 * ceil32(return_data.size)) + 196] = 1
        idx = 0
        s = (10 * ceil32(return_data.size)) + 128
        t = (10 * ceil32(return_data.size)) + 228
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(stor1.length))
        call address(stor1.length).enterMarkets(address[] rg1) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[(10 * ceil32(return_data.size)) + 228])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _191 = mem[(10 * ceil32(return_data.size)) + 160 len 4], 0
        require mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 <= test266151307()
        require (10 * ceil32(return_data.size)) + return_data.size + 160 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 191
        _193 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]
        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160] <= test266151307()
        require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 192 <= test266151307()
        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 192
        mem[(11 * ceil32(return_data.size)) + 160] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]
        require return_data.size >= _191 + (32 * _193) + 32
        mem[(11 * ceil32(return_data.size)) + 192 len 32 * _193] = mem[(10 * ceil32(return_data.size)) + _191 + 192 len 32 * _193]
        if 0 < _193:
            if mem[(11 * ceil32(return_data.size)) + 192] != 0:
                revert with 0, 'Comptroller.enterMarkets failed.'
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).getAccountLiquidity(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _364 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            if mem[_364] != 0:
                revert with 0, 'Comptroller.getAccountLiquidity failed.'
            if mem[_364 + 64]:
                revert with 0, 'account underwater'
            if mem[_364 + 32] <= 0:
                revert with 0, 'account has excess collateral'
            require ext_code.size(address(arg4))
            staticcall address(arg4).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _383 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _385 = mem[_383]
            require mem[_383] == mem[_383 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_385))
            staticcall address(_385).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _392 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _393 = mem[_392]
            mem[mem[64] + 4] = arg6
            require ext_code.size(address(arg4))
            call address(arg4).borrow(uint256 rg1) with:
                 gas gas_remaining wei
                args arg6
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _398 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_398]:
                revert with 0, 'Failed to borrow from cToken'
            require ext_code.size(address(arg4))
            staticcall address(arg4).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _406 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _408 = mem[_406]
            require mem[_406] == mem[_406 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_408))
            staticcall address(_408).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _416 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _418 = mem[_416]
            if _393 > mem[_416]:
                revert with 0, 'SafeMath: subtraction overflow'
            if address(arg2) == address(arg7):
            mem[mem[64] + 4] = address(arg9)
            mem[mem[64] + 36] = _418 - _393
            require ext_code.size(address(arg2))
            call address(arg2).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg9), _418 - _393
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _430 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_430] == bool(mem[_430])
            _437 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 < mem[_437]:
                mem[_437 + 32] = address(arg2)
                if 1 < mem[_437]:
                    mem[_437 + 64] = address(arg7)
                    mem[_437 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_437 + 100] = _418 - _393
                    mem[_437 + 132] = 1
                    mem[_437 + 164] = 160
                    mem[_437 + 260] = mem[_437]
                    idx = 0
                    s = _437 + 32
                    t = _437 + 292
                    while idx < mem[_437]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_437 + 196] = this.address
                    mem[_437 + 228] = block.timestamp
                    require ext_code.size(address(arg9))
                    call address(arg9).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _437 + (32 * mem[_437]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _518 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_518] <= test266151307()
                    require _518 + return_data.size > _518 + mem[_518] + 31
                    require mem[_518 + mem[_518]] <= test266151307()
                    require (32 * mem[_518 + mem[_518]]) + 32 >= 0 and _518 + ceil32(return_data.size) + (32 * mem[_518 + mem[_518]]) + 32 <= test266151307()
                    require return_data.size >= mem[_518] + (32 * mem[_518 + mem[_518]]) + 32
                    if 1 < mem[_518 + mem[_518]]:
    else:
        mem[100] = address(arg9)
        mem[132] = arg8
        require ext_code.size(address(arg7))
        call address(arg7).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg9), arg8
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = address(arg7)
        mem[ceil32(return_data.size) + 160] = address(arg1)
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg8
        mem[ceil32(return_data.size) + 228] = 1
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = block.timestamp
        require ext_code.size(address(arg9))
        call address(arg9).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg8, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _192 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 223
        _194 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 192]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 192] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 192]) + 224
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 192]
        require return_data.size >= _192 + (32 * _194) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _194] = mem[ceil32(return_data.size) + _192 + 224 len 32 * _194]
        if 1 < _194:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _365 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_365] < arg5:
                revert with 0, 'Manager: tokenIn balance not sufficient'
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = arg5
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg3), arg5
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _382 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_382] == bool(mem[_382])
            require ext_code.size(address(arg3))
            staticcall address(arg3).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _389 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _391 = mem[_389]
            require mem[_389] == mem[_389 + 12 len 20]
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = arg5
            require ext_code.size(address(_391))
            call address(_391).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg3), arg5
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _399 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_399] == bool(mem[_399])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _410 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _411 = mem[_410]
            mem[mem[64] + 4] = arg5
            require ext_code.size(address(arg3))
            call address(arg3).mint(uint256 rg1) with:
                 gas gas_remaining wei
                args arg5
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _417 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_417]:
                revert with 0, 'Failed to mint cToken'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _427 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _411 > mem[_427]:
                revert with 0, 'SafeMath: subtraction overflow'
            _434 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 < mem[_434]:
                mem[_434 + 32] = address(arg3)
                mem[_434 + 64] = 0xc299823800000000000000000000000000000000000000000000000000000000
                mem[_434 + 68] = 32
                mem[_434 + 100] = mem[_434]
                idx = 0
                s = _434 + 32
                t = _434 + 132
                while idx < mem[_434]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor1.length))
                call address(stor1.length).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _434 + (32 * mem[_434]) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _519 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _521 = mem[_519]
                require mem[_519] <= test266151307()
                require _519 + return_data.size > _519 + mem[_519] + 31
                _523 = mem[_519 + mem[_519]]
                require mem[_519 + mem[_519]] <= test266151307()
                require (32 * mem[_519 + mem[_519]]) + 32 >= 0 and _519 + ceil32(return_data.size) + (32 * mem[_519 + mem[_519]]) + 32 <= test266151307()
                mem[64] = _519 + ceil32(return_data.size) + (32 * mem[_519 + mem[_519]]) + 32
                mem[_519 + ceil32(return_data.size)] = _523
                require return_data.size >= _521 + (32 * _523) + 32
                mem[_519 + ceil32(return_data.size) + 32 len 32 * _523] = mem[_519 + _521 + 32 len 32 * _523]
                if 0 < _523:
                    if mem[_519 + ceil32(return_data.size) + 32] != 0:
                        revert with 0, 'Comptroller.enterMarkets failed.'
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).getAccountLiquidity(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _598 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    if mem[_598] != 0:
                        revert with 0, 'Comptroller.getAccountLiquidity failed.'
                    if mem[_598 + 64]:
                        revert with 0, 'account underwater'
                    if mem[_598 + 32] <= 0:
                        revert with 0, 'account has excess collateral'
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _610 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _611 = mem[_610]
                    require mem[_610] == mem[_610 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_611))
                    staticcall address(_611).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _614 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _615 = mem[_614]
                    mem[mem[64] + 4] = arg6
                    require ext_code.size(address(arg4))
                    call address(arg4).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg6
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _618 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_618]:
                        revert with 0, 'Failed to borrow from cToken'
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _624 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _625 = mem[_624]
                    require mem[_624] == mem[_624 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_625))
                    staticcall address(_625).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _628 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _629 = mem[_628]
                    if _615 > mem[_628]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if address(arg2) == address(arg7):
                    mem[mem[64] + 4] = address(arg9)
                    mem[mem[64] + 36] = _629 - _615
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg9), _629 - _615
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _634 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_634] == bool(mem[_634])
                    _636 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 < mem[_636]:
                        mem[_636 + 32] = address(arg2)
                        if 1 < mem[_636]:
                            mem[_636 + 64] = address(arg7)
                            mem[_636 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_636 + 100] = _629 - _615
                            mem[_636 + 132] = 1
                            mem[_636 + 164] = 160
                            mem[_636 + 260] = mem[_636]
                            idx = 0
                            s = _636 + 32
                            t = _636 + 292
                            while idx < mem[_636]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_636 + 196] = this.address
                            mem[_636 + 228] = block.timestamp
                            require ext_code.size(address(arg9))
                            call address(arg9).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _636 + (32 * mem[_636]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _652 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_652] <= test266151307()
                            require _652 + return_data.size > _652 + mem[_652] + 31
                            require mem[_652 + mem[_652]] <= test266151307()
                            require (32 * mem[_652 + mem[_652]]) + 32 >= 0 and _652 + ceil32(return_data.size) + (32 * mem[_652 + mem[_652]]) + 32 <= test266151307()
                            require return_data.size >= mem[_652] + (32 * mem[_652 + mem[_652]]) + 32
                            if 1 < mem[_652 + mem[_652]]:
    revert
}



}
