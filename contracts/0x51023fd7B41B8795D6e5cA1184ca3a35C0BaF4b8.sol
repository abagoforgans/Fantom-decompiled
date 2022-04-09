contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
address owner;
address comptrollerAddress;
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
address sushiRouterAddress;
array of struct sub_6bb675ed;
array of address stor84800337471693920904250232874319843718400766719524250287777680170677855896574;
array of address stor84800337471693920904250232874319843718400766719524250287777680170677855896575;
array of address stor84800337471693920904250232874319843718400766719524250287777680170677855896576;
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896577;
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896578;
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896579;
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896580;
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896581;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor2[Mask(32, 224, arg1)])
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
    return comptrollerAddress
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
    return tokenByIndex[stor5[arg1] - 1].field_256
}

function sub_6bb675ed(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_6bb675ed.length
    return sub_6bb675ed[arg1].field_0, 
           sub_6bb675ed[arg1].field_256,
           sub_6bb675ed[arg1].field_512,
           sub_6bb675ed[arg1].field_768,
           sub_6bb675ed[arg1].field_1024,
           sub_6bb675ed[arg1].field_1280,
           sub_6bb675ed[arg1].field_1536,
           sub_6bb675ed[arg1].field_1792,
           sub_6bb675ed[arg1].field_2048
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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
    call arg1.underlying() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_85d6810f(?) {
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.getAccountLiquidity(address rg1) with:
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
    require arg5.length >= 384
    require arg5.length >= 288
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    require arg5.length - 288 >= 96
    require cd[(arg5 + 324)] == address(cd[(arg5 + 324)])
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    if arg1 == tokenByIndex[stor5[arg2] - 1].field_256:
        revert with 0, 'ERC721: approval to current owner'
    if tokenByIndex[stor5[arg2] - 1].field_256 != msg.sender:
        if not stor7[stor4[stor5[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor5[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor5[arg2] - 1].field_256, arg1, arg2);
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
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.enterMarkets(address[] rg1) with:
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

function redeem(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.underlying() with:
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
    call arg1.underlying() with:
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

function borrow(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.underlying() with:
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
    call arg1.underlying() with:
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

function sub_1c20c970(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).underlying() with:
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
    require ext_code.size(address(arg1))
    call address(arg1).repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Failed to repay borrow from cToken'
    require ext_code.size(address(arg1))
    call address(arg1).underlying() with:
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
    if tokenByIndex[stor5[arg3] - 1].field_256 != msg.sender:
        if not stor5[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[stor5[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor5[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
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
    emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
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
        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
        tokenByIndex[stor5[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
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
        if ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160]) <= mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160]:
            return Array(len=mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160], data=mem[stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160])]), 
        mem[mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160] + stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = 0
        return 32, mem[stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160]) + 32], 
    if not arg1:
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(baseURI.length)] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(baseURI.length)]
        var38001 = ceil32(baseURI.length)
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224])]
        if ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224]) <= mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224]:
            return Array(len=mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224], data=mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224])]), 
        mem[mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224] + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321] = 0
        return 32, mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 224]) + 32], 
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

function sub_c612ae87(?) payable {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 == address(arg6)
    require arg9 == address(arg9)
    mem[100] = address(arg9)
    mem[132] = arg7
    require ext_code.size(address(arg6))
    call address(arg6).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg9), arg7
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = address(arg6)
    mem[ceil32(return_data.size) + 160] = address(arg2)
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg7
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
        args arg7, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _91 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223
    _92 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    require return_data.size >= _91 + (32 * _92) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _92] = mem[ceil32(return_data.size) + _91 + 224 len 32 * _92]
    if 1 < _92:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_188] < arg5:
            revert with 0, 'Manager: tokenIn balance not sufficient'
        mem[mem[64] + 4] = address(arg3)
        mem[mem[64] + 36] = arg5
        require ext_code.size(address(arg2))
        call address(arg2).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), arg5
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _194 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_194] == bool(mem[_194])
        require ext_code.size(address(arg3))
        call address(arg3).underlying() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _198 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _199 = mem[_198]
        require mem[_198] == mem[_198 + 12 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_199))
        staticcall address(_199).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _202 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _203 = mem[_202]
        mem[mem[64] + 4] = arg5
        require ext_code.size(address(arg3))
        call address(arg3).repayBorrow(uint256 rg1) with:
             gas gas_remaining wei
            args arg5
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _206 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_206]:
            revert with 0, 'Failed to repay borrow from cToken'
        require ext_code.size(address(arg3))
        call address(arg3).underlying() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _212 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _213 = mem[_212]
        require mem[_212] == mem[_212 + 12 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_213))
        staticcall address(_213).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _203 > mem[_216]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64] + 4] = address(arg3)
        mem[mem[64] + 36] = arg4
        require ext_code.size(address(arg3))
        call address(arg3).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _222 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_222] == bool(mem[_222])
        require ext_code.size(address(arg3))
        call address(arg3).underlying() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _226 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _227 = mem[_226]
        require mem[_226] == mem[_226 + 12 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_227))
        staticcall address(_227).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _230 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _231 = mem[_230]
        mem[mem[64] + 4] = arg4
        require ext_code.size(address(arg3))
        call address(arg3).redeem(uint256 rg1) with:
             gas gas_remaining wei
            args arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _234 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_234]:
            revert with 0, 'Failed to redeem cToken'
        require ext_code.size(address(arg3))
        call address(arg3).underlying() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _240 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _241 = mem[_240]
        require mem[_240] == mem[_240 + 12 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_241))
        staticcall address(_241).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _244 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _231 > mem[_244]:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg8 + arg7 < arg7:
            revert with 0, 'SafeMath: addition overflow'
        _249 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 < mem[_249]:
            mem[_249 + 32] = address(arg1)
            if 1 < mem[_249]:
                mem[_249 + 64] = address(arg6)
                mem[_249 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[_249 + 100] = arg8 + arg7
                mem[_249 + 132] = 64
                mem[_249 + 164] = mem[_249]
                idx = 0
                s = _249 + 32
                t = _249 + 196
                while idx < mem[_249]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg9))
                staticcall address(arg9).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _249 + (32 * mem[_249]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _280 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _281 = mem[_280]
                require mem[_280] <= test266151307()
                require _280 + return_data.size > _280 + mem[_280] + 31
                _282 = mem[_280 + mem[_280]]
                require mem[_280 + mem[_280]] <= test266151307()
                require (32 * mem[_280 + mem[_280]]) + 32 >= 0 and _280 + ceil32(return_data.size) + (32 * mem[_280 + mem[_280]]) + 32 <= test266151307()
                mem[64] = _280 + ceil32(return_data.size) + (32 * mem[_280 + mem[_280]]) + 32
                mem[_280 + ceil32(return_data.size)] = _282
                require return_data.size >= _281 + (32 * _282) + 32
                mem[_280 + ceil32(return_data.size) + 32 len 32 * _282] = mem[_280 + _281 + 32 len 32 * _282]
                if 0 < _282:
                    _303 = mem[_280 + ceil32(return_data.size) + 32]
                    _304 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 < mem[_304]:
                        mem[_304 + 32] = address(arg1)
                        if 1 < mem[_304]:
                            mem[_304 + 64] = address(arg6)
                            mem[_304 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_304 + 100] = _303
                            mem[_304 + 132] = 1
                            mem[_304 + 164] = 160
                            mem[_304 + 260] = mem[_304]
                            idx = 0
                            s = _304 + 32
                            t = _304 + 292
                            while idx < mem[_304]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_304 + 196] = this.address
                            mem[_304 + 228] = block.timestamp
                            require ext_code.size(address(arg9))
                            call address(arg9).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _304 + (32 * mem[_304]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _320 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_320] <= test266151307()
                            require _320 + return_data.size > _320 + mem[_320] + 31
                            require mem[_320 + mem[_320]] <= test266151307()
                            require (32 * mem[_320 + mem[_320]]) + 32 >= 0 and _320 + ceil32(return_data.size) + (32 * mem[_320 + mem[_320]]) + 32 <= test266151307()
                            require return_data.size >= mem[_320] + (32 * mem[_320 + mem[_320]]) + 32
                            if 1 < mem[_320 + mem[_320]]:
    revert
}

function sub_bda66b61(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 == address(arg5)
    require arg8 == address(arg8)
    mem[100] = address(arg8)
    mem[132] = arg6
    require ext_code.size(address(arg5))
    call address(arg5).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg8), arg6
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = address(arg5)
    mem[ceil32(return_data.size) + 160] = address(arg1)
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg6
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
    require ext_code.size(address(arg8))
    call address(arg8).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg6, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _96 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 + 223
    _97 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]
    require return_data.size >= _96 + (32 * _97) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _97] = mem[ceil32(return_data.size) + _96 + 224 len 32 * _97]
    if 1 < _97:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_197] < arg4:
            revert with 0, 'Manager: tokenIn balance not sufficient'
        mem[mem[64] + 4] = address(arg3)
        mem[mem[64] + 36] = arg4
        require ext_code.size(address(arg1))
        call address(arg1).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_203] == bool(mem[_203])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _207 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _208 = mem[_207]
        mem[mem[64] + 4] = arg4
        require ext_code.size(address(arg3))
        call address(arg3).mint(uint256 rg1) with:
             gas gas_remaining wei
            args arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_211]:
            revert with 0, 'Failed to mint cToken'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _217 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _208 > mem[_217]:
            revert with 0, 'SafeMath: subtraction overflow'
        _221 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 < mem[_221]:
            mem[_221 + 32] = address(arg3)
            mem[_221 + 64] = 0xc299823800000000000000000000000000000000000000000000000000000000
            mem[_221 + 68] = 32
            mem[_221 + 100] = mem[_221]
            idx = 0
            s = _221 + 32
            t = _221 + 132
            while idx < mem[_221]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(comptrollerAddress)
            call comptrollerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _221 + (32 * mem[_221]) + -mem[64] + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _293 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _294 = mem[_293]
            require mem[_293] <= test266151307()
            require _293 + return_data.size > _293 + mem[_293] + 31
            _295 = mem[_293 + mem[_293]]
            require mem[_293 + mem[_293]] <= test266151307()
            require (32 * mem[_293 + mem[_293]]) + 32 >= 0 and _293 + ceil32(return_data.size) + (32 * mem[_293 + mem[_293]]) + 32 <= test266151307()
            mem[64] = _293 + ceil32(return_data.size) + (32 * mem[_293 + mem[_293]]) + 32
            mem[_293 + ceil32(return_data.size)] = _295
            require return_data.size >= _294 + (32 * _295) + 32
            mem[_293 + ceil32(return_data.size) + 32 len 32 * _295] = mem[_293 + _294 + 32 len 32 * _295]
            if 0 < _295:
                if mem[_293 + ceil32(return_data.size) + 32] != 0:
                    revert with 0, 'Comptroller.enterMarkets failed.'
                if arg7 + arg6 < arg6:
                    revert with 0, 'SafeMath: addition overflow'
                _366 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 < mem[_366]:
                    mem[_366 + 32] = address(arg2)
                    if 1 < mem[_366]:
                        mem[_366 + 64] = address(arg5)
                        mem[_366 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[_366 + 100] = arg7 + arg6
                        mem[_366 + 132] = 64
                        mem[_366 + 164] = mem[_366]
                        idx = 0
                        s = _366 + 32
                        t = _366 + 196
                        while idx < mem[_366]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg8))
                        staticcall address(arg8).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _366 + (32 * mem[_366]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _425 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _426 = mem[_425]
                        require mem[_425] <= test266151307()
                        require _425 + return_data.size > _425 + mem[_425] + 31
                        _427 = mem[_425 + mem[_425]]
                        require mem[_425 + mem[_425]] <= test266151307()
                        require (32 * mem[_425 + mem[_425]]) + 32 >= 0 and _425 + ceil32(return_data.size) + (32 * mem[_425 + mem[_425]]) + 32 <= test266151307()
                        mem[64] = _425 + ceil32(return_data.size) + (32 * mem[_425 + mem[_425]]) + 32
                        mem[_425 + ceil32(return_data.size)] = _427
                        require return_data.size >= _426 + (32 * _427) + 32
                        mem[_425 + ceil32(return_data.size) + 32 len 32 * _427] = mem[_425 + _426 + 32 len 32 * _427]
                        if 0 < _427:
                            _476 = mem[_425 + ceil32(return_data.size) + 32]
                            require ext_code.size(address(arg3))
                            call address(arg3).underlying() with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _479 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _480 = mem[_479]
                            require mem[_479] == mem[_479 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_480))
                            staticcall address(_480).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _483 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _484 = mem[_483]
                            mem[mem[64] + 4] = _476
                            require ext_code.size(address(arg3))
                            call address(arg3).borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args _476
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _487 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_487]:
                                revert with 0, 'Failed to borrow from cToken'
                            require ext_code.size(address(arg3))
                            call address(arg3).underlying() with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _493 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _494 = mem[_493]
                            require mem[_493] == mem[_493 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_494))
                            staticcall address(_494).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _497 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _498 = mem[_497]
                            if _484 > mem[_497]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[mem[64] + 4] = address(arg8)
                            mem[mem[64] + 36] = _498 - _484
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(arg8), _498 - _484
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _503 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_503] == bool(mem[_503])
                            _505 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 < mem[_505]:
                                mem[_505 + 32] = address(arg2)
                                if 1 < mem[_505]:
                                    mem[_505 + 64] = address(arg5)
                                    mem[_505 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_505 + 100] = _498 - _484
                                    mem[_505 + 132] = 1
                                    mem[_505 + 164] = 160
                                    mem[_505 + 260] = mem[_505]
                                    idx = 0
                                    s = _505 + 32
                                    t = _505 + 292
                                    while idx < mem[_505]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_505 + 196] = this.address
                                    mem[_505 + 228] = block.timestamp
                                    require ext_code.size(address(arg8))
                                    call address(arg8).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _505 + (32 * mem[_505]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _521 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_521] <= test266151307()
                                    require _521 + return_data.size > _521 + mem[_521] + 31
                                    require mem[_521 + mem[_521]] <= test266151307()
                                    require (32 * mem[_521 + mem[_521]]) + 32 >= 0 and _521 + ceil32(return_data.size) + (32 * mem[_521 + mem[_521]]) + 32 <= test266151307()
                                    require return_data.size >= mem[_521] + (32 * mem[_521 + mem[_521]]) + 32
                                    if 1 < mem[_521 + mem[_521]]:
    revert
}

function sub_0fafb25d(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0, 'ChadBit: Approve first sir'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg4
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg4
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not arg4:
        if arg4 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg6)
        mem[(2 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = -arg4
        mem[(2 * ceil32(return_data.size)) + 228] = 64
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg7))
        staticcall address(arg7).getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args -arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1090 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -arg4) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -arg4) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -arg4) >> 32 + 223
        _1092 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -arg4) >> 32 + 192]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -arg4) >> 32 + 192] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -arg4) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -arg4) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -arg4) >> 32 + 192]) + 224
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -arg4) >> 32 + 192]
        require return_data.size >= _1090 + (32 * _1092) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _1092] = mem[(2 * ceil32(return_data.size)) + _1090 + 224 len 32 * _1092]
        require 0 < _1092
        _2144 = mem[(4 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = _2144
        require ext_code.size(stor12)
        staticcall stor12.flashFee(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(arg6), _2144
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2150 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2152 = mem[_2150]
        if mem[_2150] + _2144 < _2144:
            revert with 0, 'SafeMath: addition overflow'
        _2158 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_2158]
        mem[_2158 + 32] = address(arg2)
        require 1 < mem[_2158]
        mem[_2158 + 64] = address(arg6)
        mem[_2158 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[_2158 + 100] = _2152 + _2144
        mem[_2158 + 132] = 64
        mem[_2158 + 164] = mem[_2158]
        idx = 0
        s = _2158 + 32
        t = _2158 + 196
        while idx < mem[_2158]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg7))
        staticcall address(arg7).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2158 + (32 * mem[_2158]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3188 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3190 = mem[_3188]
        require mem[_3188] <= test266151307()
        require _3188 + return_data.size > _3188 + mem[_3188] + 31
        _3192 = mem[_3188 + mem[_3188]]
        require mem[_3188 + mem[_3188]] <= test266151307()
        require (32 * mem[_3188 + mem[_3188]]) + 32 >= 0 and _3188 + ceil32(return_data.size) + (32 * mem[_3188 + mem[_3188]]) + 32 <= test266151307()
        mem[64] = _3188 + ceil32(return_data.size) + (32 * mem[_3188 + mem[_3188]]) + 32
        mem[_3188 + ceil32(return_data.size)] = _3192
        require return_data.size >= _3190 + (32 * _3192) + 32
        mem[_3188 + ceil32(return_data.size) + 32 len 32 * _3192] = mem[_3188 + _3190 + 32 len 32 * _3192]
        require 0 < _3192
        _4204 = mem[_3188 + ceil32(return_data.size) + 32]
        _4206 = mem[64]
        mem[64] = mem[64] + 288
        mem[_4206] = 0
        mem[_4206 + 32] = 0
        mem[_4206 + 64] = 0
        mem[_4206 + 96] = 0
        mem[_4206 + 128] = 0
        mem[_4206 + 160] = 0
        mem[_4206 + 192] = 0
        mem[_4206 + 224] = 0
        mem[_4206 + 256] = 0
        _4217 = mem[64]
        mem[64] = mem[64] + 288
        mem[_4217] = sub_6bb675ed.length
        mem[_4217 + 32] = address(arg1)
        mem[_4217 + 64] = address(arg2)
        mem[_4217 + 96] = address(arg3)
        mem[_4217 + 128] = 0
        mem[_4217 + 160] = _4204
        mem[_4217 + 192] = 0
        mem[_4217 + 224] = _4204
        mem[_4217 + 256] = block.timestamp
        sub_6bb675ed.length++
        mem[0] = 14
        sub_6bb675ed[sub_6bb675ed.length].field_0 = sub_6bb675ed.length
        storBB7B[stor14.length] = address(arg1)
        storBB7B[stor14.length] = address(arg2)
        storBB7B[stor14.length] = address(arg3)
        storBB7B[stor14.length] = 0
        storBB7B[stor14.length] = _4204
        storBB7B[stor14.length] = 0
        storBB7B[stor14.length] = _4204
        storBB7B[stor14.length] = block.timestamp
        _4228 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4228] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor5[stor14.length]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(msg.sender)][1][stor14.length]:
            mem[0] = sub_6bb675ed.length
            mem[32] = 5
            if stor5[stor14.length]:
                require stor5[stor14.length] - 1 < tokenByIndex.length
                mem[0] = 4
                tokenByIndex[stor5[stor14.length] - 1].field_256 = msg.sender
                tokenByIndex[stor5[stor14.length] - 1].field_416 = 0
                emit Transfer(0, msg.sender, sub_6bb675ed.length);
                if ext_code.size(msg.sender):
                    _4289 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5235 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4289 + 196] = 50
                    mem[_4289 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5299 = mem[_5235]
                    mem[_4289 + 292 len ceil32(mem[_5235])] = mem[_5235 + 32 len ceil32(mem[_5235])]
                    if ceil32(_5299) > _5299:
                        mem[_5299 + _4289 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4289 + 296 len _5299 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4289 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4289 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4289 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4289 + 324] == Mask(32, 224, mem[_4289 + 324])
                        if Mask(32, 224, mem[_4289 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                _4261 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4261] = sub_6bb675ed.length
                mem[_4261 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = sub_6bb675ed.length
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = sub_6bb675ed.length
                mem[32] = 5
                stor5[stor14.length] = tokenByIndex.length
                emit Transfer(0, msg.sender, sub_6bb675ed.length);
                if ext_code.size(msg.sender):
                    _4285 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5241 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4285 + 196] = 50
                    mem[_4285 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5301 = mem[_5241]
                    mem[_4285 + 292 len ceil32(mem[_5241])] = mem[_5241 + 32 len ceil32(mem[_5241])]
                    if ceil32(_5301) > _5301:
                        mem[_5301 + _4285 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4285 + 296 len _5301 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4285 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4285 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4285 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4285 + 324] == Mask(32, 224, mem[_4285 + 324])
                        if Mask(32, 224, mem[_4285 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            tokenOfOwnerByIndex[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = sub_6bb675ed.length
            tokenOfOwnerByIndex[address(msg.sender)][1][stor14.length] = tokenOfOwnerByIndex[address(msg.sender)]
            mem[0] = sub_6bb675ed.length
            mem[32] = 5
            if stor5[stor14.length]:
                require stor5[stor14.length] - 1 < tokenByIndex.length
                mem[0] = 4
                tokenByIndex[stor5[stor14.length] - 1].field_256 = msg.sender
                tokenByIndex[stor5[stor14.length] - 1].field_416 = 0
                emit Transfer(0, msg.sender, sub_6bb675ed.length);
                if ext_code.size(msg.sender):
                    _4290 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5247 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4290 + 196] = 50
                    mem[_4290 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5303 = mem[_5247]
                    mem[_4290 + 292 len ceil32(mem[_5247])] = mem[_5247 + 32 len ceil32(mem[_5247])]
                    if ceil32(_5303) > _5303:
                        mem[_5303 + _4290 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4290 + 296 len _5303 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4290 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4290 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4290 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4290 + 324] == Mask(32, 224, mem[_4290 + 324])
                        if Mask(32, 224, mem[_4290 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                _4266 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4266] = sub_6bb675ed.length
                mem[_4266 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = sub_6bb675ed.length
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = sub_6bb675ed.length
                mem[32] = 5
                stor5[stor14.length] = tokenByIndex.length
                emit Transfer(0, msg.sender, sub_6bb675ed.length);
                if ext_code.size(msg.sender):
                    _4286 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5253 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4286 + 196] = 50
                    mem[_4286 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5305 = mem[_5253]
                    mem[_4286 + 292 len ceil32(mem[_5253])] = mem[_5253 + 32 len ceil32(mem[_5253])]
                    if ceil32(_5305) > _5305:
                        mem[_5305 + _4286 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4286 + 296 len _5305 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4286 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4286 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4286 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4286 + 324] == Mask(32, 224, mem[_4286 + 324])
                        if Mask(32, 224, mem[_4286 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        if arg5 * arg4 / arg4 != arg5:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg4 > arg5 * arg4 / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg6)
        mem[(2 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = (arg5 * arg4 / 100) - arg4
        mem[(2 * ceil32(return_data.size)) + 228] = 64
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg7))
        staticcall address(arg7).getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args (arg5 * arg4 / 100) - arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1089 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 223
        _1091 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 192]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 192] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 192]) + 224
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 192]
        require return_data.size >= _1089 + (32 * _1091) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _1091] = mem[(2 * ceil32(return_data.size)) + _1089 + 224 len 32 * _1091]
        require 0 < _1091
        _2143 = mem[(4 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = _2143
        require ext_code.size(stor12)
        staticcall stor12.flashFee(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(arg6), _2143
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2149 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2151 = mem[_2149]
        if mem[_2149] + _2143 < _2143:
            revert with 0, 'SafeMath: addition overflow'
        _2155 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_2155]
        mem[_2155 + 32] = address(arg2)
        require 1 < mem[_2155]
        mem[_2155 + 64] = address(arg6)
        mem[_2155 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[_2155 + 100] = _2151 + _2143
        mem[_2155 + 132] = 64
        mem[_2155 + 164] = mem[_2155]
        idx = 0
        s = _2155 + 32
        t = _2155 + 196
        while idx < mem[_2155]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg7))
        staticcall address(arg7).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2155 + (32 * mem[_2155]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3187 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3189 = mem[_3187]
        require mem[_3187] <= test266151307()
        require _3187 + return_data.size > _3187 + mem[_3187] + 31
        _3191 = mem[_3187 + mem[_3187]]
        require mem[_3187 + mem[_3187]] <= test266151307()
        require (32 * mem[_3187 + mem[_3187]]) + 32 >= 0 and _3187 + ceil32(return_data.size) + (32 * mem[_3187 + mem[_3187]]) + 32 <= test266151307()
        mem[64] = _3187 + ceil32(return_data.size) + (32 * mem[_3187 + mem[_3187]]) + 32
        mem[_3187 + ceil32(return_data.size)] = _3191
        require return_data.size >= _3189 + (32 * _3191) + 32
        mem[_3187 + ceil32(return_data.size) + 32 len 32 * _3191] = mem[_3187 + _3189 + 32 len 32 * _3191]
        require 0 < _3191
        _4203 = mem[_3187 + ceil32(return_data.size) + 32]
        _4205 = mem[64]
        mem[64] = mem[64] + 288
        mem[_4205] = 0
        mem[_4205 + 32] = 0
        mem[_4205 + 64] = 0
        mem[_4205 + 96] = 0
        mem[_4205 + 128] = 0
        mem[_4205 + 160] = 0
        mem[_4205 + 192] = 0
        mem[_4205 + 224] = 0
        mem[_4205 + 256] = 0
        _4207 = mem[64]
        mem[64] = mem[64] + 288
        mem[_4207] = sub_6bb675ed.length
        mem[_4207 + 32] = address(arg1)
        mem[_4207 + 64] = address(arg2)
        mem[_4207 + 96] = address(arg3)
        mem[_4207 + 128] = arg5 * arg4 / 100
        mem[_4207 + 160] = _4203
        mem[_4207 + 192] = arg5 * arg4 / 100
        mem[_4207 + 224] = _4203
        mem[_4207 + 256] = block.timestamp
        sub_6bb675ed.length++
        mem[0] = 14
        sub_6bb675ed[sub_6bb675ed.length].field_0 = sub_6bb675ed.length
        storBB7B[stor14.length] = address(arg1)
        storBB7B[stor14.length] = address(arg2)
        storBB7B[stor14.length] = address(arg3)
        storBB7B[stor14.length] = arg5 * arg4 / 100
        storBB7B[stor14.length] = _4203
        storBB7B[stor14.length] = arg5 * arg4 / 100
        storBB7B[stor14.length] = _4203
        storBB7B[stor14.length] = block.timestamp
        _4227 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4227] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor5[stor14.length]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(msg.sender)][1][stor14.length]:
            mem[0] = sub_6bb675ed.length
            mem[32] = 5
            if stor5[stor14.length]:
                require stor5[stor14.length] - 1 < tokenByIndex.length
                mem[0] = 4
                tokenByIndex[stor5[stor14.length] - 1].field_256 = msg.sender
                tokenByIndex[stor5[stor14.length] - 1].field_416 = 0
                emit Transfer(0, msg.sender, sub_6bb675ed.length);
                if ext_code.size(msg.sender):
                    _4287 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5211 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4287 + 196] = 50
                    mem[_4287 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5291 = mem[_5211]
                    mem[_4287 + 292 len ceil32(mem[_5211])] = mem[_5211 + 32 len ceil32(mem[_5211])]
                    if ceil32(_5291) > _5291:
                        mem[_5291 + _4287 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4287 + 296 len _5291 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4287 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4287 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4287 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4287 + 324] == Mask(32, 224, mem[_4287 + 324])
                        if Mask(32, 224, mem[_4287 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                _4251 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4251] = sub_6bb675ed.length
                mem[_4251 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = sub_6bb675ed.length
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = sub_6bb675ed.length
                mem[32] = 5
                stor5[stor14.length] = tokenByIndex.length
                emit Transfer(0, msg.sender, sub_6bb675ed.length);
                if ext_code.size(msg.sender):
                    _4283 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5217 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4283 + 196] = 50
                    mem[_4283 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5293 = mem[_5217]
                    mem[_4283 + 292 len ceil32(mem[_5217])] = mem[_5217 + 32 len ceil32(mem[_5217])]
                    if ceil32(_5293) > _5293:
                        mem[_5293 + _4283 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4283 + 296 len _5293 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4283 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4283 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4283 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4283 + 324] == Mask(32, 224, mem[_4283 + 324])
                        if Mask(32, 224, mem[_4283 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            tokenOfOwnerByIndex[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = sub_6bb675ed.length
            tokenOfOwnerByIndex[address(msg.sender)][1][stor14.length] = tokenOfOwnerByIndex[address(msg.sender)]
            mem[0] = sub_6bb675ed.length
            mem[32] = 5
            if stor5[stor14.length]:
                require stor5[stor14.length] - 1 < tokenByIndex.length
                mem[0] = 4
                tokenByIndex[stor5[stor14.length] - 1].field_256 = msg.sender
                tokenByIndex[stor5[stor14.length] - 1].field_416 = 0
                emit Transfer(0, msg.sender, sub_6bb675ed.length);
                if ext_code.size(msg.sender):
                    _4288 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5223 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4288 + 196] = 50
                    mem[_4288 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5295 = mem[_5223]
                    mem[_4288 + 292 len ceil32(mem[_5223])] = mem[_5223 + 32 len ceil32(mem[_5223])]
                    if ceil32(_5295) > _5295:
                        mem[_5295 + _4288 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4288 + 296 len _5295 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4288 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4288 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4288 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4288 + 324] == Mask(32, 224, mem[_4288 + 324])
                        if Mask(32, 224, mem[_4288 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                _4256 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4256] = sub_6bb675ed.length
                mem[_4256 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = sub_6bb675ed.length
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = sub_6bb675ed.length
                mem[32] = 5
                stor5[stor14.length] = tokenByIndex.length
                emit Transfer(0, msg.sender, sub_6bb675ed.length);
                if ext_code.size(msg.sender):
                    _4284 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5229 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4284 + 196] = 50
                    mem[_4284 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5297 = mem[_5229]
                    mem[_4284 + 292 len ceil32(mem[_5229])] = mem[_5229 + 32 len ceil32(mem[_5229])]
                    if ceil32(_5297) > _5297:
                        mem[_5297 + _4284 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4284 + 296 len _5297 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4284 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4284 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4284 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4284 + 324] == Mask(32, 224, mem[_4284 + 324])
                        if Mask(32, 224, mem[_4284 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}



}
