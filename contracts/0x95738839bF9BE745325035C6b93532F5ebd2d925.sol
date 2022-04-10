contract main {




// =====================  Runtime code  =====================


#
#  - sub_0fafb25d(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
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
    staticcall arg1.underlying() with:
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
    call arg1.0xa0712d68 with:
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not stor5[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    mem[ceil32(arg4.length) + 128] = 41
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 201 len 23] >> 72,
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
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 297 len 23] >> 72,
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
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 393 len 23] >> 72,
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
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            mem[ceil32(arg4.length) + 580] = arg4.length
            mem[ceil32(arg4.length) + 612 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[arg4.length + ceil32(arg4.length) + 612] = 0
            mem[(2 * ceil32(arg4.length)) + 612] = 50
            mem[(2 * ceil32(arg4.length)) + 644 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(arg2):
                mem[(2 * ceil32(arg4.length)) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 712] = 32
                mem[(2 * ceil32(arg4.length)) + 744] = 29
                mem[(2 * ceil32(arg4.length)) + 776] = 'Address: call to non-contract'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 708
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 708 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 612 len floor32(ceil32(arg4.length) + 195) + -ceil32(arg4.length) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(4 * ceil32(arg4.length)) + 872] = 0
            call arg2.mem[ceil32(arg4.length) + floor32(ceil32(arg4.length) + 195) + 416 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg4.length)) + 712 len (6 * ceil32(arg4.length)) + 160]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 694 len 14] >> 144,
                                0
                require arg4.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[(2 * ceil32(arg4.length)) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 694 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[(2 * ceil32(arg4.length)) + 740] == Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 740])
                if Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            mem[ceil32(arg4.length) + 644] = arg4.length
            mem[ceil32(arg4.length) + 676 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[arg4.length + ceil32(arg4.length) + 676] = 0
            mem[(2 * ceil32(arg4.length)) + 676] = 50
            mem[(2 * ceil32(arg4.length)) + 708 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(arg2):
                mem[(2 * ceil32(arg4.length)) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 776] = 32
                mem[(2 * ceil32(arg4.length)) + 808] = 29
                mem[(2 * ceil32(arg4.length)) + 840] = 'Address: call to non-contract'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 772
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 772 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 676 len floor32(ceil32(arg4.length) + 195) + -ceil32(arg4.length) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(4 * ceil32(arg4.length)) + 936] = 0
            call arg2.mem[ceil32(arg4.length) + floor32(ceil32(arg4.length) + 195) + 480 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg4.length)) + 776 len (6 * ceil32(arg4.length)) + 160]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 758 len 14] >> 144,
                                0
                require arg4.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[(2 * ceil32(arg4.length)) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 758 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[(2 * ceil32(arg4.length)) + 804] == Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 804])
                if Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
    _90 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223
    _91 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    require return_data.size >= _90 + (32 * _91) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _91] = mem[ceil32(return_data.size) + _90 + 224 len 32 * _91]
    if 1 < _91:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_185] < arg5:
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
        _191 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_191] == bool(mem[_191])
        require ext_code.size(address(arg3))
        staticcall address(arg3).underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _195 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _196 = mem[_195]
        require mem[_195] == mem[_195 + 12 len 20]
        mem[mem[64] + 4] = address(arg3)
        mem[mem[64] + 36] = arg5
        require ext_code.size(address(_196))
        call address(_196).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), arg5
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _199 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_199] == bool(mem[_199])
        mem[mem[64] + 4] = arg5
        require ext_code.size(address(arg3))
        call address(arg3).repayBorrow(uint256 rg1) with:
             gas gas_remaining wei
            args arg5
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_203]:
            revert with 0, 'Failed to repay borrow from cToken'
        mem[mem[64] + 4] = address(arg3)
        mem[mem[64] + 36] = arg4
        require ext_code.size(address(arg3))
        call address(arg3).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _209 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_209] == bool(mem[_209])
        mem[mem[64] + 4] = address(arg3)
        mem[mem[64] + 36] = arg4
        require ext_code.size(address(arg3))
        call address(arg3).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _213 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_213] == bool(mem[_213])
        require ext_code.size(address(arg3))
        staticcall address(arg3).underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _217 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _218 = mem[_217]
        require mem[_217] == mem[_217 + 12 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_218))
        staticcall address(_218).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _221 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _222 = mem[_221]
        mem[mem[64] + 4] = arg4
        require ext_code.size(address(arg3))
        call address(arg3).redeem(uint256 rg1) with:
             gas gas_remaining wei
            args arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _225 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_225]:
            revert with 0, 'Failed to redeem cToken'
        require ext_code.size(address(arg3))
        staticcall address(arg3).underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _232 = mem[_231]
        require mem[_231] == mem[_231 + 12 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_232))
        staticcall address(_232).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _235 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_235] > _222:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg8 + arg7 < arg7:
            revert with 0, 'SafeMath: addition overflow'
        _240 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 < mem[_240]:
            mem[_240 + 32] = address(arg1)
            if 1 < mem[_240]:
                mem[_240 + 64] = address(arg6)
                mem[_240 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[_240 + 100] = arg8 + arg7
                mem[_240 + 132] = 64
                mem[_240 + 164] = mem[_240]
                idx = 0
                s = _240 + 32
                t = _240 + 196
                while idx < mem[_240]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg9))
                staticcall address(arg9).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _240 + (32 * mem[_240]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _271 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _272 = mem[_271]
                require mem[_271] <= test266151307()
                require _271 + return_data.size > _271 + mem[_271] + 31
                _273 = mem[_271 + mem[_271]]
                require mem[_271 + mem[_271]] <= test266151307()
                require (32 * mem[_271 + mem[_271]]) + 32 >= 0 and _271 + ceil32(return_data.size) + (32 * mem[_271 + mem[_271]]) + 32 <= test266151307()
                mem[64] = _271 + ceil32(return_data.size) + (32 * mem[_271 + mem[_271]]) + 32
                mem[_271 + ceil32(return_data.size)] = _273
                require return_data.size >= _272 + (32 * _273) + 32
                mem[_271 + ceil32(return_data.size) + 32 len 32 * _273] = mem[_271 + _272 + 32 len 32 * _273]
                if 0 < _273:
                    _294 = mem[_271 + ceil32(return_data.size) + 32]
                    _295 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 < mem[_295]:
                        mem[_295 + 32] = address(arg1)
                        if 1 < mem[_295]:
                            mem[_295 + 64] = address(arg6)
                            mem[_295 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_295 + 100] = _294
                            mem[_295 + 132] = 1
                            mem[_295 + 164] = 160
                            mem[_295 + 260] = mem[_295]
                            idx = 0
                            s = _295 + 32
                            t = _295 + 292
                            while idx < mem[_295]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_295 + 196] = this.address
                            mem[_295 + 228] = block.timestamp
                            require ext_code.size(address(arg9))
                            call address(arg9).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _295 + (32 * mem[_295]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _311 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_311] <= test266151307()
                            require _311 + return_data.size > _311 + mem[_311] + 31
                            require mem[_311 + mem[_311]] <= test266151307()
                            require (32 * mem[_311 + mem[_311]]) + 32 >= 0 and _311 + ceil32(return_data.size) + (32 * mem[_311 + mem[_311]]) + 32 <= test266151307()
                            require return_data.size >= mem[_311] + (32 * mem[_311 + mem[_311]]) + 32
                            if 1 < mem[_311 + mem[_311]]:
    revert
}

function sub_d1ab544d(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 == address(arg6)
    require arg8 == address(arg8)
    if address(arg6) == address(arg1):
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg4:
            revert with 0, 'Manager: tokenIn balance not sufficient'
        mem[ceil32(return_data.size) + 100] = address(arg3)
        mem[ceil32(return_data.size) + 132] = arg4
        require ext_code.size(address(arg1))
        call address(arg1).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), arg4
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
        mem[(4 * ceil32(return_data.size)) + 132] = arg4
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), arg4
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
        mem[(7 * ceil32(return_data.size)) + 100] = arg4
        require ext_code.size(address(arg3))
        call address(arg3).0xa0712d68 with:
             gas gas_remaining wei
            args arg4
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
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.enterMarkets(address[] rg1) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[(10 * ceil32(return_data.size)) + 228])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _182 = mem[(10 * ceil32(return_data.size)) + 160 len 4], 0
        require mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 <= test266151307()
        require (10 * ceil32(return_data.size)) + return_data.size + 160 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 191
        _184 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]
        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160] <= test266151307()
        require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 192 <= test266151307()
        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 192
        mem[(11 * ceil32(return_data.size)) + 160] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]
        require return_data.size >= _182 + (32 * _184) + 32
        mem[(11 * ceil32(return_data.size)) + 192 len 32 * _184] = mem[(10 * ceil32(return_data.size)) + _182 + 192 len 32 * _184]
        if 0 < _184:
            if mem[(11 * ceil32(return_data.size)) + 192] != 0:
                revert with 0, 'Comptroller.enterMarkets failed.'
            require ext_code.size(address(arg3))
            staticcall address(arg3).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _336 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _338 = mem[_336]
            require mem[_336] == mem[_336 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_338))
            staticcall address(_338).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _348 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _350 = mem[_348]
            mem[mem[64] + 4] = arg5
            require ext_code.size(address(arg3))
            call address(arg3).borrow(uint256 rg1) with:
                 gas gas_remaining wei
                args arg5
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _355 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_355]:
                revert with 0, 'Failed to borrow from cToken'
            require ext_code.size(address(arg3))
            staticcall address(arg3).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _363 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _365 = mem[_363]
            require mem[_363] == mem[_363 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_365))
            staticcall address(_365).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _373 = mem[_371]
            if _350 > mem[_371]:
                revert with 0, 'SafeMath: subtraction overflow'
            if address(arg2) == address(arg6):
            mem[mem[64] + 4] = address(arg8)
            mem[mem[64] + 36] = _373 - _350
            require ext_code.size(address(arg2))
            call address(arg2).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg8), _373 - _350
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_384] == bool(mem[_384])
            _391 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 < mem[_391]:
                mem[_391 + 32] = address(arg2)
                if 1 < mem[_391]:
                    mem[_391 + 64] = address(arg6)
                    mem[_391 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_391 + 100] = _373 - _350
                    mem[_391 + 132] = 1
                    mem[_391 + 164] = 160
                    mem[_391 + 260] = mem[_391]
                    idx = 0
                    s = _391 + 32
                    t = _391 + 292
                    while idx < mem[_391]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_391 + 196] = this.address
                    mem[_391 + 228] = block.timestamp
                    require ext_code.size(address(arg8))
                    call address(arg8).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _391 + (32 * mem[_391]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _470 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_470] <= test266151307()
                    require _470 + return_data.size > _470 + mem[_470] + 31
                    require mem[_470 + mem[_470]] <= test266151307()
                    require (32 * mem[_470 + mem[_470]]) + 32 >= 0 and _470 + ceil32(return_data.size) + (32 * mem[_470 + mem[_470]]) + 32 <= test266151307()
                    require return_data.size >= mem[_470] + (32 * mem[_470 + mem[_470]]) + 32
                    if 1 < mem[_470 + mem[_470]]:
    else:
        mem[100] = address(arg8)
        mem[132] = arg7
        require ext_code.size(address(arg6))
        call address(arg6).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg8), arg7
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = address(arg6)
        mem[ceil32(return_data.size) + 160] = address(arg1)
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
        require ext_code.size(address(arg8))
        call address(arg8).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg7, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _183 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223
        _185 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 224
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
        require return_data.size >= _183 + (32 * _185) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _185] = mem[ceil32(return_data.size) + _183 + 224 len 32 * _185]
        if 1 < _185:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _339 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_339] < arg4:
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
            _347 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_347] == bool(mem[_347])
            require ext_code.size(address(arg3))
            staticcall address(arg3).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _356 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _358 = mem[_356]
            require mem[_356] == mem[_356 + 12 len 20]
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = arg4
            require ext_code.size(address(_358))
            call address(_358).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg3), arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _367 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_367] == bool(mem[_367])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _375 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _377 = mem[_375]
            mem[mem[64] + 4] = arg4
            require ext_code.size(address(arg3))
            call address(arg3).0xa0712d68 with:
                 gas gas_remaining wei
                args arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _383 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_383]:
                revert with 0, 'Failed to mint cToken'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _394 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _377 > mem[_394]:
                revert with 0, 'SafeMath: subtraction overflow'
            _403 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 < mem[_403]:
                mem[_403 + 32] = address(arg3)
                mem[_403 + 64] = 0xc299823800000000000000000000000000000000000000000000000000000000
                mem[_403 + 68] = 32
                mem[_403 + 100] = mem[_403]
                idx = 0
                s = _403 + 32
                t = _403 + 132
                while idx < mem[_403]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(comptrollerAddress)
                call comptrollerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _403 + (32 * mem[_403]) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _471 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _473 = mem[_471]
                require mem[_471] <= test266151307()
                require _471 + return_data.size > _471 + mem[_471] + 31
                _475 = mem[_471 + mem[_471]]
                require mem[_471 + mem[_471]] <= test266151307()
                require (32 * mem[_471 + mem[_471]]) + 32 >= 0 and _471 + ceil32(return_data.size) + (32 * mem[_471 + mem[_471]]) + 32 <= test266151307()
                mem[64] = _471 + ceil32(return_data.size) + (32 * mem[_471 + mem[_471]]) + 32
                mem[_471 + ceil32(return_data.size)] = _475
                require return_data.size >= _473 + (32 * _475) + 32
                mem[_471 + ceil32(return_data.size) + 32 len 32 * _475] = mem[_471 + _473 + 32 len 32 * _475]
                if 0 < _475:
                    if mem[_471 + ceil32(return_data.size) + 32] != 0:
                        revert with 0, 'Comptroller.enterMarkets failed.'
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _538 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _539 = mem[_538]
                    require mem[_538] == mem[_538 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_539))
                    staticcall address(_539).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _543 = mem[_542]
                    mem[mem[64] + 4] = arg5
                    require ext_code.size(address(arg3))
                    call address(arg3).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg5
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _546 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_546]:
                        revert with 0, 'Failed to borrow from cToken'
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _552 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _553 = mem[_552]
                    require mem[_552] == mem[_552 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_553))
                    staticcall address(_553).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _556 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _557 = mem[_556]
                    if _543 > mem[_556]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if address(arg2) == address(arg6):
                    mem[mem[64] + 4] = address(arg8)
                    mem[mem[64] + 36] = _557 - _543
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg8), _557 - _543
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _562 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_562] == bool(mem[_562])
                    _564 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 < mem[_564]:
                        mem[_564 + 32] = address(arg2)
                        if 1 < mem[_564]:
                            mem[_564 + 64] = address(arg6)
                            mem[_564 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_564 + 100] = _557 - _543
                            mem[_564 + 132] = 1
                            mem[_564 + 164] = 160
                            mem[_564 + 260] = mem[_564]
                            idx = 0
                            s = _564 + 32
                            t = _564 + 292
                            while idx < mem[_564]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_564 + 196] = this.address
                            mem[_564 + 228] = block.timestamp
                            require ext_code.size(address(arg8))
                            call address(arg8).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _564 + (32 * mem[_564]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _580 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_580] <= test266151307()
                            require _580 + return_data.size > _580 + mem[_580] + 31
                            require mem[_580 + mem[_580]] <= test266151307()
                            require (32 * mem[_580 + mem[_580]]) + 32 >= 0 and _580 + ceil32(return_data.size) + (32 * mem[_580 + mem[_580]]) + 32 <= test266151307()
                            require return_data.size >= mem[_580] + (32 * mem[_580 + mem[_580]]) + 32
                            if 1 < mem[_580 + mem[_580]]:
    revert
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
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[96] = 224
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[128] = 512
    mem[160] = 0
    mem[192] = 0
    require arg5.length >= 448
    require arg5.length >= 288
    mem[736] = cd[(arg5 + 36)]
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    mem[768] = cd[(arg5 + 68)]
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    mem[800] = cd[(arg5 + 100)]
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    mem[832] = cd[(arg5 + 132)]
    mem[864] = cd[(arg5 + 164)]
    mem[896] = cd[(arg5 + 196)]
    mem[928] = cd[(arg5 + 228)]
    mem[960] = cd[(arg5 + 260)]
    mem[992] = cd[(arg5 + 292)]
    mem[608] = 736
    require arg5.length - 288 >= 96
    require cd[(arg5 + 324)] == address(cd[(arg5 + 324)])
    mem[1024] = cd[(arg5 + 324)]
    mem[1056] = cd[(arg5 + 356)]
    mem[1088] = cd[(arg5 + 388)]
    mem[640] = 1024
    require cd[(arg5 + 420)] == address(cd[(arg5 + 420)])
    mem[672] = cd[(arg5 + 420)]
    require cd[(arg5 + 452)] == bool(cd[(arg5 + 452)])
    mem[704] = cd[(arg5 + 452)]
    if bool(cd[(arg5 + 452)]) != 1:
        return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
    if address(cd[(arg5 + 324)]) == address(cd[(arg5 + 68)]):
        mem[1124] = this.address
        require ext_code.size(address(cd[(arg5 + 68)]))
        staticcall address(cd[(arg5 + 68)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[1120] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[(arg5 + 164)]:
            revert with 0, 'Manager: tokenIn balance not sufficient'
        mem[ceil32(return_data.size) + 1124] = address(cd[(arg5 + 132)])
        mem[ceil32(return_data.size) + 1156] = cd[(arg5 + 164)]
        require ext_code.size(address(cd[(arg5 + 68)]))
        call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 132)]), cd[(arg5 + 164)]
        mem[ceil32(return_data.size) + 1120] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(cd[(arg5 + 132)]))
        staticcall address(cd[(arg5 + 132)]).underlying() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 1124] = address(cd[(arg5 + 132)])
        mem[(4 * ceil32(return_data.size)) + 1156] = cd[(arg5 + 164)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 132)]), cd[(arg5 + 164)]
        mem[(4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 1124] = this.address
        require ext_code.size(address(cd[(arg5 + 132)]))
        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 1124] = cd[(arg5 + 164)]
        require ext_code.size(address(cd[(arg5 + 132)]))
        call address(cd[(arg5 + 132)]).0xa0712d68 with:
             gas gas_remaining wei
            args cd[(arg5 + 164)]
        mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Failed to mint cToken'
        mem[(8 * ceil32(return_data.size)) + 1124] = this.address
        require ext_code.size(address(cd[(arg5 + 132)]))
        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[(10 * ceil32(return_data.size)) + 1120] = 1
        mem[(10 * ceil32(return_data.size)) + 1152] = address(cd[(arg5 + 132)])
        mem[(10 * ceil32(return_data.size)) + 1184] = 0xc299823800000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 1188] = 32
        mem[(10 * ceil32(return_data.size)) + 1220] = 1
        idx = 0
        s = (10 * ceil32(return_data.size)) + 1152
        t = (10 * ceil32(return_data.size)) + 1252
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.enterMarkets(address[] rg1) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[(10 * ceil32(return_data.size)) + 1252])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 1184 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 1184
        require return_data.size >= 32
        _158 = mem[(10 * ceil32(return_data.size)) + 1184 len 4], 0
        require mem[(10 * ceil32(return_data.size)) + 1184 len 4], 0 <= test266151307()
        require (10 * ceil32(return_data.size)) + return_data.size + 1184 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1184 len 4], 0 + 1215
        _160 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1184 len 4], 0 + 1184]
        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1184 len 4], 0 + 1184] <= test266151307()
        require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1184 len 4], 0 + 1184]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1184 len 4], 0 + 1184]) + 1216 <= test266151307()
        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1184 len 4], 0 + 1184]) + 1216
        mem[(11 * ceil32(return_data.size)) + 1184] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1184 len 4], 0 + 1184]
        require return_data.size >= _158 + (32 * _160) + 32
        mem[(11 * ceil32(return_data.size)) + 1216 len 32 * _160] = mem[(10 * ceil32(return_data.size)) + _158 + 1216 len 32 * _160]
        if 0 < _160:
            if mem[(11 * ceil32(return_data.size)) + 1216] != 0:
                revert with 0, 'Comptroller.enterMarkets failed.'
            require ext_code.size(address(cd[(arg5 + 132)]))
            staticcall address(cd[(arg5 + 132)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _318 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _320 = mem[_318]
            require mem[_318] == mem[_318 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_320))
            staticcall address(_320).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _330 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _332 = mem[_330]
            mem[mem[64] + 4] = cd[(arg5 + 196)]
            require ext_code.size(address(cd[(arg5 + 132)]))
            call address(cd[(arg5 + 132)]).borrow(uint256 rg1) with:
                 gas gas_remaining wei
                args cd[(arg5 + 196)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _337 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_337]:
                revert with 0, 'Failed to borrow from cToken'
            require ext_code.size(address(cd[(arg5 + 132)]))
            staticcall address(cd[(arg5 + 132)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _345 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _347 = mem[_345]
            require mem[_345] == mem[_345 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_347))
            staticcall address(_347).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _353 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _355 = mem[_353]
            if _332 > mem[_353]:
                revert with 0, 'SafeMath: subtraction overflow'
            if address(cd[(arg5 + 100)]) == address(cd[(arg5 + 324)]):
                return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
            mem[mem[64] + 4] = address(cd[(arg5 + 420)])
            mem[mem[64] + 36] = _355 - _332
            require ext_code.size(address(cd[(arg5 + 100)]))
            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 420)]), _355 - _332
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _368 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_368] == bool(mem[_368])
            _375 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 < mem[_375]:
                mem[_375 + 32] = address(cd[(arg5 + 100)])
                if 1 < mem[_375]:
                    mem[_375 + 64] = address(cd[(arg5 + 324)])
                    mem[_375 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_375 + 100] = _355 - _332
                    mem[_375 + 132] = 1
                    mem[_375 + 164] = 160
                    mem[_375 + 260] = mem[_375]
                    idx = 0
                    s = _375 + 32
                    t = _375 + 292
                    while idx < mem[_375]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_375 + 196] = this.address
                    mem[_375 + 228] = block.timestamp
                    require ext_code.size(address(cd[(arg5 + 420)]))
                    call address(cd[(arg5 + 420)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _375 + (32 * mem[_375]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _460 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_460] <= test266151307()
                    require _460 + return_data.size > _460 + mem[_460] + 31
                    require mem[_460 + mem[_460]] <= test266151307()
                    require (32 * mem[_460 + mem[_460]]) + 32 >= 0 and _460 + ceil32(return_data.size) + (32 * mem[_460 + mem[_460]]) + 32 <= test266151307()
                    require return_data.size >= mem[_460] + (32 * mem[_460 + mem[_460]]) + 32
                    if 1 < mem[_460 + mem[_460]]:
                        return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
    else:
        mem[1124] = address(cd[(arg5 + 420)])
        mem[1156] = cd[(arg5 + 356)]
        require ext_code.size(address(cd[(arg5 + 324)]))
        call address(cd[(arg5 + 324)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 420)]), cd[(arg5 + 356)]
        mem[1120] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 1120] = 2
        mem[ceil32(return_data.size) + 1152] = address(cd[(arg5 + 324)])
        mem[ceil32(return_data.size) + 1184] = address(cd[(arg5 + 68)])
        mem[ceil32(return_data.size) + 1216] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 1220] = cd[(arg5 + 356)]
        mem[ceil32(return_data.size) + 1252] = 1
        mem[ceil32(return_data.size) + 1284] = 160
        mem[ceil32(return_data.size) + 1380] = 2
        idx = 0
        s = ceil32(return_data.size) + 1152
        t = ceil32(return_data.size) + 1412
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 1316] = this.address
        mem[ceil32(return_data.size) + 1348] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 420)]))
        call address(cd[(arg5 + 420)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[(arg5 + 356)], 1, Array(len=2, data=mem[ceil32(return_data.size) + 1412 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 1216 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 1216
        require return_data.size >= 32
        _159 = mem[ceil32(return_data.size) + 1216 len 4], Mask(224, 32, cd[(arg5 + 356)]) >> 32
        require mem[ceil32(return_data.size) + 1216 len 4], Mask(224, 32, cd[(arg5 + 356)]) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 1216 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 1216 len 4], Mask(224, 32, cd[(arg5 + 356)]) >> 32 + 1247
        _161 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1216 len 4], Mask(224, 32, cd[(arg5 + 356)]) >> 32 + 1216]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1216 len 4], Mask(224, 32, cd[(arg5 + 356)]) >> 32 + 1216] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1216 len 4], Mask(224, 32, cd[(arg5 + 356)]) >> 32 + 1216]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1216 len 4], Mask(224, 32, cd[(arg5 + 356)]) >> 32 + 1216]) + 1248 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1216 len 4], Mask(224, 32, cd[(arg5 + 356)]) >> 32 + 1216]) + 1248
        mem[(2 * ceil32(return_data.size)) + 1216] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1216 len 4], Mask(224, 32, cd[(arg5 + 356)]) >> 32 + 1216]
        require return_data.size >= _159 + (32 * _161) + 32
        mem[(2 * ceil32(return_data.size)) + 1248 len 32 * _161] = mem[ceil32(return_data.size) + _159 + 1248 len 32 * _161]
        if 1 < _161:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 68)]))
            staticcall address(cd[(arg5 + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _321 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_321] < cd[(arg5 + 164)]:
                revert with 0, 'Manager: tokenIn balance not sufficient'
            mem[mem[64] + 4] = address(cd[(arg5 + 132)])
            mem[mem[64] + 36] = cd[(arg5 + 164)]
            require ext_code.size(address(cd[(arg5 + 68)]))
            call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 132)]), cd[(arg5 + 164)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _329 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_329] == bool(mem[_329])
            require ext_code.size(address(cd[(arg5 + 132)]))
            staticcall address(cd[(arg5 + 132)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _338 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _340 = mem[_338]
            require mem[_338] == mem[_338 + 12 len 20]
            mem[mem[64] + 4] = address(cd[(arg5 + 132)])
            mem[mem[64] + 36] = cd[(arg5 + 164)]
            require ext_code.size(address(_340))
            call address(_340).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 132)]), cd[(arg5 + 164)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _349 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_349] == bool(mem[_349])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 132)]))
            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _359 = mem[_357]
            mem[mem[64] + 4] = cd[(arg5 + 164)]
            require ext_code.size(address(cd[(arg5 + 132)]))
            call address(cd[(arg5 + 132)]).0xa0712d68 with:
                 gas gas_remaining wei
                args cd[(arg5 + 164)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _366 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_366]:
                revert with 0, 'Failed to mint cToken'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 132)]))
            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _378 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _359 > mem[_378]:
                revert with 0, 'SafeMath: subtraction overflow'
            _387 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 < mem[_387]:
                mem[_387 + 32] = address(cd[(arg5 + 132)])
                mem[_387 + 64] = 0xc299823800000000000000000000000000000000000000000000000000000000
                mem[_387 + 68] = 32
                mem[_387 + 100] = mem[_387]
                idx = 0
                s = _387 + 32
                t = _387 + 132
                while idx < mem[_387]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(comptrollerAddress)
                call comptrollerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _387 + (32 * mem[_387]) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _461 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _463 = mem[_461]
                require mem[_461] <= test266151307()
                require _461 + return_data.size > _461 + mem[_461] + 31
                _465 = mem[_461 + mem[_461]]
                require mem[_461 + mem[_461]] <= test266151307()
                require (32 * mem[_461 + mem[_461]]) + 32 >= 0 and _461 + ceil32(return_data.size) + (32 * mem[_461 + mem[_461]]) + 32 <= test266151307()
                mem[64] = _461 + ceil32(return_data.size) + (32 * mem[_461 + mem[_461]]) + 32
                mem[_461 + ceil32(return_data.size)] = _465
                require return_data.size >= _463 + (32 * _465) + 32
                mem[_461 + ceil32(return_data.size) + 32 len 32 * _465] = mem[_461 + _463 + 32 len 32 * _465]
                if 0 < _465:
                    if mem[_461 + ceil32(return_data.size) + 32] != 0:
                        revert with 0, 'Comptroller.enterMarkets failed.'
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    staticcall address(cd[(arg5 + 132)]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _537 = mem[_535]
                    require mem[_535] == mem[_535 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_537))
                    staticcall address(_537).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _541 = mem[_540]
                    mem[mem[64] + 4] = cd[(arg5 + 196)]
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    call address(cd[(arg5 + 132)]).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args cd[(arg5 + 196)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _544 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_544]:
                        revert with 0, 'Failed to borrow from cToken'
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    staticcall address(cd[(arg5 + 132)]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _550 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _551 = mem[_550]
                    require mem[_550] == mem[_550 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_551))
                    staticcall address(_551).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _554 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _555 = mem[_554]
                    if _541 > mem[_554]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if address(cd[(arg5 + 100)]) == address(cd[(arg5 + 324)]):
                        return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
                    mem[mem[64] + 4] = address(cd[(arg5 + 420)])
                    mem[mem[64] + 36] = _555 - _541
                    require ext_code.size(address(cd[(arg5 + 100)]))
                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg5 + 420)]), _555 - _541
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _562 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_562] == bool(mem[_562])
                    _564 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 < mem[_564]:
                        mem[_564 + 32] = address(cd[(arg5 + 100)])
                        if 1 < mem[_564]:
                            mem[_564 + 64] = address(cd[(arg5 + 324)])
                            mem[_564 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_564 + 100] = _555 - _541
                            mem[_564 + 132] = 1
                            mem[_564 + 164] = 160
                            mem[_564 + 260] = mem[_564]
                            idx = 0
                            s = _564 + 32
                            t = _564 + 292
                            while idx < mem[_564]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_564 + 196] = this.address
                            mem[_564 + 228] = block.timestamp
                            require ext_code.size(address(cd[(arg5 + 420)]))
                            call address(cd[(arg5 + 420)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _564 + (32 * mem[_564]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _582 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_582] <= test266151307()
                            require _582 + return_data.size > _582 + mem[_582] + 31
                            require mem[_582 + mem[_582]] <= test266151307()
                            require (32 * mem[_582 + mem[_582]]) + 32 >= 0 and _582 + ceil32(return_data.size) + (32 * mem[_582 + mem[_582]]) + 32 <= test266151307()
                            require return_data.size >= mem[_582] + (32 * mem[_582 + mem[_582]]) + 32
                            if 1 < mem[_582 + mem[_582]]:
                                return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
    revert
}



}
