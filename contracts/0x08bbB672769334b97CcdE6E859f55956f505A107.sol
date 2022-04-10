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
    call arg1.transfer(address rg1, uint256 rg2) with:
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
    if not arg4:
        if arg4 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[96] = 2
        mem[128] = address(arg1)
        mem[160] = address(arg6)
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = -arg4
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
        require ext_code.size(address(arg7))
        staticcall address(arg7).getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args -arg4, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _1092 = mem[192 len 4], Mask(224, 32, -arg4) >> 32
        require mem[192 len 4], Mask(224, 32, -arg4) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, -arg4) >> 32 + 223
        _1094 = mem[mem[192 len 4], Mask(224, 32, -arg4) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, -arg4) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, -arg4) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, -arg4) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, -arg4) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, -arg4) >> 32 + 192]
        require return_data.size >= _1092 + (32 * _1094) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _1094] = mem[_1092 + 224 len 32 * _1094]
        require 0 < _1094
        _2158 = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = _2158
        require ext_code.size(stor12)
        staticcall stor12.flashFee(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(arg6), _2158
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2164 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2166 = mem[_2164]
        if mem[_2164] + _2158 < _2158:
            revert with 0, 'SafeMath: addition overflow'
        _2172 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_2172]
        mem[_2172 + 32] = address(arg2)
        require 1 < mem[_2172]
        mem[_2172 + 64] = address(arg6)
        mem[_2172 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[_2172 + 100] = _2166 + _2158
        mem[_2172 + 132] = 64
        mem[_2172 + 164] = mem[_2172]
        idx = 0
        s = _2172 + 32
        t = _2172 + 196
        while idx < mem[_2172]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg7))
        staticcall address(arg7).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2172 + (32 * mem[_2172]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3214 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3216 = mem[_3214]
        require mem[_3214] <= test266151307()
        require _3214 + return_data.size > _3214 + mem[_3214] + 31
        _3218 = mem[_3214 + mem[_3214]]
        require mem[_3214 + mem[_3214]] <= test266151307()
        require (32 * mem[_3214 + mem[_3214]]) + 32 >= 0 and _3214 + ceil32(return_data.size) + (32 * mem[_3214 + mem[_3214]]) + 32 <= test266151307()
        mem[64] = _3214 + ceil32(return_data.size) + (32 * mem[_3214 + mem[_3214]]) + 32
        mem[_3214 + ceil32(return_data.size)] = _3218
        require return_data.size >= _3216 + (32 * _3218) + 32
        mem[_3214 + ceil32(return_data.size) + 32 len 32 * _3218] = mem[_3214 + _3216 + 32 len 32 * _3218]
        require 0 < _3218
        _4242 = mem[_3214 + ceil32(return_data.size) + 32]
        _4244 = mem[64]
        mem[64] = mem[64] + 288
        mem[_4244] = 0
        mem[_4244 + 32] = 0
        mem[_4244 + 64] = 0
        mem[_4244 + 96] = 0
        mem[_4244 + 128] = 0
        mem[_4244 + 160] = 0
        mem[_4244 + 192] = 0
        mem[_4244 + 224] = 0
        mem[_4244 + 256] = 0
        _4246 = mem[64]
        mem[64] = mem[64] + 288
        mem[_4246] = sub_6bb675ed.length
        mem[_4246 + 32] = address(arg1)
        mem[_4246 + 64] = address(arg2)
        mem[_4246 + 96] = address(arg3)
        mem[_4246 + 128] = 0
        mem[_4246 + 160] = _4242
        mem[_4246 + 192] = _2158
        mem[_4246 + 224] = _2166
        mem[_4246 + 256] = block.timestamp
        _4248 = mem[64]
        mem[64] = mem[64] + 96
        mem[_4248] = 0
        mem[_4248 + 32] = 0
        mem[_4248 + 64] = 0
        _4250 = mem[64]
        mem[64] = mem[64] + 96
        mem[_4250] = address(arg6)
        mem[_4250 + 32] = _2158
        mem[_4250 + 64] = _2166
        _4252 = mem[64]
        mem[64] = mem[64] + 64
        _4254 = mem[64]
        mem[64] = mem[64] + 288
        mem[_4254] = 0
        mem[_4254 + 32] = 0
        mem[_4254 + 64] = 0
        mem[_4254 + 96] = 0
        mem[_4254 + 128] = 0
        mem[_4254 + 160] = 0
        mem[_4254 + 192] = 0
        mem[_4254 + 224] = 0
        mem[_4254 + 256] = 0
        mem[_4252] = _4254
        _4256 = mem[64]
        mem[64] = mem[64] + 96
        mem[_4256] = 0
        mem[_4256 + 32] = 0
        mem[_4256 + 64] = 0
        mem[_4252 + 32] = _4256
        _4267 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4267] = _4246
        mem[_4267 + 32] = _4250
        sub_6bb675ed.length++
        mem[0] = 14
        sub_6bb675ed[sub_6bb675ed.length].field_0 = sub_6bb675ed.length
        storBB7B[stor14.length] = address(arg1)
        storBB7B[stor14.length] = address(arg2)
        storBB7B[stor14.length] = address(arg3)
        storBB7B[stor14.length] = 0
        storBB7B[stor14.length] = _4242
        storBB7B[stor14.length] = _2158
        storBB7B[stor14.length] = _2166
        storBB7B[stor14.length] = block.timestamp
        _4278 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4278] = 0
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
                    _4339 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5285 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4339 + 196] = 50
                    mem[_4339 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5349 = mem[_5285]
                    mem[_4339 + 292 len ceil32(mem[_5285])] = mem[_5285 + 32 len ceil32(mem[_5285])]
                    if ceil32(_5349) > _5349:
                        mem[_5349 + _4339 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4339 + 296 len _5349 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4339 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4339 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4339 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4339 + 324] == Mask(32, 224, mem[_4339 + 324])
                        if Mask(32, 224, mem[_4339 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                _4311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4311] = sub_6bb675ed.length
                mem[_4311 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = sub_6bb675ed.length
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = sub_6bb675ed.length
                mem[32] = 5
                stor5[stor14.length] = tokenByIndex.length
                emit Transfer(0, msg.sender, sub_6bb675ed.length);
                if ext_code.size(msg.sender):
                    _4335 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5291 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4335 + 196] = 50
                    mem[_4335 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5351 = mem[_5291]
                    mem[_4335 + 292 len ceil32(mem[_5291])] = mem[_5291 + 32 len ceil32(mem[_5291])]
                    if ceil32(_5351) > _5351:
                        mem[_5351 + _4335 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4335 + 296 len _5351 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4335 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4335 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4335 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4335 + 324] == Mask(32, 224, mem[_4335 + 324])
                        if Mask(32, 224, mem[_4335 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                    _4340 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5297 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4340 + 196] = 50
                    mem[_4340 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5353 = mem[_5297]
                    mem[_4340 + 292 len ceil32(mem[_5297])] = mem[_5297 + 32 len ceil32(mem[_5297])]
                    if ceil32(_5353) > _5353:
                        mem[_5353 + _4340 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4340 + 296 len _5353 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4340 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4340 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4340 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4340 + 324] == Mask(32, 224, mem[_4340 + 324])
                        if Mask(32, 224, mem[_4340 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                _4316 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4316] = sub_6bb675ed.length
                mem[_4316 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = sub_6bb675ed.length
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = sub_6bb675ed.length
                mem[32] = 5
                stor5[stor14.length] = tokenByIndex.length
                emit Transfer(0, msg.sender, sub_6bb675ed.length);
                if ext_code.size(msg.sender):
                    _4336 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5303 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4336 + 196] = 50
                    mem[_4336 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5355 = mem[_5303]
                    mem[_4336 + 292 len ceil32(mem[_5303])] = mem[_5303 + 32 len ceil32(mem[_5303])]
                    if ceil32(_5355) > _5355:
                        mem[_5355 + _4336 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4336 + 296 len _5355 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4336 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4336 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4336 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4336 + 324] == Mask(32, 224, mem[_4336 + 324])
                        if Mask(32, 224, mem[_4336 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        if arg5 * arg4 / arg4 != arg5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg4 > arg5 * arg4 / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[96] = 2
        mem[128] = address(arg1)
        mem[160] = address(arg6)
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = (arg5 * arg4 / 100) - arg4
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
        require ext_code.size(address(arg7))
        staticcall address(arg7).getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args (arg5 * arg4 / 100) - arg4, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _1091 = mem[192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32
        require mem[192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 223
        _1093 = mem[mem[192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, (arg5 * arg4 / 100) - arg4) >> 32 + 192]
        require return_data.size >= _1091 + (32 * _1093) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _1093] = mem[_1091 + 224 len 32 * _1093]
        require 0 < _1093
        _2157 = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = _2157
        require ext_code.size(stor12)
        staticcall stor12.flashFee(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(arg6), _2157
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2165 = mem[_2163]
        if mem[_2163] + _2157 < _2157:
            revert with 0, 'SafeMath: addition overflow'
        _2169 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_2169]
        mem[_2169 + 32] = address(arg2)
        require 1 < mem[_2169]
        mem[_2169 + 64] = address(arg6)
        mem[_2169 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[_2169 + 100] = _2165 + _2157
        mem[_2169 + 132] = 64
        mem[_2169 + 164] = mem[_2169]
        idx = 0
        s = _2169 + 32
        t = _2169 + 196
        while idx < mem[_2169]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg7))
        staticcall address(arg7).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2169 + (32 * mem[_2169]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3213 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3215 = mem[_3213]
        require mem[_3213] <= test266151307()
        require _3213 + return_data.size > _3213 + mem[_3213] + 31
        _3217 = mem[_3213 + mem[_3213]]
        require mem[_3213 + mem[_3213]] <= test266151307()
        require (32 * mem[_3213 + mem[_3213]]) + 32 >= 0 and _3213 + ceil32(return_data.size) + (32 * mem[_3213 + mem[_3213]]) + 32 <= test266151307()
        mem[64] = _3213 + ceil32(return_data.size) + (32 * mem[_3213 + mem[_3213]]) + 32
        mem[_3213 + ceil32(return_data.size)] = _3217
        require return_data.size >= _3215 + (32 * _3217) + 32
        mem[_3213 + ceil32(return_data.size) + 32 len 32 * _3217] = mem[_3213 + _3215 + 32 len 32 * _3217]
        require 0 < _3217
        _4241 = mem[_3213 + ceil32(return_data.size) + 32]
        _4243 = mem[64]
        mem[64] = mem[64] + 288
        mem[_4243] = 0
        mem[_4243 + 32] = 0
        mem[_4243 + 64] = 0
        mem[_4243 + 96] = 0
        mem[_4243 + 128] = 0
        mem[_4243 + 160] = 0
        mem[_4243 + 192] = 0
        mem[_4243 + 224] = 0
        mem[_4243 + 256] = 0
        _4245 = mem[64]
        mem[64] = mem[64] + 288
        mem[_4245] = sub_6bb675ed.length
        mem[_4245 + 32] = address(arg1)
        mem[_4245 + 64] = address(arg2)
        mem[_4245 + 96] = address(arg3)
        mem[_4245 + 128] = arg5 * arg4 / 100
        mem[_4245 + 160] = _4241
        mem[_4245 + 192] = _2157
        mem[_4245 + 224] = _2165
        mem[_4245 + 256] = block.timestamp
        _4247 = mem[64]
        mem[64] = mem[64] + 96
        mem[_4247] = 0
        mem[_4247 + 32] = 0
        mem[_4247 + 64] = 0
        _4249 = mem[64]
        mem[64] = mem[64] + 96
        mem[_4249] = address(arg6)
        mem[_4249 + 32] = _2157
        mem[_4249 + 64] = _2165
        _4251 = mem[64]
        mem[64] = mem[64] + 64
        _4253 = mem[64]
        mem[64] = mem[64] + 288
        mem[_4253] = 0
        mem[_4253 + 32] = 0
        mem[_4253 + 64] = 0
        mem[_4253 + 96] = 0
        mem[_4253 + 128] = 0
        mem[_4253 + 160] = 0
        mem[_4253 + 192] = 0
        mem[_4253 + 224] = 0
        mem[_4253 + 256] = 0
        mem[_4251] = _4253
        _4255 = mem[64]
        mem[64] = mem[64] + 96
        mem[_4255] = 0
        mem[_4255 + 32] = 0
        mem[_4255 + 64] = 0
        mem[_4251 + 32] = _4255
        _4257 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4257] = _4245
        mem[_4257 + 32] = _4249
        sub_6bb675ed.length++
        mem[0] = 14
        sub_6bb675ed[sub_6bb675ed.length].field_0 = sub_6bb675ed.length
        storBB7B[stor14.length] = address(arg1)
        storBB7B[stor14.length] = address(arg2)
        storBB7B[stor14.length] = address(arg3)
        storBB7B[stor14.length] = arg5 * arg4 / 100
        storBB7B[stor14.length] = _4241
        storBB7B[stor14.length] = _2157
        storBB7B[stor14.length] = _2165
        storBB7B[stor14.length] = block.timestamp
        _4277 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4277] = 0
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
                    _4337 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5261 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4337 + 196] = 50
                    mem[_4337 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5341 = mem[_5261]
                    mem[_4337 + 292 len ceil32(mem[_5261])] = mem[_5261 + 32 len ceil32(mem[_5261])]
                    if ceil32(_5341) > _5341:
                        mem[_5341 + _4337 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4337 + 296 len _5341 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4337 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4337 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4337 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4337 + 324] == Mask(32, 224, mem[_4337 + 324])
                        if Mask(32, 224, mem[_4337 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                _4301 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4301] = sub_6bb675ed.length
                mem[_4301 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = sub_6bb675ed.length
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = sub_6bb675ed.length
                mem[32] = 5
                stor5[stor14.length] = tokenByIndex.length
                emit Transfer(0, msg.sender, sub_6bb675ed.length);
                if ext_code.size(msg.sender):
                    _4333 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5267 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4333 + 196] = 50
                    mem[_4333 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5343 = mem[_5267]
                    mem[_4333 + 292 len ceil32(mem[_5267])] = mem[_5267 + 32 len ceil32(mem[_5267])]
                    if ceil32(_5343) > _5343:
                        mem[_5343 + _4333 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4333 + 296 len _5343 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4333 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4333 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4333 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4333 + 324] == Mask(32, 224, mem[_4333 + 324])
                        if Mask(32, 224, mem[_4333 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                    _4338 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5273 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4338 + 196] = 50
                    mem[_4338 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5345 = mem[_5273]
                    mem[_4338 + 292 len ceil32(mem[_5273])] = mem[_5273 + 32 len ceil32(mem[_5273])]
                    if ceil32(_5345) > _5345:
                        mem[_5345 + _4338 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4338 + 296 len _5345 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4338 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4338 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4338 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4338 + 324] == Mask(32, 224, mem[_4338 + 324])
                        if Mask(32, 224, mem[_4338 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                _4306 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4306] = sub_6bb675ed.length
                mem[_4306 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = sub_6bb675ed.length
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = sub_6bb675ed.length
                mem[32] = 5
                stor5[stor14.length] = tokenByIndex.length
                emit Transfer(0, msg.sender, sub_6bb675ed.length);
                if ext_code.size(msg.sender):
                    _4334 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = sub_6bb675ed.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196 len 0] = None
                    _5279 = mem[64]
                    mem[mem[64]] = 164
                    mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[64] = mem[64] + 292
                    mem[_4334 + 196] = 50
                    mem[_4334 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _5347 = mem[_5279]
                    mem[_4334 + 292 len ceil32(mem[_5279])] = mem[_5279 + 32 len ceil32(mem[_5279])]
                    if ceil32(_5347) > _5347:
                        mem[_5347 + _4334 + 292] = 0
                    call msg.sender with:
                         gas gas_remaining wei
                        args mem[_4334 + 296 len _5347 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4334 + 278 len 14] >> 144,
                                        0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_4334 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_4334 + 278 len 14] >> 144,
                                        0
                        require return_data.size >= 32
                        require mem[_4334 + 324] == Mask(32, 224, mem[_4334 + 324])
                        if Mask(32, 224, mem[_4334 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}



}
