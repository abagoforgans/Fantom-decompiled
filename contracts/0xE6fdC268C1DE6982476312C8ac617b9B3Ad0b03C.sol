contract main {




// =====================  Runtime code  =====================


#
#  - sub_218bb029(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
address comptrollerAddress;
mapping of uint8 stor1;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor4;
mapping of address approved;
mapping of uint8 stor6;
array of uint256 name;
array of uint256 symbol;
mapping of struct stor9;
array of struct baseURI;
address owner;
address supplyTokenAddress;
address sub_456dc17aAddress;
address stor14;
address stor15;
address flashTokenAddress;
address lenderAddress;
address routerAddress;
array of struct stor19;
uint256 stor20;
uint256 stor21;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor1[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_456dc17a(?) payable {
    return sub_456dc17aAddress
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    return tokenByIndex[arg1].field_0
}

function supplyToken() payable {
    return supplyTokenAddress
}

function comptroller() payable {
    return comptrollerAddress
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor4[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor4[arg1] - 1].field_256
}

function baseURI() payable {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function flashToken() payable {
    return flashTokenAddress
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function lender() payable {
    return lenderAddress
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function pool() payable {
    return stor20, stor21
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ba4a1d47(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        return 0
    if arg2 * arg1 / arg1 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (arg2 * arg1 / 100)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ed2872b1(?) payable {
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

function getUnderlyingToken(address arg1) payable {
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

function sub_e0d1901a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAccountSnapshot(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function sub_85d6810f(?) payable {
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor4[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor4[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor4[arg2] - 1].field_256:
        revert with 0, 'ERC721: approval to current owner'
    if tokenByIndex[stor4[arg2] - 1].field_256 != msg.sender:
        if not stor6[stor3[stor4[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor4[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor4[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor4[arg2] - 1].field_256, arg1, arg2);
}

function withdrawToken(address arg1) payable {
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

function sub_1c20c970(?) payable {
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

function sub_e4f8a82e(?) payable {
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

function mint(address arg1, uint256 arg2) payable {
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

function borrow(address arg1, uint256 arg2) payable {
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

function sub_d732495f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require ext_code.size(address(arg3))
    staticcall address(arg3).underlying() with:
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
    require ext_code.size(address(arg3))
    call address(arg3).borrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Failed to borrow from cToken'
    require ext_code.size(address(arg3))
    staticcall address(arg3).underlying() with:
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
    if 0 < arg2:
        revert with 0, 'borrowed !! >= _borrowAmount'
    else:
        return 0
}

function sub_b9859a20(?) payable {
    require calldata.size - 4 >= 32
    if flashTokenAddress == sub_456dc17aAddress:
        return arg1
    mem[96] = 2
    mem[128] = flashTokenAddress
    mem[160] = sub_456dc17aAddress
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
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _22 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _23 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _22 + (32 * _23) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _23] = mem[_22 + 224 len 32 * _23]
    require 0 < _23
    mem[mem[64]] = mem[ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function getAmountsOut(uint256 arg1, address arg2, address arg3, address arg4) payable {
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

function sub_821c6257(?) payable {
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

function sub_6a367596(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'PositionManager: insuficient borrowToken balance'
    require ext_code.size(address(arg3))
    staticcall address(arg3).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg3))
    call address(arg3).repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Failed to repay borrow from cToken'
    require ext_code.size(address(arg3))
    staticcall address(arg3).getAccountSnapshot(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[64] != 0:
        revert with 0, 'PositionManager: Failed to pay back the full borrow balance'
    return ext_call.return_data[64]
}

function redeem(address arg1, uint256 arg2) payable {
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

function sub_e927624c(?) payable {
    require calldata.size - 4 >= 160
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[96] = 2
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = arg2
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
    require ext_code.size(address(arg5))
    call address(arg5).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, arg2, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
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

function sub_feb1e904(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require ext_code.size(address(arg3))
    call address(arg3).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg3))
    staticcall address(arg3).underlying() with:
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
    require ext_code.size(address(arg3))
    call address(arg3).redeem(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Failed to redeem cToken'
    require ext_code.size(address(arg3))
    staticcall address(arg3).underlying() with:
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor4[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor4[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor4[arg3] - 1].field_256 != msg.sender:
        if not stor4[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[stor4[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor4[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor4[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    require stor4[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor4[arg3] - 1].field_256, 0, arg3);
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
    if stor4[arg3]:
        require stor4[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor4[arg3] - 1].field_256 = arg2
        tokenByIndex[stor4[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor4[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function sub_2e6cad67(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = flashTokenAddress
    mem[132] = arg1
    require ext_code.size(lenderAddress)
    staticcall lenderAddress.flashFee(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args flashTokenAddress, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if flashTokenAddress == supplyTokenAddress:
        return (ext_call.return_data[0] + arg1)
    mem[ceil32(return_data.size) + 100] = flashTokenAddress
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(lenderAddress)
    staticcall lenderAddress.flashFee(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args flashTokenAddress, arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = supplyTokenAddress
    mem[(2 * ceil32(return_data.size)) + 160] = flashTokenAddress
    mem[(2 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] + arg1
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
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0] + arg1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _34 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 223
    _35 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 192]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 192]) + 224
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 192]
    require return_data.size >= _34 + (32 * _35) + 32
    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _35] = mem[(2 * ceil32(return_data.size)) + _34 + 224 len 32 * _35]
    require 0 < _35
    mem[mem[64]] = mem[(4 * ceil32(return_data.size)) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_3f7df9ac(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = flashTokenAddress
    mem[132] = arg1
    require ext_code.size(lenderAddress)
    staticcall lenderAddress.flashFee(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args flashTokenAddress, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if flashTokenAddress == sub_456dc17aAddress:
        return (ext_call.return_data[0] + arg1)
    mem[ceil32(return_data.size) + 100] = flashTokenAddress
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(lenderAddress)
    staticcall lenderAddress.flashFee(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args flashTokenAddress, arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = sub_456dc17aAddress
    mem[(2 * ceil32(return_data.size)) + 160] = flashTokenAddress
    mem[(2 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] + arg1
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
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0] + arg1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _34 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 223
    _35 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 192]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 192]) + 224
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] + arg1) >> 32 + 192]
    require return_data.size >= _34 + (32 * _35) + 32
    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _35] = mem[(2 * ceil32(return_data.size)) + _34 + 224 len 32 * _35]
    require 0 < _35
    mem[mem[64]] = mem[(4 * ceil32(return_data.size)) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_131983ec(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        if arg1 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if flashTokenAddress == supplyTokenAddress:
            return -arg1
        mem[96] = 2
        mem[128] = supplyTokenAddress
        mem[160] = flashTokenAddress
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = -arg1
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
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args -arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _50 = mem[192 len 4], Mask(224, 32, -arg1) >> 32
        require mem[192 len 4], Mask(224, 32, -arg1) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, -arg1) >> 32 + 223
        _52 = mem[mem[192 len 4], Mask(224, 32, -arg1) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, -arg1) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, -arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, -arg1) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, -arg1) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, -arg1) >> 32 + 192]
        require return_data.size >= _50 + (32 * _52) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _52] = mem[_50 + 224 len 32 * _52]
        require 0 < _52
    else:
        if arg2 * arg1 / arg1 != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg1 > arg2 * arg1 / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        if flashTokenAddress == supplyTokenAddress:
            return ((arg2 * arg1 / 100) - arg1)
        mem[96] = 2
        mem[128] = supplyTokenAddress
        mem[160] = flashTokenAddress
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = (arg2 * arg1 / 100) - arg1
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
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args (arg2 * arg1 / 100) - arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _49 = mem[192 len 4], Mask(224, 32, (arg2 * arg1 / 100) - arg1) >> 32
        require mem[192 len 4], Mask(224, 32, (arg2 * arg1 / 100) - arg1) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, (arg2 * arg1 / 100) - arg1) >> 32 + 223
        _51 = mem[mem[192 len 4], Mask(224, 32, (arg2 * arg1 / 100) - arg1) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, (arg2 * arg1 / 100) - arg1) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, (arg2 * arg1 / 100) - arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, (arg2 * arg1 / 100) - arg1) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, (arg2 * arg1 / 100) - arg1) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, (arg2 * arg1 / 100) - arg1) >> 32 + 192]
        require return_data.size >= _49 + (32 * _51) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _51] = mem[_49 + 224 len 32 * _51]
        require 0 < _51
    mem[mem[64]] = mem[ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_d9d1ccc4(?) payable {
    require calldata.size - 4 >= 192
    require arg3 == address(arg3)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    mem[100] = this.address
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0, 'PositionManager: Insuficient borrowToken balance'
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if address(arg3) == address(arg5):
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2 + arg1:
            revert with 0, 'PositionManager: Insuficient flashToken balance'
    else:
        mem[ceil32(return_data.size) + 100] = address(arg6)
        mem[ceil32(return_data.size) + 132] = arg4
        require ext_code.size(address(arg5))
        call address(arg5).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg6), arg4
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = address(arg5)
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg4
        mem[(2 * ceil32(return_data.size)) + 228] = arg2 + arg1
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(address(arg6))
        call address(arg6).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg4, arg2 + arg1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _42 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 223
        _43 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 224
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        require return_data.size >= _42 + (32 * _43) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _43] = mem[(2 * ceil32(return_data.size)) + _42 + 224 len 32 * _43]
        require 1 < _43
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_59] < arg2 + arg1:
            revert with 0, 'PositionManager: Insuficient flashToken balance'
}

function sub_ee8dea08(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'PositionManager: Insufficient balance of positionToken'
    mem[ceil32(return_data.size) + 100] = address(arg3)
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(address(arg1))
    call address(arg1).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
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
    mem[(4 * ceil32(return_data.size)) + 132] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
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
    mem[(7 * ceil32(return_data.size)) + 100] = arg2
    require ext_code.size(address(arg3))
    call address(arg3).mint(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
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
    _55 = mem[(10 * ceil32(return_data.size)) + 160 len 4], 0
    require mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 <= test266151307()
    require (10 * ceil32(return_data.size)) + return_data.size + 160 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 191
    _56 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]
    require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160] <= test266151307()
    require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 192 <= test266151307()
    mem[(11 * ceil32(return_data.size)) + 160] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 160 len 4], 0 + 160]
    require return_data.size >= _55 + (32 * _56) + 32
    mem[(11 * ceil32(return_data.size)) + 192 len 32 * _56] = mem[(10 * ceil32(return_data.size)) + _55 + 192 len 32 * _56]
    require 0 < _56
    if mem[(11 * ceil32(return_data.size)) + 192] != 0:
        revert with 0, 'Comptroller.enterMarkets failed.'
    return 0
}

function sub_5d775d8f(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[100] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'PositionManager: Insuficient flashToken balance'
    if address(arg2) == address(arg4):
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'PositionManager: Insuficient supplyToken balance'
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[(2 * ceil32(return_data.size)) + 100] = address(arg5)
        mem[(2 * ceil32(return_data.size)) + 132] = arg1
        require ext_code.size(address(arg2))
        call address(arg2).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg5), arg1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = address(arg2)
        mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg1
        mem[(4 * ceil32(return_data.size)) + 228] = arg3 - ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(address(arg5))
        call address(arg5).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, arg3 - ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _46 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
        _47 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require return_data.size >= _46 + (32 * _47) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _47] = mem[(4 * ceil32(return_data.size)) + _46 + 224 len 32 * _47]
        require 1 < _47
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_63] < arg3:
            revert with 0, 'PositionManager: Insuficient supplyToken balance'
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[128] = stor9[arg1].field_0
    idx = 128
    s = 0
    while stor9[arg1].length + 96 > idx:
        mem[idx + 32] = stor9[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor9[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = ceil32(stor9[arg1].length) + 160
    s = 0
    while ceil32(stor9[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == baseURI.length:
        var35001 = ceil32(stor9[arg1].length)
        return Array(len=stor9[arg1].length, data=mem[128 len ceil32(stor9[arg1].length)])
    if stor9[arg1].length:
        mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(baseURI.length)] = mem[ceil32(stor9[arg1].length) + 160 len ceil32(baseURI.length)]
        var33001 = ceil32(baseURI.length)
        if ceil32(baseURI.length) > baseURI.length:
            mem[baseURI.length + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 192] = 0
        mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len ceil32(stor9[arg1].length)] = mem[128 len ceil32(stor9[arg1].length)]
        var39001 = ceil32(stor9[arg1].length)
        mem[stor9[arg1].length + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 32
        mem[stor9[arg1].length + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224] = mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor9[arg1].length + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 160])]
        if ceil32(mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 160]) > mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 160]:
            mem[mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 160] + stor9[arg1].length + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = 0
        return Array(len=mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 160], data=mem[stor9[arg1].length + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 160])]), 
    if not arg1:
        mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(baseURI.length)] = mem[ceil32(stor9[arg1].length) + 160 len ceil32(baseURI.length)]
        var37001 = ceil32(baseURI.length)
        mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 224])]
        if ceil32(mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 224]) > mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 224]:
            mem[mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 224] + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321] = 0
        return Array(len=mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 224], data=mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 224])]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    if s:
        mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 192 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(baseURI.length)] = mem[ceil32(stor9[arg1].length) + 160 len ceil32(baseURI.length)]
    if ceil32(baseURI.length) > baseURI.length:
        mem[baseURI.length + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224] = 0
    mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len ceil32(s)] = mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(s)]
    mem[s + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] = 32
    mem[s + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256] = mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[s + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if ceil32(mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) > mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]:
        mem[mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + s + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288] = 0
    return Array(len=mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192], data=mem[s + ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor9[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    if not stor4[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    mem[ceil32(arg4.length) + 128] = 41
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 201 len 23] >> 72,
                    0
    require stor4[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor4[arg3] - 1].field_256 != msg.sender:
        if not stor4[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[stor4[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 297 len 23] >> 72,
                    0
    require stor4[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor4[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 393 len 23] >> 72,
                    0
    require stor4[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor4[arg3] - 1].field_256, 0, arg3);
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
    if stor4[arg3]:
        require stor4[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor4[arg3] - 1].field_256 = arg2
        tokenByIndex[stor4[arg3] - 1].field_416 = 0
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
        stor4[arg3] = tokenByIndex.length
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

function sub_6dff30aa(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < stor19.length
    mem[0] = 19
    require ext_code.size(stor15)
    staticcall stor15.getAccountSnapshot(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(stor14)
    staticcall stor14.getAccountSnapshot(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if flashTokenAddress == sub_456dc17aAddress:
        require ext_code.size(lenderAddress)
        staticcall lenderAddress.flashFee(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args flashTokenAddress, ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 708] = this.address
        mem[(4 * ceil32(return_data.size)) + 740] = lenderAddress
        require ext_code.size(flashTokenAddress)
        staticcall flashTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), lenderAddress
        mem[(4 * ceil32(return_data.size)) + 704] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + ext_call.return_data[64] < ext_call.return_data[64]:
            revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 804 len 9 * ceil32(return_data.size)]
        if (2 * ext_call.return_data[0]) + ext_call.return_data[64] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 804 len 9 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 708] = lenderAddress
        mem[(6 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) + ext_call.return_data[64]
        require ext_code.size(flashTokenAddress)
        call flashTokenAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args lenderAddress, (2 * ext_call.return_data[0]) + ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 772 len 9 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 704] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 708] = this.address
        mem[(8 * ceil32(return_data.size)) + 740] = flashTokenAddress
        mem[(8 * ceil32(return_data.size)) + 772] = ext_call.return_data[64]
        mem[(8 * ceil32(return_data.size)) + 804] = 128
        mem[(8 * ceil32(return_data.size)) + 836] = 192
        mem[(8 * ceil32(return_data.size)) + 868 len 192] = ext_call.return_data[64], ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], 0, arg1
        require ext_code.size(lenderAddress)
        call lenderAddress.flashLoan(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor19[arg1].field_0 > stor20:
            mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 708] = 32
            mem[(8 * ceil32(return_data.size)) + 740] = 30
            mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: subtraction overflow'
            revert with memory
              from (8 * ceil32(return_data.size)) + 704
               len (15 * ceil32(return_data.size)) + 100
        stor20 -= stor19[arg1].field_0
        if stor19[arg1].field_256 > stor21:
            mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 708] = 32
            mem[(8 * ceil32(return_data.size)) + 740] = 30
            mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: subtraction overflow'
            revert with memory
              from (8 * ceil32(return_data.size)) + 704
               len (15 * ceil32(return_data.size)) + 100
        stor21 -= stor19[arg1].field_256
        if not stor4[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, Mask(184, 32, ext_call.return_data[64]) >> 32 >> 72,
                        0
        require stor4[arg1] - 1 < tokenByIndex.length
        approved[arg1] = 0
        if not stor4[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, ext_call.return_data[69 len 23] >> 72,
                        0
    else:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = flashTokenAddress
        mem[(2 * ceil32(return_data.size)) + 160] = sub_456dc17aAddress
        mem[(2 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[64]
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
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args ext_call.return_data[64], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _494 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[64 len 28]
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[64 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[64 len 28] + 223
        _497 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[64 len 28] + 192]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[64 len 28] + 192] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[64 len 28] + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[64 len 28] + 192]) + 224 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[64 len 28] + 192]) + 224
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[64 len 28] + 192]
        require return_data.size >= _494 + (32 * _497) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _497] = mem[(2 * ceil32(return_data.size)) + _494 + 224 len 32 * _497]
        require 0 < _497
        _927 = mem[(4 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 4] = flashTokenAddress
        mem[mem[64] + 36] = _927
        require ext_code.size(lenderAddress)
        staticcall lenderAddress.flashFee(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args flashTokenAddress, _927
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _950 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _953 = mem[_950]
        _968 = mem[64]
        mem[64] = mem[64] + 192
        mem[_968] = 0
        mem[_968 + 32] = 0
        mem[_968 + 64] = 0
        mem[_968 + 96] = 0
        mem[_968 + 128] = 0
        mem[_968 + 160] = 0
        _971 = mem[64]
        mem[64] = mem[64] + 192
        mem[_971] = _927
        mem[_971 + 32] = _953
        mem[_971 + 64] = ext_call.return_data[32]
        mem[_971 + 96] = ext_call.return_data[64]
        mem[_971 + 128] = 0
        mem[_971 + 160] = arg1
        _976 = mem[64]
        mem[mem[64] + 32] = _927
        mem[mem[64] + 64] = _953
        mem[mem[64] + 96] = ext_call.return_data[32]
        mem[mem[64] + 128] = ext_call.return_data[64]
        mem[mem[64] + 160] = 0
        mem[mem[64] + 192] = arg1
        _991 = mem[64]
        mem[mem[64]] = 192
        mem[_976 + 228] = this.address
        mem[_976 + 260] = lenderAddress
        require ext_code.size(flashTokenAddress)
        staticcall flashTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), lenderAddress
        mem[_976 + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _953 + _927 < _927:
            revert with 0, 'SafeMath: addition overflow'
        if _953 + _927 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        mem[_976 + ceil32(return_data.size) + 228] = lenderAddress
        mem[_976 + ceil32(return_data.size) + 260] = _953 + _927 + ext_call.return_data[0]
        require ext_code.size(flashTokenAddress)
        call flashTokenAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args lenderAddress, _953 + _927 + ext_call.return_data[0]
        mem[_976 + ceil32(return_data.size) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _976 + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_976 + (2 * ceil32(return_data.size)) + 224] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
        mem[_976 + (2 * ceil32(return_data.size)) + 228] = this.address
        mem[_976 + (2 * ceil32(return_data.size)) + 260] = flashTokenAddress
        mem[_976 + (2 * ceil32(return_data.size)) + 292] = _927
        mem[_976 + (2 * ceil32(return_data.size)) + 324] = 128
        _1009 = mem[_991]
        mem[_976 + (2 * ceil32(return_data.size)) + 356] = mem[_991]
        mem[_976 + (2 * ceil32(return_data.size)) + 388 len ceil32(_1009)] = mem[_991 + 32 len ceil32(_1009)]
        if ceil32(_1009) > _1009:
            mem[_1009 + _976 + (2 * ceil32(return_data.size)) + 388] = 0
        require ext_code.size(lenderAddress)
        call lenderAddress.flashLoan(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args address(this.address), flashTokenAddress, _927, 128, mem[_976 + (2 * ceil32(return_data.size)) + 356 len ceil32(_1009) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor19[arg1].field_0 > stor20:
            revert with 0, 'SafeMath: subtraction overflow'
        stor20 -= stor19[arg1].field_0
        if stor19[arg1].field_256 > stor21:
            revert with 0, 'SafeMath: subtraction overflow'
        stor21 -= stor19[arg1].field_256
        if not stor4[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[_976 + (4 * ceil32(return_data.size)) + 297 len 23] >> 72,
                        0
        require stor4[arg1] - 1 < tokenByIndex.length
        approved[arg1] = 0
        if not stor4[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[_976 + (4 * ceil32(return_data.size)) + 393 len 23] >> 72,
                        0
    ('bool', ('stor', ('map', ('param', 'arg1'), ('name', 'stor4', 4))))
    require stor4[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor4[arg1] - 1].field_256, 0, arg1);
    if Mask(255, 1, stor9[arg1].field_0 and (256 * not stor9[arg1].field_0) - 1):
        stor9[arg1].field_0 = 0
        if 31 < stor9[arg1].length:
            idx = 0
            while stor9[arg1].length + 31 / 32 > idx:
                stor9[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256][1][arg1]:
        require tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256] - 1 < tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256]
        require tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256][1][arg1] - 1 < tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256][tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256][1][arg1]] = tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256][tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256]]
        tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256][1][tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256][tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256]]] = tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256][1][arg1]
        require tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256][tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256]--
        tokenOfOwnerByIndex[stor3[stor4[arg1] - 1].field_256][1][arg1] = 0
    if stor4[arg1]:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor4[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor4[arg1] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
        tokenByIndex[stor4[arg1] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
        stor4[stor3[stor3.length - 1].field_0] = stor4[arg1]
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
        tokenByIndex.length--
        stor4[arg1] = 0
    emit Transfer(tokenByIndex[stor4[arg1] - 1].field_256, 0, arg1);
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if lenderAddress != msg.sender:
        revert with 0, 'FlashBorrower: Untrusted lender'
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FlashBorrower: Untrusted loan initiator'
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    require arg5.length >= 192
    mem[288] = cd[(arg5 + 36)]
    mem[320] = cd[(arg5 + 68)]
    mem[352] = cd[(arg5 + 100)]
    mem[384] = cd[(arg5 + 132)]
    require cd[(arg5 + 164)] == bool(cd[(arg5 + 164)])
    mem[416] = cd[(arg5 + 164)]
    mem[448] = cd[(arg5 + 196)]
    if 1 == bool(cd[(arg5 + 164)]):
        mem[484] = this.address
        require ext_code.size(flashTokenAddress)
        staticcall flashTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'PositionManager: Insuficient flashToken balance'
        mem[ceil32(return_data.size) + 484] = this.address
        require ext_code.size(supplyTokenAddress)
        staticcall supplyTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if flashTokenAddress == supplyTokenAddress:
            if ext_call.return_data[0] < cd[(arg5 + 100)]:
                revert with 0, 'PositionManager: Insuficient supplyToken balance'
            mem[(2 * ceil32(return_data.size)) + 484] = this.address
            require ext_code.size(supplyTokenAddress)
            staticcall supplyTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg5 + 100)]:
                revert with 0, 'PositionManager: Insufficient balance of positionToken'
            mem[(4 * ceil32(return_data.size)) + 484] = stor14
            mem[(4 * ceil32(return_data.size)) + 516] = cd[(arg5 + 100)]
            require ext_code.size(supplyTokenAddress)
            call supplyTokenAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor14, cd[(arg5 + 100)]
            mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor14)
            staticcall stor14.underlying() with:
                    gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(7 * ceil32(return_data.size)) + 484] = stor14
            mem[(7 * ceil32(return_data.size)) + 516] = cd[(arg5 + 100)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor14, cd[(arg5 + 100)]
            mem[(7 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 484] = this.address
            require ext_code.size(stor14)
            staticcall stor14.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(8 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(10 * ceil32(return_data.size)) + 484] = cd[(arg5 + 100)]
            require ext_code.size(stor14)
            call stor14.mint(uint256 rg1) with:
                 gas gas_remaining wei
                args cd[(arg5 + 100)]
            mem[(10 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Failed to mint cToken'
            mem[(11 * ceil32(return_data.size)) + 484] = this.address
            require ext_code.size(stor14)
            staticcall stor14.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(11 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(12 * ceil32(return_data.size)) + 480] = 1
            mem[(12 * ceil32(return_data.size)) + 512] = stor14
            mem[(12 * ceil32(return_data.size)) + 544] = 0xc299823800000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 548] = 32
            mem[(12 * ceil32(return_data.size)) + 580] = 1
            idx = 0
            s = (12 * ceil32(return_data.size)) + 512
            t = (12 * ceil32(return_data.size)) + 612
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(comptrollerAddress)
            call comptrollerAddress.enterMarkets(address[] rg1) with:
                 gas gas_remaining wei
                args Array(len=1, data=mem[(12 * ceil32(return_data.size)) + 612])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 544
            require return_data.size >= 32
            _397 = mem[(12 * ceil32(return_data.size)) + 544 len 4], 0
            require mem[(12 * ceil32(return_data.size)) + 544 len 4], 0 <= test266151307()
            require (12 * ceil32(return_data.size)) + return_data.size + 544 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 544 len 4], 0 + 575
            _402 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 544 len 4], 0 + 544]
            require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 544 len 4], 0 + 544] <= test266151307()
            require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 544 len 4], 0 + 544]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 544 len 4], 0 + 544]) + 576 <= test266151307()
            mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 544 len 4], 0 + 544]) + 576
            mem[(13 * ceil32(return_data.size)) + 544] = _402
            require return_data.size >= _397 + (32 * _402) + 32
            mem[(13 * ceil32(return_data.size)) + 576 len 32 * _402] = mem[(12 * ceil32(return_data.size)) + _397 + 576 len 32 * _402]
            require 0 < _402
            if mem[(13 * ceil32(return_data.size)) + 576] != 0:
                revert with 0, 'Comptroller.enterMarkets failed.'
            require ext_code.size(stor15)
            staticcall stor15.underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _794 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _799 = mem[_794]
            require mem[_794] == mem[_794 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_799))
            staticcall address(_799).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _830 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _839 = mem[_830]
            mem[mem[64] + 4] = cd[(arg5 + 132)]
            require ext_code.size(stor15)
            call stor15.borrow(uint256 rg1) with:
                 gas gas_remaining wei
                args cd[(arg5 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _859 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_859]:
                revert with 0, 'Failed to borrow from cToken'
            require ext_code.size(stor15)
            staticcall stor15.underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _877 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _881 = mem[_877]
            require mem[_877] == mem[_877 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_881))
            staticcall address(_881).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _894 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _839 > mem[_894]:
                revert with 0, 'SafeMath: subtraction overflow'
            if mem[_894] - _839 < cd[(arg5 + 132)]:
                revert with 0, 'borrowed !! >= _borrowAmount'
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_456dc17aAddress)
            staticcall sub_456dc17aAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _933 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_933] < cd[(arg5 + 132)]:
                revert with 0, 'PositionManager: Insuficient borrowToken balance'
            if arg4 + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            if flashTokenAddress == sub_456dc17aAddress:
                mem[mem[64] + 4] = this.address
                require ext_code.size(flashTokenAddress)
                staticcall flashTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _958 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_958] < arg4 + arg3:
                    revert with 0, 'PositionManager: Insuficient flashToken balance'
            else:
                mem[mem[64] + 4] = routerAddress
                mem[mem[64] + 36] = cd[(arg5 + 132)]
                require ext_code.size(sub_456dc17aAddress)
                call sub_456dc17aAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, cd[(arg5 + 132)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _959 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_959] == bool(mem[_959])
                _968 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_968]
                mem[_968 + 32] = sub_456dc17aAddress
                require 1 < mem[_968]
                mem[_968 + 64] = flashTokenAddress
                mem[_968 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_968 + 100] = cd[(arg5 + 132)]
                mem[_968 + 132] = arg4 + arg3
                mem[_968 + 164] = 160
                mem[_968 + 260] = mem[_968]
                idx = 0
                s = _968 + 32
                t = _968 + 292
                while idx < mem[_968]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_968 + 196] = this.address
                mem[_968 + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _968 + (32 * mem[_968]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1171 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1177 = mem[_1171]
                require mem[_1171] <= test266151307()
                require _1171 + return_data.size > _1171 + mem[_1171] + 31
                _1183 = mem[_1171 + mem[_1171]]
                require mem[_1171 + mem[_1171]] <= test266151307()
                require (32 * mem[_1171 + mem[_1171]]) + 32 >= 0 and _1171 + ceil32(return_data.size) + (32 * mem[_1171 + mem[_1171]]) + 32 <= test266151307()
                mem[64] = _1171 + ceil32(return_data.size) + (32 * mem[_1171 + mem[_1171]]) + 32
                mem[_1171 + ceil32(return_data.size)] = _1183
                require return_data.size >= _1177 + (32 * _1183) + 32
                mem[_1171 + ceil32(return_data.size) + 32 len 32 * _1183] = mem[_1171 + _1177 + 32 len 32 * _1183]
                require 1 < _1183
                mem[mem[64] + 4] = this.address
                require ext_code.size(flashTokenAddress)
                staticcall flashTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1376 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1376] < arg4 + arg3:
                    revert with 0, 'PositionManager: Insuficient flashToken balance'
        else:
            if ext_call.return_data[0] > cd[(arg5 + 100)]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 484] = routerAddress
            mem[(2 * ceil32(return_data.size)) + 516] = arg3
            require ext_code.size(flashTokenAddress)
            call flashTokenAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args routerAddress, arg3
            mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 480] = 2
            mem[(4 * ceil32(return_data.size)) + 512] = flashTokenAddress
            mem[(4 * ceil32(return_data.size)) + 544] = supplyTokenAddress
            mem[(4 * ceil32(return_data.size)) + 576] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 580] = arg3
            mem[(4 * ceil32(return_data.size)) + 612] = cd[(arg5 + 100)] - ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 644] = 160
            mem[(4 * ceil32(return_data.size)) + 740] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 512
            t = (4 * ceil32(return_data.size)) + 772
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 676] = this.address
            mem[(4 * ceil32(return_data.size)) + 708] = block.timestamp
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, cd[(arg5 + 100)] - ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 772 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 576
            require return_data.size >= 32
            _398 = mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32
            require mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 576 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 607
            _403 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 576]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 576] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 576]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 576]) + 608 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 576]) + 608
            mem[(6 * ceil32(return_data.size)) + 576] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 576]
            require return_data.size >= _398 + (32 * _403) + 32
            mem[(6 * ceil32(return_data.size)) + 608 len 32 * _403] = mem[(4 * ceil32(return_data.size)) + _398 + 608 len 32 * _403]
            require 1 < _403
            mem[mem[64] + 4] = this.address
            require ext_code.size(supplyTokenAddress)
            staticcall supplyTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _791 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_791] < cd[(arg5 + 100)]:
                revert with 0, 'PositionManager: Insuficient supplyToken balance'
            mem[mem[64] + 4] = this.address
            require ext_code.size(supplyTokenAddress)
            staticcall supplyTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _819 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_819] < cd[(arg5 + 100)]:
                revert with 0, 'PositionManager: Insufficient balance of positionToken'
            mem[mem[64] + 4] = stor14
            mem[mem[64] + 36] = cd[(arg5 + 100)]
            require ext_code.size(supplyTokenAddress)
            call supplyTokenAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor14, cd[(arg5 + 100)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _846 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_846] == bool(mem[_846])
            require ext_code.size(stor14)
            staticcall stor14.underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _875 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _879 = mem[_875]
            require mem[_875] == mem[_875 + 12 len 20]
            mem[mem[64] + 4] = stor14
            mem[mem[64] + 36] = cd[(arg5 + 100)]
            require ext_code.size(address(_879))
            call address(_879).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor14, cd[(arg5 + 100)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _892 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_892] == bool(mem[_892])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor14)
            staticcall stor14.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _911 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _918 = mem[_911]
            mem[mem[64] + 4] = cd[(arg5 + 100)]
            require ext_code.size(stor14)
            call stor14.mint(uint256 rg1) with:
                 gas gas_remaining wei
                args cd[(arg5 + 100)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _934 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_934]:
                revert with 0, 'Failed to mint cToken'
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor14)
            staticcall stor14.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _951 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _918 > mem[_951]:
                revert with 0, 'SafeMath: subtraction overflow'
            _972 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            require 0 < mem[_972]
            mem[_972 + 32] = stor14
            mem[_972 + 64] = 0xc299823800000000000000000000000000000000000000000000000000000000
            mem[_972 + 68] = 32
            mem[_972 + 100] = mem[_972]
            idx = 0
            s = _972 + 32
            t = _972 + 132
            while idx < mem[_972]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(comptrollerAddress)
            call comptrollerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _972 + (32 * mem[_972]) + -mem[64] + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1172 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1178 = mem[_1172]
            require mem[_1172] <= test266151307()
            require _1172 + return_data.size > _1172 + mem[_1172] + 31
            _1184 = mem[_1172 + mem[_1172]]
            require mem[_1172 + mem[_1172]] <= test266151307()
            require (32 * mem[_1172 + mem[_1172]]) + 32 >= 0 and _1172 + ceil32(return_data.size) + (32 * mem[_1172 + mem[_1172]]) + 32 <= test266151307()
            mem[64] = _1172 + ceil32(return_data.size) + (32 * mem[_1172 + mem[_1172]]) + 32
            mem[_1172 + ceil32(return_data.size)] = _1184
            require return_data.size >= _1178 + (32 * _1184) + 32
            mem[_1172 + ceil32(return_data.size) + 32 len 32 * _1184] = mem[_1172 + _1178 + 32 len 32 * _1184]
            require 0 < _1184
            if mem[_1172 + ceil32(return_data.size) + 32] != 0:
                revert with 0, 'Comptroller.enterMarkets failed.'
            _1368 = mem[384]
            require ext_code.size(stor15)
            staticcall stor15.underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1383 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1388 = mem[_1383]
            require mem[_1383] == mem[_1383 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1388))
            staticcall address(_1388).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1410 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1413 = mem[_1410]
            mem[mem[64] + 4] = _1368
            require ext_code.size(stor15)
            call stor15.borrow(uint256 rg1) with:
                 gas gas_remaining wei
                args _1368
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1424 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1424]:
                revert with 0, 'Failed to borrow from cToken'
            require ext_code.size(stor15)
            staticcall stor15.underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1433 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1435 = mem[_1433]
            require mem[_1433] == mem[_1433 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1435))
            staticcall address(_1435).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1441 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _1413 > mem[_1441]:
                revert with 0, 'SafeMath: subtraction overflow'
            if mem[_1441] - _1413 < _1368:
                revert with 0, 'borrowed !! >= _borrowAmount'
            _1453 = mem[384]
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_456dc17aAddress)
            staticcall sub_456dc17aAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1460 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1460] < _1453:
                revert with 0, 'PositionManager: Insuficient borrowToken balance'
            if arg4 + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            if flashTokenAddress == sub_456dc17aAddress:
                mem[mem[64] + 4] = this.address
                require ext_code.size(flashTokenAddress)
                staticcall flashTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1471 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1471] < arg4 + arg3:
                    revert with 0, 'PositionManager: Insuficient flashToken balance'
            else:
                mem[mem[64] + 4] = routerAddress
                mem[mem[64] + 36] = _1453
                require ext_code.size(sub_456dc17aAddress)
                call sub_456dc17aAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, _1453
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1472 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1472] == bool(mem[_1472])
                _1478 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1478]
                mem[_1478 + 32] = sub_456dc17aAddress
                require 1 < mem[_1478]
                mem[_1478 + 64] = flashTokenAddress
                mem[_1478 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1478 + 100] = _1453
                mem[_1478 + 132] = arg4 + arg3
                mem[_1478 + 164] = 160
                mem[_1478 + 260] = mem[_1478]
                idx = 0
                s = _1478 + 32
                t = _1478 + 292
                while idx < mem[_1478]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1478 + 196] = this.address
                mem[_1478 + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1478 + (32 * mem[_1478]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1506 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1508 = mem[_1506]
                require mem[_1506] <= test266151307()
                require _1506 + return_data.size > _1506 + mem[_1506] + 31
                _1510 = mem[_1506 + mem[_1506]]
                require mem[_1506 + mem[_1506]] <= test266151307()
                require (32 * mem[_1506 + mem[_1506]]) + 32 >= 0 and _1506 + ceil32(return_data.size) + (32 * mem[_1506 + mem[_1506]]) + 32 <= test266151307()
                mem[64] = _1506 + ceil32(return_data.size) + (32 * mem[_1506 + mem[_1506]]) + 32
                mem[_1506 + ceil32(return_data.size)] = _1510
                require return_data.size >= _1508 + (32 * _1510) + 32
                mem[_1506 + ceil32(return_data.size) + 32 len 32 * _1510] = mem[_1506 + _1508 + 32 len 32 * _1510]
                require 1 < _1510
                mem[mem[64] + 4] = this.address
                require ext_code.size(flashTokenAddress)
                staticcall flashTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1546 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1546] < arg4 + arg3:
                    revert with 0, 'PositionManager: Insuficient flashToken balance'
    else:
        if not cd[(arg5 + 164)]:
            mem[484] = this.address
            require ext_code.size(flashTokenAddress)
            staticcall flashTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                revert with 0, 'PositionManager: Insuficient flashToken balance'
            mem[ceil32(return_data.size) + 484] = this.address
            require ext_code.size(sub_456dc17aAddress)
            staticcall sub_456dc17aAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if flashTokenAddress == sub_456dc17aAddress:
                if ext_call.return_data[0] < cd[(arg5 + 132)]:
                    revert with 0, 'PositionManager: Insuficient supplyToken balance'
                mem[(2 * ceil32(return_data.size)) + 484] = this.address
                require ext_code.size(sub_456dc17aAddress)
                staticcall sub_456dc17aAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[(arg5 + 132)]:
                    revert with 0, 'PositionManager: insuficient borrowToken balance'
                require ext_code.size(stor15)
                staticcall stor15.underlying() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(6 * ceil32(return_data.size)) + 484] = stor15
                mem[(6 * ceil32(return_data.size)) + 516] = cd[(arg5 + 132)]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor15, cd[(arg5 + 132)]
                mem[(6 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(7 * ceil32(return_data.size)) + 484] = cd[(arg5 + 132)]
                require ext_code.size(stor15)
                call stor15.repayBorrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args cd[(arg5 + 132)]
                mem[(7 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'Failed to repay borrow from cToken'
                require ext_code.size(stor15)
                staticcall stor15.getAccountSnapshot(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(8 * ceil32(return_data.size)) + 480 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if ext_call.return_data[64] != 0:
                    revert with 0, 'PositionManager: Failed to pay back the full borrow balance'
                mem[(10 * ceil32(return_data.size)) + 484] = stor14
                mem[(10 * ceil32(return_data.size)) + 516] = cd[(arg5 + 100)]
                require ext_code.size(stor14)
                call stor14.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor14, cd[(arg5 + 100)]
                mem[(10 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor14)
                staticcall stor14.underlying() with:
                        gas gas_remaining wei
                mem[(11 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(12 * ceil32(return_data.size)) + 484] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(12 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(13 * ceil32(return_data.size)) + 484] = cd[(arg5 + 100)]
                require ext_code.size(stor14)
                call stor14.redeem(uint256 rg1) with:
                     gas gas_remaining wei
                    args cd[(arg5 + 100)]
                mem[(13 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'Failed to redeem cToken'
                require ext_code.size(stor14)
                staticcall stor14.underlying() with:
                        gas gas_remaining wei
                mem[(14 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(15 * ceil32(return_data.size)) + 484] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(15 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[(16 * ceil32(return_data.size)) + 484] = flashTokenAddress
                mem[(16 * ceil32(return_data.size)) + 516] = arg3
                require ext_code.size(lenderAddress)
                staticcall lenderAddress.flashFee(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args flashTokenAddress, arg3
                mem[(16 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + arg3 < arg3:
                    revert with 0, 'SafeMath: addition overflow'
                if flashTokenAddress == supplyTokenAddress:
                    mem[(18 * ceil32(return_data.size)) + 484] = this.address
                    require ext_code.size(supplyTokenAddress)
                    staticcall supplyTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(18 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0] + arg3:
                        revert with 0, 'PositionManager: Insuficient borrowToken balance'
                    if arg4 + arg3 < arg3:
                        revert with 0, 'SafeMath: addition overflow'
                    if flashTokenAddress == supplyTokenAddress:
                        require ext_code.size(flashTokenAddress)
                        staticcall flashTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg4 + arg3:
                            revert with 0, 'PositionManager: Insuficient flashToken balance'
                    else:
                        mem[(19 * ceil32(return_data.size)) + 484] = routerAddress
                        mem[(19 * ceil32(return_data.size)) + 516] = ext_call.return_data[0] + arg3
                        require ext_code.size(supplyTokenAddress)
                        call supplyTokenAddress.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0] + arg3
                        mem[(19 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(20 * ceil32(return_data.size)) + 480] = 2
                        mem[(20 * ceil32(return_data.size)) + 512] = supplyTokenAddress
                        mem[(20 * ceil32(return_data.size)) + 544] = flashTokenAddress
                        mem[(20 * ceil32(return_data.size)) + 576] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(20 * ceil32(return_data.size)) + 580] = ext_call.return_data[0] + arg3
                        mem[(20 * ceil32(return_data.size)) + 612] = arg4 + arg3
                        mem[(20 * ceil32(return_data.size)) + 644] = 160
                        mem[(20 * ceil32(return_data.size)) + 740] = 2
                        idx = 0
                        s = (20 * ceil32(return_data.size)) + 512
                        t = (20 * ceil32(return_data.size)) + 772
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(20 * ceil32(return_data.size)) + 676] = this.address
                        mem[(20 * ceil32(return_data.size)) + 708] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] + arg3, arg4 + arg3, Array(len=2, data=mem[(20 * ceil32(return_data.size)) + 772 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(20 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (21 * ceil32(return_data.size)) + 576
                        require return_data.size >= 32
                        _783 = mem[(20 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32
                        require mem[(20 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 <= test266151307()
                        require (20 * ceil32(return_data.size)) + return_data.size + 576 > (20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 607
                        _787 = mem[(20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 576]
                        require mem[(20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 576] <= test266151307()
                        require (32 * mem[(20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 576]) + 32 >= 0 and (21 * ceil32(return_data.size)) + (32 * mem[(20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 576]) + 608 <= test266151307()
                        mem[64] = (21 * ceil32(return_data.size)) + (32 * mem[(20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 576]) + 608
                        mem[(21 * ceil32(return_data.size)) + 576] = mem[(20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 576]
                        require return_data.size >= _783 + (32 * _787) + 32
                        mem[(21 * ceil32(return_data.size)) + 608 len 32 * _787] = mem[(20 * ceil32(return_data.size)) + _783 + 608 len 32 * _787]
                        require 1 < _787
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(flashTokenAddress)
                        staticcall flashTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1179 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1179] < arg4 + arg3:
                            revert with 0, 'PositionManager: Insuficient flashToken balance'
                else:
                    mem[(18 * ceil32(return_data.size)) + 484] = flashTokenAddress
                    mem[(18 * ceil32(return_data.size)) + 516] = arg3
                    require ext_code.size(lenderAddress)
                    staticcall lenderAddress.flashFee(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args flashTokenAddress, arg3
                    mem[(18 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg3 < arg3:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(19 * ceil32(return_data.size)) + 480] = 2
                    mem[(19 * ceil32(return_data.size)) + 512] = supplyTokenAddress
                    mem[(19 * ceil32(return_data.size)) + 544] = flashTokenAddress
                    mem[(19 * ceil32(return_data.size)) + 576] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 580] = ext_call.return_data[0] + arg3
                    mem[(19 * ceil32(return_data.size)) + 612] = 64
                    mem[(19 * ceil32(return_data.size)) + 644] = 2
                    idx = 0
                    s = (19 * ceil32(return_data.size)) + 512
                    t = (19 * ceil32(return_data.size)) + 676
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] + arg3, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 676 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 576
                    require return_data.size >= 32
                    _395 = mem[(19 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32
                    require mem[(19 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 <= test266151307()
                    require (19 * ceil32(return_data.size)) + return_data.size + 576 > (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 607
                    _400 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 576]
                    require mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 576] <= test266151307()
                    require (32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 576]) + 32 >= 0 and (20 * ceil32(return_data.size)) + (32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 576]) + 608 <= test266151307()
                    mem[64] = (20 * ceil32(return_data.size)) + (32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 576]) + 608
                    mem[(20 * ceil32(return_data.size)) + 576] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, ext_call.return_data[0] + arg3) >> 32 + 576]
                    require return_data.size >= _395 + (32 * _400) + 32
                    mem[(20 * ceil32(return_data.size)) + 608 len 32 * _400] = mem[(19 * ceil32(return_data.size)) + _395 + 608 len 32 * _400]
                    require 0 < _400
                    _772 = mem[(20 * ceil32(return_data.size)) + 608]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(supplyTokenAddress)
                    staticcall supplyTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _792 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_792] < _772:
                        revert with 0, 'PositionManager: Insuficient borrowToken balance'
                    if arg4 + arg3 < arg3:
                        revert with 0, 'SafeMath: addition overflow'
                    if flashTokenAddress == supplyTokenAddress:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(flashTokenAddress)
                        staticcall flashTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _827 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_827] < arg4 + arg3:
                            revert with 0, 'PositionManager: Insuficient flashToken balance'
                    else:
                        mem[mem[64] + 4] = routerAddress
                        mem[mem[64] + 36] = _772
                        require ext_code.size(supplyTokenAddress)
                        call supplyTokenAddress.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, _772
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _828 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_828] == bool(mem[_828])
                        _850 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_850]
                        mem[_850 + 32] = supplyTokenAddress
                        require 1 < mem[_850]
                        mem[_850 + 64] = flashTokenAddress
                        mem[_850 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_850 + 100] = _772
                        mem[_850 + 132] = arg4 + arg3
                        mem[_850 + 164] = 160
                        mem[_850 + 260] = mem[_850]
                        idx = 0
                        s = _850 + 32
                        t = _850 + 292
                        while idx < mem[_850]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_850 + 196] = this.address
                        mem[_850 + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _850 + (32 * mem[_850]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1168 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1174 = mem[_1168]
                        require mem[_1168] <= test266151307()
                        require _1168 + return_data.size > _1168 + mem[_1168] + 31
                        _1180 = mem[_1168 + mem[_1168]]
                        require mem[_1168 + mem[_1168]] <= test266151307()
                        require (32 * mem[_1168 + mem[_1168]]) + 32 >= 0 and _1168 + ceil32(return_data.size) + (32 * mem[_1168 + mem[_1168]]) + 32 <= test266151307()
                        mem[64] = _1168 + ceil32(return_data.size) + (32 * mem[_1168 + mem[_1168]]) + 32
                        mem[_1168 + ceil32(return_data.size)] = _1180
                        require return_data.size >= _1174 + (32 * _1180) + 32
                        mem[_1168 + ceil32(return_data.size) + 32 len 32 * _1180] = mem[_1168 + _1174 + 32 len 32 * _1180]
                        require 1 < _1180
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(flashTokenAddress)
                        staticcall flashTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1374 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1374] < arg4 + arg3:
                            revert with 0, 'PositionManager: Insuficient flashToken balance'
            else:
                if ext_call.return_data[0] > cd[(arg5 + 132)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[(2 * ceil32(return_data.size)) + 484] = routerAddress
                mem[(2 * ceil32(return_data.size)) + 516] = arg3
                require ext_code.size(flashTokenAddress)
                call flashTokenAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, arg3
                mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 480] = 2
                mem[(4 * ceil32(return_data.size)) + 512] = flashTokenAddress
                mem[(4 * ceil32(return_data.size)) + 544] = sub_456dc17aAddress
                mem[(4 * ceil32(return_data.size)) + 576] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 580] = arg3
                mem[(4 * ceil32(return_data.size)) + 612] = cd[(arg5 + 132)] - ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 644] = 160
                mem[(4 * ceil32(return_data.size)) + 740] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 512
                t = (4 * ceil32(return_data.size)) + 772
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 676] = this.address
                mem[(4 * ceil32(return_data.size)) + 708] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, cd[(arg5 + 132)] - ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 772 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 576
                require return_data.size >= 32
                _396 = mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32
                require mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 576 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 607
                _401 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 576]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 576] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 576]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 576]) + 608 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 576]) + 608
                mem[(6 * ceil32(return_data.size)) + 576] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, arg3) >> 32 + 576]
                require return_data.size >= _396 + (32 * _401) + 32
                mem[(6 * ceil32(return_data.size)) + 608 len 32 * _401] = mem[(4 * ceil32(return_data.size)) + _396 + 608 len 32 * _401]
                require 1 < _401
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_456dc17aAddress)
                staticcall sub_456dc17aAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _788 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_788] < cd[(arg5 + 132)]:
                    revert with 0, 'PositionManager: Insuficient supplyToken balance'
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_456dc17aAddress)
                staticcall sub_456dc17aAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _817 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_817] < cd[(arg5 + 132)]:
                    revert with 0, 'PositionManager: insuficient borrowToken balance'
                require ext_code.size(stor15)
                staticcall stor15.underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _844 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _852 = mem[_844]
                require mem[_844] == mem[_844 + 12 len 20]
                mem[mem[64] + 4] = stor15
                mem[mem[64] + 36] = cd[(arg5 + 132)]
                require ext_code.size(address(_852))
                call address(_852).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor15, cd[(arg5 + 132)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _876 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_876] == bool(mem[_876])
                mem[mem[64] + 4] = cd[(arg5 + 132)]
                require ext_code.size(stor15)
                call stor15.repayBorrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args cd[(arg5 + 132)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _890 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_890]:
                    revert with 0, 'Failed to repay borrow from cToken'
                require ext_code.size(stor15)
                staticcall stor15.getAccountSnapshot(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _909 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                if mem[_909 + 64] != 0:
                    revert with 0, 'PositionManager: Failed to pay back the full borrow balance'
                mem[mem[64] + 4] = stor14
                mem[mem[64] + 36] = cd[(arg5 + 100)]
                require ext_code.size(stor14)
                call stor14.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor14, cd[(arg5 + 100)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _939 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_939] == bool(mem[_939])
                require ext_code.size(stor14)
                staticcall stor14.underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _957 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _960 = mem[_957]
                require mem[_957] == mem[_957 + 12 len 20]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_960))
                staticcall address(_960).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _980 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _983 = mem[_980]
                mem[mem[64] + 4] = cd[(arg5 + 100)]
                require ext_code.size(stor14)
                call stor14.redeem(uint256 rg1) with:
                     gas gas_remaining wei
                    args cd[(arg5 + 100)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _992 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_992]:
                    revert with 0, 'Failed to redeem cToken'
                require ext_code.size(stor14)
                staticcall stor14.underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1002 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1003 = mem[_1002]
                require mem[_1002] == mem[_1002 + 12 len 20]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1003))
                staticcall address(_1003).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1020 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1020] > _983:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[mem[64] + 4] = flashTokenAddress
                mem[mem[64] + 36] = arg3
                require ext_code.size(lenderAddress)
                staticcall lenderAddress.flashFee(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args flashTokenAddress, arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1037 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1039 = mem[_1037]
                if mem[_1037] + arg3 < arg3:
                    revert with 0, 'SafeMath: addition overflow'
                if flashTokenAddress == supplyTokenAddress:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(supplyTokenAddress)
                    staticcall supplyTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1056 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1056] < _1039 + arg3:
                        revert with 0, 'PositionManager: Insuficient borrowToken balance'
                    if arg4 + arg3 < arg3:
                        revert with 0, 'SafeMath: addition overflow'
                    if flashTokenAddress == supplyTokenAddress:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(flashTokenAddress)
                        staticcall flashTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1078 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1078] < arg4 + arg3:
                            revert with 0, 'PositionManager: Insuficient flashToken balance'
                    else:
                        mem[mem[64] + 4] = routerAddress
                        mem[mem[64] + 36] = _1039 + arg3
                        require ext_code.size(supplyTokenAddress)
                        call supplyTokenAddress.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, _1039 + arg3
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1079 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1079] == bool(mem[_1079])
                        _1090 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1090]
                        mem[_1090 + 32] = supplyTokenAddress
                        require 1 < mem[_1090]
                        mem[_1090 + 64] = flashTokenAddress
                        mem[_1090 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1090 + 100] = _1039 + arg3
                        mem[_1090 + 132] = arg4 + arg3
                        mem[_1090 + 164] = 160
                        mem[_1090 + 260] = mem[_1090]
                        idx = 0
                        s = _1090 + 32
                        t = _1090 + 292
                        while idx < mem[_1090]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1090 + 196] = this.address
                        mem[_1090 + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1090 + (32 * mem[_1090]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1169 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1175 = mem[_1169]
                        require mem[_1169] <= test266151307()
                        require _1169 + return_data.size > _1169 + mem[_1169] + 31
                        _1181 = mem[_1169 + mem[_1169]]
                        require mem[_1169 + mem[_1169]] <= test266151307()
                        require (32 * mem[_1169 + mem[_1169]]) + 32 >= 0 and _1169 + ceil32(return_data.size) + (32 * mem[_1169 + mem[_1169]]) + 32 <= test266151307()
                        mem[64] = _1169 + ceil32(return_data.size) + (32 * mem[_1169 + mem[_1169]]) + 32
                        mem[_1169 + ceil32(return_data.size)] = _1181
                        require return_data.size >= _1175 + (32 * _1181) + 32
                        mem[_1169 + ceil32(return_data.size) + 32 len 32 * _1181] = mem[_1169 + _1175 + 32 len 32 * _1181]
                        require 1 < _1181
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(flashTokenAddress)
                        staticcall flashTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1375 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1375] < arg4 + arg3:
                            revert with 0, 'PositionManager: Insuficient flashToken balance'
                else:
                    mem[mem[64] + 4] = flashTokenAddress
                    mem[mem[64] + 36] = arg3
                    require ext_code.size(lenderAddress)
                    staticcall lenderAddress.flashFee(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args flashTokenAddress, arg3
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1054 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1057 = mem[_1054]
                    if mem[_1054] + arg3 < arg3:
                        revert with 0, 'SafeMath: addition overflow'
                    _1064 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1064]
                    mem[_1064 + 32] = supplyTokenAddress
                    require 1 < mem[_1064]
                    mem[_1064 + 64] = flashTokenAddress
                    mem[_1064 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[_1064 + 100] = _1057 + arg3
                    mem[_1064 + 132] = 64
                    mem[_1064 + 164] = mem[_1064]
                    idx = 0
                    s = _1064 + 32
                    t = _1064 + 196
                    while idx < mem[_1064]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1064 + (32 * mem[_1064]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1170 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1176 = mem[_1170]
                    require mem[_1170] <= test266151307()
                    require _1170 + return_data.size > _1170 + mem[_1170] + 31
                    _1182 = mem[_1170 + mem[_1170]]
                    require mem[_1170 + mem[_1170]] <= test266151307()
                    require (32 * mem[_1170 + mem[_1170]]) + 32 >= 0 and _1170 + ceil32(return_data.size) + (32 * mem[_1170 + mem[_1170]]) + 32 <= test266151307()
                    mem[64] = _1170 + ceil32(return_data.size) + (32 * mem[_1170 + mem[_1170]]) + 32
                    mem[_1170 + ceil32(return_data.size)] = _1182
                    require return_data.size >= _1176 + (32 * _1182) + 32
                    mem[_1170 + ceil32(return_data.size) + 32 len 32 * _1182] = mem[_1170 + _1176 + 32 len 32 * _1182]
                    require 0 < _1182
                    _1360 = mem[_1170 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(supplyTokenAddress)
                    staticcall supplyTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1379] < _1360:
                        revert with 0, 'PositionManager: Insuficient borrowToken balance'
                    if arg4 + arg3 < arg3:
                        revert with 0, 'SafeMath: addition overflow'
                    if flashTokenAddress == supplyTokenAddress:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(flashTokenAddress)
                        staticcall flashTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1408 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1408] < arg4 + arg3:
                            revert with 0, 'PositionManager: Insuficient flashToken balance'
                    else:
                        mem[mem[64] + 4] = routerAddress
                        mem[mem[64] + 36] = _1360
                        require ext_code.size(supplyTokenAddress)
                        call supplyTokenAddress.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, _1360
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1409 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1409] == bool(mem[_1409])
                        _1418 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1418]
                        mem[_1418 + 32] = supplyTokenAddress
                        require 1 < mem[_1418]
                        mem[_1418 + 64] = flashTokenAddress
                        mem[_1418 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1418 + 100] = _1360
                        mem[_1418 + 132] = arg4 + arg3
                        mem[_1418 + 164] = 160
                        mem[_1418 + 260] = mem[_1418]
                        idx = 0
                        s = _1418 + 32
                        t = _1418 + 292
                        while idx < mem[_1418]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1418 + 196] = this.address
                        mem[_1418 + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1418 + (32 * mem[_1418]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1505 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1507 = mem[_1505]
                        require mem[_1505] <= test266151307()
                        require _1505 + return_data.size > _1505 + mem[_1505] + 31
                        _1509 = mem[_1505 + mem[_1505]]
                        require mem[_1505 + mem[_1505]] <= test266151307()
                        require (32 * mem[_1505 + mem[_1505]]) + 32 >= 0 and _1505 + ceil32(return_data.size) + (32 * mem[_1505 + mem[_1505]]) + 32 <= test266151307()
                        mem[64] = _1505 + ceil32(return_data.size) + (32 * mem[_1505 + mem[_1505]]) + 32
                        mem[_1505 + ceil32(return_data.size)] = _1509
                        require return_data.size >= _1507 + (32 * _1509) + 32
                        mem[_1505 + ceil32(return_data.size) + 32 len 32 * _1509] = mem[_1505 + _1507 + 32 len 32 * _1509]
                        require 1 < _1509
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(flashTokenAddress)
                        staticcall flashTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1545 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1545] < arg4 + arg3:
                            revert with 0, 'PositionManager: Insuficient flashToken balance'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
