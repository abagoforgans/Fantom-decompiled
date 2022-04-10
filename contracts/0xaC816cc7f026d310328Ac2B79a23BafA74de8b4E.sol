contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_4e245460(?)
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
           sub_6bb675ed[arg1].field_2048,
           sub_6bb675ed[arg1].field_2304
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
        call address(arg3).0xa0712d68 with:
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
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.enterMarkets(address[] rg1) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[(10 * ceil32(return_data.size)) + 228])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _180 = mem[(10 * ceil32(return_data.size)) + 160 len 4], 0
        require mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 <= test266151307()
        require (10 * ceil32(return_data.size)) + return_data.size + 160 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 191
        _182 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]
        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160] <= test266151307()
        require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 192 <= test266151307()
        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 192
        mem[(11 * ceil32(return_data.size)) + 160] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]
        require return_data.size >= _180 + (32 * _182) + 32
        mem[(11 * ceil32(return_data.size)) + 192 len 32 * _182] = mem[(10 * ceil32(return_data.size)) + _180 + 192 len 32 * _182]
        if 0 < _182:
            if mem[(11 * ceil32(return_data.size)) + 192] != 0:
                revert with 0, 'Comptroller.enterMarkets failed.'
            require ext_code.size(address(arg4))
            staticcall address(arg4).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _334 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _336 = mem[_334]
            require mem[_334] == mem[_334 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_336))
            staticcall address(_336).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _346 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _348 = mem[_346]
            mem[mem[64] + 4] = arg6
            require ext_code.size(address(arg4))
            call address(arg4).borrow(uint256 rg1) with:
                 gas gas_remaining wei
                args arg6
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _353 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_353]:
                revert with 0, 'Failed to borrow from cToken'
            require ext_code.size(address(arg4))
            staticcall address(arg4).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _361 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _363 = mem[_361]
            require mem[_361] == mem[_361 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_363))
            staticcall address(_363).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _371 = mem[_369]
            if _348 > mem[_369]:
                revert with 0, 'SafeMath: subtraction overflow'
            if address(arg2) == address(arg7):
            mem[mem[64] + 4] = address(arg9)
            mem[mem[64] + 36] = _371 - _348
            require ext_code.size(address(arg2))
            call address(arg2).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg9), _371 - _348
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _382 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_382] == bool(mem[_382])
            _389 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 < mem[_389]:
                mem[_389 + 32] = address(arg2)
                if 1 < mem[_389]:
                    mem[_389 + 64] = address(arg7)
                    mem[_389 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_389 + 100] = _371 - _348
                    mem[_389 + 132] = 1
                    mem[_389 + 164] = 160
                    mem[_389 + 260] = mem[_389]
                    idx = 0
                    s = _389 + 32
                    t = _389 + 292
                    while idx < mem[_389]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_389 + 196] = this.address
                    mem[_389 + 228] = block.timestamp
                    require ext_code.size(address(arg9))
                    call address(arg9).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _389 + (32 * mem[_389]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _468 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_468] <= test266151307()
                    require _468 + return_data.size > _468 + mem[_468] + 31
                    require mem[_468 + mem[_468]] <= test266151307()
                    require (32 * mem[_468 + mem[_468]]) + 32 >= 0 and _468 + ceil32(return_data.size) + (32 * mem[_468 + mem[_468]]) + 32 <= test266151307()
                    require return_data.size >= mem[_468] + (32 * mem[_468 + mem[_468]]) + 32
                    if 1 < mem[_468 + mem[_468]]:
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
        _181 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 223
        _183 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 192]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 192] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 192]) + 224
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg8) >> 32 + 192]
        require return_data.size >= _181 + (32 * _183) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _183] = mem[ceil32(return_data.size) + _181 + 224 len 32 * _183]
        if 1 < _183:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _337 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_337] < arg5:
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
            _345 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_345] == bool(mem[_345])
            require ext_code.size(address(arg3))
            staticcall address(arg3).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _354 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _356 = mem[_354]
            require mem[_354] == mem[_354 + 12 len 20]
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = arg5
            require ext_code.size(address(_356))
            call address(_356).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg3), arg5
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _365 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_365] == bool(mem[_365])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _373 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _375 = mem[_373]
            mem[mem[64] + 4] = arg5
            require ext_code.size(address(arg3))
            call address(arg3).0xa0712d68 with:
                 gas gas_remaining wei
                args arg5
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _381 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_381]:
                revert with 0, 'Failed to mint cToken'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _392 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _375 > mem[_392]:
                revert with 0, 'SafeMath: subtraction overflow'
            _401 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 < mem[_401]:
                mem[_401 + 32] = address(arg3)
                mem[_401 + 64] = 0xc299823800000000000000000000000000000000000000000000000000000000
                mem[_401 + 68] = 32
                mem[_401 + 100] = mem[_401]
                idx = 0
                s = _401 + 32
                t = _401 + 132
                while idx < mem[_401]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(comptrollerAddress)
                call comptrollerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _401 + (32 * mem[_401]) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _469 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _471 = mem[_469]
                require mem[_469] <= test266151307()
                require _469 + return_data.size > _469 + mem[_469] + 31
                _473 = mem[_469 + mem[_469]]
                require mem[_469 + mem[_469]] <= test266151307()
                require (32 * mem[_469 + mem[_469]]) + 32 >= 0 and _469 + ceil32(return_data.size) + (32 * mem[_469 + mem[_469]]) + 32 <= test266151307()
                mem[64] = _469 + ceil32(return_data.size) + (32 * mem[_469 + mem[_469]]) + 32
                mem[_469 + ceil32(return_data.size)] = _473
                require return_data.size >= _471 + (32 * _473) + 32
                mem[_469 + ceil32(return_data.size) + 32 len 32 * _473] = mem[_469 + _471 + 32 len 32 * _473]
                if 0 < _473:
                    if mem[_469 + ceil32(return_data.size) + 32] != 0:
                        revert with 0, 'Comptroller.enterMarkets failed.'
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _536 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _537 = mem[_536]
                    require mem[_536] == mem[_536 + 12 len 20]
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
                    mem[mem[64] + 4] = arg6
                    require ext_code.size(address(arg4))
                    call address(arg4).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg6
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _544 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_544]:
                        revert with 0, 'Failed to borrow from cToken'
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).underlying() with:
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
                    if address(arg2) == address(arg7):
                    mem[mem[64] + 4] = address(arg9)
                    mem[mem[64] + 36] = _555 - _541
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg9), _555 - _541
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _560 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_560] == bool(mem[_560])
                    _562 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 < mem[_562]:
                        mem[_562 + 32] = address(arg2)
                        if 1 < mem[_562]:
                            mem[_562 + 64] = address(arg7)
                            mem[_562 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_562 + 100] = _555 - _541
                            mem[_562 + 132] = 1
                            mem[_562 + 164] = 160
                            mem[_562 + 260] = mem[_562]
                            idx = 0
                            s = _562 + 32
                            t = _562 + 292
                            while idx < mem[_562]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_562 + 196] = this.address
                            mem[_562 + 228] = block.timestamp
                            require ext_code.size(address(arg9))
                            call address(arg9).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _562 + (32 * mem[_562]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _578 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_578] <= test266151307()
                            require _578 + return_data.size > _578 + mem[_578] + 31
                            require mem[_578 + mem[_578]] <= test266151307()
                            require (32 * mem[_578 + mem[_578]]) + 32 >= 0 and _578 + ceil32(return_data.size) + (32 * mem[_578 + mem[_578]]) + 32 <= test266151307()
                            require return_data.size >= mem[_578] + (32 * mem[_578 + mem[_578]]) + 32
                            if 1 < mem[_578 + mem[_578]]:
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
    mem[512] = 0
    mem[96] = 224
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[128] = 544
    mem[160] = 0
    mem[192] = 0
    require arg5.length >= 480
    require arg5.length >= 320
    mem[768] = cd[(arg5 + 36)]
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    mem[800] = cd[(arg5 + 68)]
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    mem[832] = cd[(arg5 + 100)]
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    mem[864] = cd[(arg5 + 132)]
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    mem[896] = cd[(arg5 + 164)]
    mem[928] = cd[(arg5 + 196)]
    mem[960] = cd[(arg5 + 228)]
    mem[992] = cd[(arg5 + 260)]
    mem[1024] = cd[(arg5 + 292)]
    mem[1056] = cd[(arg5 + 324)]
    mem[640] = 768
    require arg5.length - 320 >= 96
    require cd[(arg5 + 356)] == address(cd[(arg5 + 356)])
    mem[1088] = cd[(arg5 + 356)]
    mem[1120] = cd[(arg5 + 388)]
    mem[1152] = cd[(arg5 + 420)]
    mem[672] = 1088
    require cd[(arg5 + 452)] == address(cd[(arg5 + 452)])
    mem[704] = cd[(arg5 + 452)]
    require cd[(arg5 + 484)] == bool(cd[(arg5 + 484)])
    mem[736] = cd[(arg5 + 484)]
    if bool(cd[(arg5 + 484)]) != 1:
        return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
    if address(cd[(arg5 + 356)]) == address(cd[(arg5 + 68)]):
        mem[1188] = this.address
        require ext_code.size(address(cd[(arg5 + 68)]))
        staticcall address(cd[(arg5 + 68)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[1184] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[(arg5 + 196)]:
            revert with 0, 'Manager: tokenIn balance not sufficient'
        mem[ceil32(return_data.size) + 1188] = address(cd[(arg5 + 132)])
        mem[ceil32(return_data.size) + 1220] = cd[(arg5 + 196)]
        require ext_code.size(address(cd[(arg5 + 68)]))
        call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 132)]), cd[(arg5 + 196)]
        mem[ceil32(return_data.size) + 1184] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(cd[(arg5 + 132)]))
        staticcall address(cd[(arg5 + 132)]).underlying() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 1184] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 1188] = address(cd[(arg5 + 132)])
        mem[(4 * ceil32(return_data.size)) + 1220] = cd[(arg5 + 196)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 132)]), cd[(arg5 + 196)]
        mem[(4 * ceil32(return_data.size)) + 1184] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 1188] = this.address
        require ext_code.size(address(cd[(arg5 + 132)]))
        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 1188] = cd[(arg5 + 196)]
        require ext_code.size(address(cd[(arg5 + 132)]))
        call address(cd[(arg5 + 132)]).0xa0712d68 with:
             gas gas_remaining wei
            args cd[(arg5 + 196)]
        mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Failed to mint cToken'
        mem[(8 * ceil32(return_data.size)) + 1188] = this.address
        require ext_code.size(address(cd[(arg5 + 132)]))
        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 1184] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[(10 * ceil32(return_data.size)) + 1184] = 1
        mem[(10 * ceil32(return_data.size)) + 1216] = address(cd[(arg5 + 132)])
        mem[(10 * ceil32(return_data.size)) + 1248] = 0xc299823800000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 1252] = 32
        mem[(10 * ceil32(return_data.size)) + 1284] = 1
        idx = 0
        s = (10 * ceil32(return_data.size)) + 1216
        t = (10 * ceil32(return_data.size)) + 1316
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.enterMarkets(address[] rg1) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[(10 * ceil32(return_data.size)) + 1316])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 1248 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 1248
        require return_data.size >= 32
        _153 = mem[(10 * ceil32(return_data.size)) + 1248 len 4], 0
        require mem[(10 * ceil32(return_data.size)) + 1248 len 4], 0 <= test266151307()
        require (10 * ceil32(return_data.size)) + return_data.size + 1248 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1248 len 4], 0 + 1279
        _155 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1248 len 4], 0 + 1248]
        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1248 len 4], 0 + 1248] <= test266151307()
        require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1248 len 4], 0 + 1248]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1248 len 4], 0 + 1248]) + 1280 <= test266151307()
        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1248 len 4], 0 + 1248]) + 1280
        mem[(11 * ceil32(return_data.size)) + 1248] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1248 len 4], 0 + 1248]
        require return_data.size >= _153 + (32 * _155) + 32
        mem[(11 * ceil32(return_data.size)) + 1280 len 32 * _155] = mem[(10 * ceil32(return_data.size)) + _153 + 1280 len 32 * _155]
        if 0 < _155:
            if mem[(11 * ceil32(return_data.size)) + 1280] != 0:
                revert with 0, 'Comptroller.enterMarkets failed.'
            require ext_code.size(address(cd[(arg5 + 164)]))
            staticcall address(cd[(arg5 + 164)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _313 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _315 = mem[_313]
            require mem[_313] == mem[_313 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_315))
            staticcall address(_315).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _327 = mem[_325]
            mem[mem[64] + 4] = cd[(arg5 + 228)]
            require ext_code.size(address(cd[(arg5 + 164)]))
            call address(cd[(arg5 + 164)]).borrow(uint256 rg1) with:
                 gas gas_remaining wei
                args cd[(arg5 + 228)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _332 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_332]:
                revert with 0, 'Failed to borrow from cToken'
            require ext_code.size(address(cd[(arg5 + 164)]))
            staticcall address(cd[(arg5 + 164)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _340 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _342 = mem[_340]
            require mem[_340] == mem[_340 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_342))
            staticcall address(_342).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _348 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _350 = mem[_348]
            if _327 > mem[_348]:
                revert with 0, 'SafeMath: subtraction overflow'
            if address(cd[(arg5 + 100)]) == address(cd[(arg5 + 356)]):
                return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
            mem[mem[64] + 4] = address(cd[(arg5 + 452)])
            mem[mem[64] + 36] = _350 - _327
            require ext_code.size(address(cd[(arg5 + 100)]))
            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 452)]), _350 - _327
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _363 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_363] == bool(mem[_363])
            _370 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 < mem[_370]:
                mem[_370 + 32] = address(cd[(arg5 + 100)])
                if 1 < mem[_370]:
                    mem[_370 + 64] = address(cd[(arg5 + 356)])
                    mem[_370 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_370 + 100] = _350 - _327
                    mem[_370 + 132] = 1
                    mem[_370 + 164] = 160
                    mem[_370 + 260] = mem[_370]
                    idx = 0
                    s = _370 + 32
                    t = _370 + 292
                    while idx < mem[_370]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_370 + 196] = this.address
                    mem[_370 + 228] = block.timestamp
                    require ext_code.size(address(cd[(arg5 + 452)]))
                    call address(cd[(arg5 + 452)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _370 + (32 * mem[_370]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _455 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_455] <= test266151307()
                    require _455 + return_data.size > _455 + mem[_455] + 31
                    require mem[_455 + mem[_455]] <= test266151307()
                    require (32 * mem[_455 + mem[_455]]) + 32 >= 0 and _455 + ceil32(return_data.size) + (32 * mem[_455 + mem[_455]]) + 32 <= test266151307()
                    require return_data.size >= mem[_455] + (32 * mem[_455 + mem[_455]]) + 32
                    if 1 < mem[_455 + mem[_455]]:
                        return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
    else:
        mem[1188] = address(cd[(arg5 + 452)])
        mem[1220] = cd[(arg5 + 388)]
        require ext_code.size(address(cd[(arg5 + 356)]))
        call address(cd[(arg5 + 356)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 452)]), cd[(arg5 + 388)]
        mem[1184] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 1184] = 2
        mem[ceil32(return_data.size) + 1216] = address(cd[(arg5 + 356)])
        mem[ceil32(return_data.size) + 1248] = address(cd[(arg5 + 68)])
        mem[ceil32(return_data.size) + 1280] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 1284] = cd[(arg5 + 388)]
        mem[ceil32(return_data.size) + 1316] = 1
        mem[ceil32(return_data.size) + 1348] = 160
        mem[ceil32(return_data.size) + 1444] = 2
        idx = 0
        s = ceil32(return_data.size) + 1216
        t = ceil32(return_data.size) + 1476
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 1380] = this.address
        mem[ceil32(return_data.size) + 1412] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 452)]))
        call address(cd[(arg5 + 452)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[(arg5 + 388)], 1, Array(len=2, data=mem[ceil32(return_data.size) + 1476 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 1280 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 1280
        require return_data.size >= 32
        _154 = mem[ceil32(return_data.size) + 1280 len 4], Mask(224, 32, cd[(arg5 + 388)]) >> 32
        require mem[ceil32(return_data.size) + 1280 len 4], Mask(224, 32, cd[(arg5 + 388)]) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 1280 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 1280 len 4], Mask(224, 32, cd[(arg5 + 388)]) >> 32 + 1311
        _156 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1280 len 4], Mask(224, 32, cd[(arg5 + 388)]) >> 32 + 1280]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1280 len 4], Mask(224, 32, cd[(arg5 + 388)]) >> 32 + 1280] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1280 len 4], Mask(224, 32, cd[(arg5 + 388)]) >> 32 + 1280]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1280 len 4], Mask(224, 32, cd[(arg5 + 388)]) >> 32 + 1280]) + 1312 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1280 len 4], Mask(224, 32, cd[(arg5 + 388)]) >> 32 + 1280]) + 1312
        mem[(2 * ceil32(return_data.size)) + 1280] = _156
        require return_data.size >= _154 + (32 * _156) + 32
        mem[(2 * ceil32(return_data.size)) + 1312 len 32 * _156] = mem[ceil32(return_data.size) + _154 + 1312 len 32 * _156]
        if 1 < _156:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 68)]))
            staticcall address(cd[(arg5 + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _316 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_316] < cd[(arg5 + 196)]:
                revert with 0, 'Manager: tokenIn balance not sufficient'
            mem[mem[64] + 4] = address(cd[(arg5 + 132)])
            mem[mem[64] + 36] = cd[(arg5 + 196)]
            require ext_code.size(address(cd[(arg5 + 68)]))
            call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 132)]), cd[(arg5 + 196)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_324] == bool(mem[_324])
            require ext_code.size(address(cd[(arg5 + 132)]))
            staticcall address(cd[(arg5 + 132)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _333 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _335 = mem[_333]
            require mem[_333] == mem[_333 + 12 len 20]
            mem[mem[64] + 4] = address(cd[(arg5 + 132)])
            mem[mem[64] + 36] = cd[(arg5 + 196)]
            require ext_code.size(address(_335))
            call address(_335).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 132)]), cd[(arg5 + 196)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _344 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_344] == bool(mem[_344])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 132)]))
            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _352 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _354 = mem[_352]
            mem[mem[64] + 4] = cd[(arg5 + 196)]
            require ext_code.size(address(cd[(arg5 + 132)]))
            call address(cd[(arg5 + 132)]).0xa0712d68 with:
                 gas gas_remaining wei
                args cd[(arg5 + 196)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _361 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_361]:
                revert with 0, 'Failed to mint cToken'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 132)]))
            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _373 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _354 > mem[_373]:
                revert with 0, 'SafeMath: subtraction overflow'
            _382 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 < mem[_382]:
                mem[_382 + 32] = address(cd[(arg5 + 132)])
                mem[_382 + 64] = 0xc299823800000000000000000000000000000000000000000000000000000000
                mem[_382 + 68] = 32
                mem[_382 + 100] = mem[_382]
                idx = 0
                s = _382 + 32
                t = _382 + 132
                while idx < mem[_382]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(comptrollerAddress)
                call comptrollerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _382 + (32 * mem[_382]) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _456 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _458 = mem[_456]
                require mem[_456] <= test266151307()
                require _456 + return_data.size > _456 + mem[_456] + 31
                _460 = mem[_456 + mem[_456]]
                require mem[_456 + mem[_456]] <= test266151307()
                require (32 * mem[_456 + mem[_456]]) + 32 >= 0 and _456 + ceil32(return_data.size) + (32 * mem[_456 + mem[_456]]) + 32 <= test266151307()
                mem[64] = _456 + ceil32(return_data.size) + (32 * mem[_456 + mem[_456]]) + 32
                mem[_456 + ceil32(return_data.size)] = _460
                require return_data.size >= _458 + (32 * _460) + 32
                mem[_456 + ceil32(return_data.size) + 32 len 32 * _460] = mem[_456 + _458 + 32 len 32 * _460]
                if 0 < _460:
                    if mem[_456 + ceil32(return_data.size) + 32] != 0:
                        revert with 0, 'Comptroller.enterMarkets failed.'
                    require ext_code.size(address(cd[(arg5 + 164)]))
                    staticcall address(cd[(arg5 + 164)]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _530 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _532 = mem[_530]
                    require mem[_530] == mem[_530 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_532))
                    staticcall address(_532).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _536 = mem[_535]
                    mem[mem[64] + 4] = cd[(arg5 + 228)]
                    require ext_code.size(address(cd[(arg5 + 164)]))
                    call address(cd[(arg5 + 164)]).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args cd[(arg5 + 228)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _539 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_539]:
                        revert with 0, 'Failed to borrow from cToken'
                    require ext_code.size(address(cd[(arg5 + 164)]))
                    staticcall address(cd[(arg5 + 164)]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _545 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _546 = mem[_545]
                    require mem[_545] == mem[_545 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_546))
                    staticcall address(_546).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _549 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _550 = mem[_549]
                    if _536 > mem[_549]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if address(cd[(arg5 + 100)]) == address(cd[(arg5 + 356)]):
                        return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
                    mem[mem[64] + 4] = address(cd[(arg5 + 452)])
                    mem[mem[64] + 36] = _550 - _536
                    require ext_code.size(address(cd[(arg5 + 100)]))
                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg5 + 452)]), _550 - _536
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _557 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_557] == bool(mem[_557])
                    _559 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 < mem[_559]:
                        mem[_559 + 32] = address(cd[(arg5 + 100)])
                        if 1 < mem[_559]:
                            mem[_559 + 64] = address(cd[(arg5 + 356)])
                            mem[_559 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_559 + 100] = _550 - _536
                            mem[_559 + 132] = 1
                            mem[_559 + 164] = 160
                            mem[_559 + 260] = mem[_559]
                            idx = 0
                            s = _559 + 32
                            t = _559 + 292
                            while idx < mem[_559]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_559 + 196] = this.address
                            mem[_559 + 228] = block.timestamp
                            require ext_code.size(address(cd[(arg5 + 452)]))
                            call address(cd[(arg5 + 452)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _559 + (32 * mem[_559]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _577 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_577] <= test266151307()
                            require _577 + return_data.size > _577 + mem[_577] + 31
                            require mem[_577 + mem[_577]] <= test266151307()
                            require (32 * mem[_577 + mem[_577]]) + 32 >= 0 and _577 + ceil32(return_data.size) + (32 * mem[_577 + mem[_577]]) + 32 <= test266151307()
                            require return_data.size >= mem[_577] + (32 * mem[_577 + mem[_577]]) + 32
                            if 1 < mem[_577 + mem[_577]]:
                                return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
    revert
}



}
