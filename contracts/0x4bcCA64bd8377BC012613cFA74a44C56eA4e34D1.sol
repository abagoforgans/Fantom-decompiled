contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_47a3dc27(?)
#  - sub_ec659413(?)
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
mapping of address sub_07a12994;
array of uint256 stor99;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor2[Mask(32, 224, arg1)])
}

function wFTM() payable {
    return wFTMAddress
}

function name() payable {
    return name[0 len name.length]
}

function sub_07a12994(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_07a12994[arg1]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function sub_204120bc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_204120bc[arg1].field_0, sub_204120bc[arg1].field_256
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    return tokenByIndex[arg1].field_0
}

function comptroller() payable {
    return address(stor1.length)
}

function ownerOf(uint256 arg1) payable {
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

function baseURI() payable {
    return baseURI[0 len baseURI.length].field_0
}

function sushiRouter() payable {
    return sushiRouterAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function getTokenSymbol(address arg1) payable {
    return tokenSymbol[address(arg1)][0 len tokenSymbol[address(arg1)].length].field_0
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_a7f595e0(?) payable {
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

function getTokenPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_204120bc[address(arg1)].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function sub_fb0b2b36(?) payable {
    return tokenSymbol[arg1][0 len tokenSymbol[arg1].length].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function balance(address arg1) payable {
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

function sub_96acf774(?) payable {
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

function sub_85d6810f(?) payable {
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

function sub_21746615(?) payable {
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

function approve(address arg1, uint256 arg2) payable {
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
    call arg1.transfer(address rg1, uint256 rg2) with:
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

function sub_dd41e3c2(?) payable {
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

function sub_d61359dc(?) payable {
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

function getPrice(string arg1, string arg2) payable {
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function tokenURI(uint256 arg1) payable {
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
        var35001 = ceil32(stor10[arg1].length)
        return Array(len=stor10[arg1].length, data=mem[128 len ceil32(stor10[arg1].length)])
    if stor10[arg1].length:
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(baseURI.length)] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(baseURI.length)]
        var33001 = ceil32(baseURI.length)
        if ceil32(baseURI.length) > baseURI.length:
            mem[baseURI.length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 192] = 0
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len ceil32(stor10[arg1].length)] = mem[128 len ceil32(stor10[arg1].length)]
        var39001 = ceil32(stor10[arg1].length)
        mem[stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 32
        mem[stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224] = mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160])]
        if ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160]) > mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160]:
            mem[mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160] + stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = 0
        return Array(len=mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160], data=mem[stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 160])]), 
    if not arg1:
        mem[ceil32(stor10[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(baseURI.length)] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(baseURI.length)]
        var37001 = ceil32(baseURI.length)
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

function sub_de5b6c61(?) payable {
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
            mem[mem[64] + 36] = ceil32(_614) + 96
            _801 = mem[_607]
            mem[ceil32(_614) + mem[64] + 100] = mem[_607]
            s = 0
            while s < _801:
                mem[s + ceil32(_614) + mem[64] + 132] = mem[s + _607 + 32]
                s = s + 32
                continue 
            if ceil32(_801) <= _801:
                require ext_code.size(stor13)
                staticcall stor13.getReferenceData(string rg1, string rg2) with:
                        gas gas_remaining wei
                       args 64, ceil32(_614) + 96, mem[mem[64] + 68 len ceil32(_801) + ceil32(_614) + 64]
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
                mem[_801 + ceil32(_614) + mem[64] + 132] = 0
                require ext_code.size(stor13)
                staticcall stor13.getReferenceData(string rg1, string rg2) with:
                        gas gas_remaining wei
                       args 64, ceil32(_614) + 96, mem[mem[64] + 68 len ceil32(_801) + ceil32(_614) + 64]
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
            mem[_614 + mem[64] + 100] = 0
            mem[mem[64] + 36] = ceil32(_614) + 96
            _802 = mem[_607]
            mem[ceil32(_614) + mem[64] + 100] = mem[_607]
            s = 0
            while s < _802:
                mem[s + ceil32(_614) + mem[64] + 132] = mem[s + _607 + 32]
                s = s + 32
                continue 
            if ceil32(_802) <= _802:
                require ext_code.size(stor13)
                staticcall stor13.getReferenceData(string rg1, string rg2) with:
                        gas gas_remaining wei
                       args 64, ceil32(_614) + 96, mem[mem[64] + 68 len _614 + 32], 0, mem[mem[64] + _614 + 132 len ceil32(_802) + ceil32(_614) - _614]
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
                mem[_802 + ceil32(_614) + mem[64] + 132] = 0
                require ext_code.size(stor13)
                staticcall stor13.getReferenceData(string rg1, string rg2) with:
                        gas gas_remaining wei
                       args 64, ceil32(_614) + 96, mem[mem[64] + 68 len _614 + 32], 0, mem[mem[64] + _614 + 132 len ceil32(_802) + ceil32(_614) - _614]
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
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 297 len 23] >> 72,
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
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 393 len 23] >> 72,
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
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            mem[ceil32(arg4.length) + 580] = arg4.length
            mem[ceil32(arg4.length) + 612 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[arg4.length + ceil32(arg4.length) + 612] = 0
            mem[(2 * ceil32(arg4.length)) + 612] = 50
            mem[(2 * ceil32(arg4.length)) + 644 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                mem[(2 * ceil32(arg4.length)) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 712] = 32
                mem[(2 * ceil32(arg4.length)) + 744] = 38
                mem[(2 * ceil32(arg4.length)) + 776] = 'Address: insufficient balance fo'
                mem[(2 * ceil32(arg4.length)) + 808] = 0x722063616c6c0000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(arg4.length)) + 708
                   len ceil32(arg4.length) + 132
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
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor5[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            mem[ceil32(arg4.length) + 644] = arg4.length
            mem[ceil32(arg4.length) + 676 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[arg4.length + ceil32(arg4.length) + 676] = 0
            mem[(2 * ceil32(arg4.length)) + 676] = 50
            mem[(2 * ceil32(arg4.length)) + 708 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                mem[(2 * ceil32(arg4.length)) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 776] = 32
                mem[(2 * ceil32(arg4.length)) + 808] = 38
                mem[(2 * ceil32(arg4.length)) + 840] = 'Address: insufficient balance fo'
                mem[(2 * ceil32(arg4.length)) + 872] = 0x722063616c6c0000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(arg4.length)) + 772
                   len ceil32(arg4.length) + 132
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

function updatePrices() payable {
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
                    staticcall stor13.getReferenceData(string rg1, string rg2) with:
                            gas gas_remaining wei
                           args 64, ceil32(_421) + 96, mem[mem[64] + 68 len _421 + 32], 0, mem[mem[64] + _421 + 132 len ceil32(_810) + ceil32(_421) - _421]
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
                    mem[_810 + ceil32(_421) + mem[64] + 132] = 0
                    require ext_code.size(stor13)
                    staticcall stor13.getReferenceData(string rg1, string rg2) with:
                            gas gas_remaining wei
                           args 64, ceil32(_421) + 96, mem[mem[64] + 68 len _421 + 32], 0, mem[mem[64] + _421 + 132 len ceil32(_810) + ceil32(_421) - _421]
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
            _1183 = mem[64]
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
                    staticcall stor13.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_1426) + ceil32(_1190) + _1183 + -mem[64] + 128]
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
                    mem[_1426 + ceil32(_1190) + _1183 + 132] = 0
                    require ext_code.size(stor13)
                    staticcall stor13.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_1426) + ceil32(_1190) + _1183 + -mem[64] + 128]
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

function sub_3301f60d(?) payable {
    require calldata.size - 4 >= 96
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
        _474 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_474] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_474 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_474 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _474
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    _475 = mem[64]
    require mem[64] + (32 * ('cd', 68).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 68).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_475] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = _475 + 32
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] != ('cd', 68).length:
        revert with 0, 'please make shure the arrays are same lenght'
    if ('cd', 68).length != mem[(32 * ('cd', 4).length) + 128]:
        revert with 0, 'please make shure the arrays are same lenght'
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        stor17.length++
        address(stor17[stor17.length].field_0) = mem[(32 * idx) + 140 len 20]
        require idx < mem[96]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 18
        _953 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
        mem[0] = sha3(mem[(32 * idx) + 140 len 20], 18)
        tokenSymbol[mem[(32 * idx) + 140 len 20]].field_0 = (2 * _953) + 1
        s = sha3(sha3(mem[(32 * idx) + 140 len 20], 18))
        t = mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32
        while mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + _953 + 32 > t:
            stor[s] = mem[t]
            s = s + 1
            t = t + 32
            continue 
        s = sha3(sha3(mem[(32 * idx) + 140 len 20], 18)) + (Mask(251, 0, _953 + 31) >> 5)
        while sha3(sha3(mem[(32 * idx) + 140 len 20], 18)) + (tokenSymbol[mem[(32 * idx) + 140 len 20]].length + 31 / 32) > s:
            stor[s] = 0
            s = s + 1
            continue 
        require idx < mem[_475]
        _1388 = mem[(32 * idx) + _475 + 32]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 20
        sub_07a12994[address(mem[(32 * idx) + 128])] = address(_1388)
        idx = idx + 1
        continue 
    _944 = mem[64]
    mem[64] = mem[64] + (32 * stor17.length) + 32
    mem[_944] = stor17.length
    if not stor17.length:
        idx = 0
        while idx < stor17.length:
            require idx < mem[_944]
            mem[0] = mem[(32 * idx) + _944 + 44 len 20]
            mem[32] = 18
            _1171 = sha3(mem[0], 18)
            _1172 = mem[64]
            mem[64] = mem[64] + ceil32(tokenSymbol[mem[0]].length) + 32
            mem[_1172] = tokenSymbol[mem[0]].length
            mem[0] = _1171
            mem[_1172 + 32] = stor[sha3(_1171)]
            s = _1172 + 32
            t = sha3(_1171)
            while _1172 + stor[_1171].length > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            _1380 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1380] = 3
            mem[_1380 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            _1384 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1384] = 0
            mem[_1384 + 32] = 0
            mem[_1384 + 64] = 0
            mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _1397 = mem[_1172]
            mem[mem[64] + 68] = mem[_1172]
            s = 0
            while s < _1397:
                mem[s + mem[64] + 100] = mem[s + _1172 + 32]
                s = s + 32
                continue 
            if ceil32(_1397) <= _1397:
                mem[mem[64] + 36] = ceil32(_1397) + 96
                _1785 = mem[_1380]
                mem[ceil32(_1397) + mem[64] + 100] = mem[_1380]
                s = 0
                while s < _1785:
                    mem[s + ceil32(_1397) + mem[64] + 132] = mem[s + _1380 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1785) <= _1785:
                    require ext_code.size(stor13)
                    staticcall stor13.getReferenceData(string rg1, string rg2) with:
                            gas gas_remaining wei
                           args 64, ceil32(_1397) + 96, mem[mem[64] + 68 len ceil32(_1785) + ceil32(_1397) + 64]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2162 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2171 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2171] = mem[_2162]
                    mem[_2171 + 32] = mem[_2162 + 32]
                    mem[_2171 + 64] = mem[_2162 + 64]
                    _2196 = mem[_2171]
                    _2210 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2210] = 0
                    mem[_2210 + 32] = 0
                    _2214 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2214] = _2196
                    mem[_2214 + 32] = block.timestamp
                    require idx < mem[_944]
                    mem[0] = mem[(32 * idx) + _944 + 44 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[0]].field_0 = _2196
                else:
                    mem[_1785 + ceil32(_1397) + mem[64] + 132] = 0
                    require ext_code.size(stor13)
                    staticcall stor13.getReferenceData(string rg1, string rg2) with:
                            gas gas_remaining wei
                           args 64, ceil32(_1397) + 96, mem[mem[64] + 68 len ceil32(_1785) + ceil32(_1397) + 64]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2163 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2172 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2172] = mem[_2163]
                    mem[_2172 + 32] = mem[_2163 + 32]
                    mem[_2172 + 64] = mem[_2163 + 64]
                    _2197 = mem[_2172]
                    _2211 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2211] = 0
                    mem[_2211 + 32] = 0
                    _2216 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2216] = _2197
                    mem[_2216 + 32] = block.timestamp
                    require idx < mem[_944]
                    mem[0] = mem[(32 * idx) + _944 + 44 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[0]].field_0 = _2197
            else:
                mem[_1397 + mem[64] + 100] = 0
                mem[mem[64] + 36] = ceil32(_1397) + 96
                _1786 = mem[_1380]
                mem[ceil32(_1397) + mem[64] + 100] = mem[_1380]
                s = 0
                while s < _1786:
                    mem[s + ceil32(_1397) + mem[64] + 132] = mem[s + _1380 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1786) <= _1786:
                    require ext_code.size(stor13)
                    staticcall stor13.getReferenceData(string rg1, string rg2) with:
                            gas gas_remaining wei
                           args 64, ceil32(_1397) + 96, mem[mem[64] + 68 len _1397 + 32], 0, mem[mem[64] + _1397 + 132 len ceil32(_1786) + ceil32(_1397) - _1397]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2164 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2173 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2173] = mem[_2164]
                    mem[_2173 + 32] = mem[_2164 + 32]
                    mem[_2173 + 64] = mem[_2164 + 64]
                    _2198 = mem[_2173]
                    _2212 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2212] = 0
                    mem[_2212 + 32] = 0
                    _2218 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2218] = _2198
                    mem[_2218 + 32] = block.timestamp
                    require idx < mem[_944]
                    mem[0] = mem[(32 * idx) + _944 + 44 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[0]].field_0 = _2198
                else:
                    mem[_1786 + ceil32(_1397) + mem[64] + 132] = 0
                    require ext_code.size(stor13)
                    staticcall stor13.getReferenceData(string rg1, string rg2) with:
                            gas gas_remaining wei
                           args 64, ceil32(_1397) + 96, mem[mem[64] + 68 len _1397 + 32], 0, mem[mem[64] + _1397 + 132 len ceil32(_1786) + ceil32(_1397) - _1397]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2165 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2174 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2174] = mem[_2165]
                    mem[_2174 + 32] = mem[_2165 + 32]
                    mem[_2174 + 64] = mem[_2165 + 64]
                    _2199 = mem[_2174]
                    _2213 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2213] = 0
                    mem[_2213 + 32] = 0
                    _2220 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2220] = _2199
                    mem[_2220 + 32] = block.timestamp
                    require idx < mem[_944]
                    mem[0] = mem[(32 * idx) + _944 + 44 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[0]].field_0 = _2199
            sub_204120bc[mem[0]].field_256 = block.timestamp
            idx = idx + 1
            continue 
    else:
        mem[0] = 17
        mem[_944 + 32] = address(stor17.field_0)
        idx = _944 + 32
        s = 0
        while _944 + (32 * stor17.length) > idx:
            mem[idx + 32] = address(stor17[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < stor17.length:
            require idx < mem[_944]
            mem[0] = mem[(32 * idx) + _944 + 44 len 20]
            mem[32] = 18
            _1777 = sha3(mem[0], 18)
            _1778 = mem[64]
            mem[64] = mem[64] + ceil32(tokenSymbol[mem[0]].length) + 32
            mem[_1778] = tokenSymbol[mem[0]].length
            mem[0] = _1777
            mem[_1778 + 32] = stor[sha3(_1777)]
            s = _1778 + 32
            t = sha3(_1777)
            while _1778 + stor[_1777].length > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            _2151 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2151] = 3
            mem[_2151 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            _2152 = mem[64]
            mem[64] = mem[64] + 96
            mem[_2152] = 0
            mem[_2152 + 32] = 0
            mem[_2152 + 64] = 0
            _2159 = mem[64]
            mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _2166 = mem[_1778]
            mem[mem[64] + 68] = mem[_1778]
            s = 0
            while s < _2166:
                mem[s + mem[64] + 100] = mem[s + _1778 + 32]
                s = s + 32
                continue 
            if ceil32(_2166) <= _2166:
                mem[_2159 + 36] = ceil32(_2166) + 96
                _2401 = mem[_2151]
                mem[ceil32(_2166) + _2159 + 100] = mem[_2151]
                s = 0
                while s < _2401:
                    mem[s + ceil32(_2166) + _2159 + 132] = mem[s + _2151 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2401) <= _2401:
                    require ext_code.size(stor13)
                    staticcall stor13.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_2401) + ceil32(_2166) + _2159 + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2575 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2579 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2579] = mem[_2575]
                    mem[_2579 + 32] = mem[_2575 + 32]
                    mem[_2579 + 64] = mem[_2575 + 64]
                    _2595 = mem[_2579]
                    _2599 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2599] = 0
                    mem[_2599 + 32] = 0
                    _2603 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2603] = _2595
                    mem[_2603 + 32] = block.timestamp
                    require idx < mem[_944]
                    mem[0] = mem[(32 * idx) + _944 + 44 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[0]].field_0 = _2595
                else:
                    mem[_2401 + ceil32(_2166) + _2159 + 132] = 0
                    require ext_code.size(stor13)
                    staticcall stor13.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_2401) + ceil32(_2166) + _2159 + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2576 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2580 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2580] = mem[_2576]
                    mem[_2580 + 32] = mem[_2576 + 32]
                    mem[_2580 + 64] = mem[_2576 + 64]
                    _2596 = mem[_2580]
                    _2600 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2600] = 0
                    mem[_2600 + 32] = 0
                    _2605 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2605] = _2596
                    mem[_2605 + 32] = block.timestamp
                    require idx < mem[_944]
                    mem[0] = mem[(32 * idx) + _944 + 44 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[0]].field_0 = _2596
            else:
                mem[_2166 + _2159 + 100] = 0
                mem[_2159 + 36] = ceil32(_2166) + 96
                _2402 = mem[_2151]
                mem[ceil32(_2166) + _2159 + 100] = mem[_2151]
                s = 0
                while s < _2402:
                    mem[s + ceil32(_2166) + _2159 + 132] = mem[s + _2151 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2402) <= _2402:
                    require ext_code.size(stor13)
                    staticcall stor13.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_2402) + ceil32(_2166) + _2159 + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2577 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2581 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2581] = mem[_2577]
                    mem[_2581 + 32] = mem[_2577 + 32]
                    mem[_2581 + 64] = mem[_2577 + 64]
                    _2597 = mem[_2581]
                    _2601 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2601] = 0
                    mem[_2601 + 32] = 0
                    _2607 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2607] = _2597
                    mem[_2607 + 32] = block.timestamp
                    require idx < mem[_944]
                    mem[0] = mem[(32 * idx) + _944 + 44 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[0]].field_0 = _2597
                else:
                    mem[_2402 + ceil32(_2166) + _2159 + 132] = 0
                    require ext_code.size(stor13)
                    staticcall stor13.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_2402) + ceil32(_2166) + _2159 + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2578 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2582 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2582] = mem[_2578]
                    mem[_2582 + 32] = mem[_2578 + 32]
                    mem[_2582 + 64] = mem[_2578 + 64]
                    _2598 = mem[_2582]
                    _2602 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2602] = 0
                    mem[_2602 + 32] = 0
                    _2609 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2609] = _2598
                    mem[_2609 + 32] = block.timestamp
                    require idx < mem[_944]
                    mem[0] = mem[(32 * idx) + _944 + 44 len 20]
                    mem[32] = 19
                    sub_204120bc[mem[0]].field_0 = _2598
            sub_204120bc[mem[0]].field_256 = block.timestamp
            idx = idx + 1
            continue 
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
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
    mem[96] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[128] = 160
    require arg5.length >= 352
    mem[480] = cd[(arg5 + 36)]
    require arg5.length - 32 >= 320
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    mem[544] = cd[(arg5 + 68)]
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    mem[576] = cd[(arg5 + 100)]
    mem[608] = cd[(arg5 + 132)]
    mem[640] = cd[(arg5 + 164)]
    mem[672] = cd[(arg5 + 196)]
    mem[704] = cd[(arg5 + 228)]
    mem[736] = cd[(arg5 + 260)]
    mem[768] = cd[(arg5 + 292)]
    mem[800] = cd[(arg5 + 324)]
    mem[832] = cd[(arg5 + 356)]
    mem[512] = 544
    mem[32] = 20
    mem[0] = address(cd[(arg5 + 100)])
    mem[868] = sushiRouterAddress
    mem[900] = arg3
    require ext_code.size(wFTMAddress)
    call wFTMAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sushiRouterAddress, arg3
    mem[864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if wFTMAddress == address(cd[(arg5 + 68)]):
        mem[ceil32(return_data.size) + 868] = this.address
        require ext_code.size(address(cd[(arg5 + 68)]))
        staticcall address(cd[(arg5 + 68)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 864] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[(arg5 + 164)]:
            revert with 0, 'Not enough of positionToken to supply to cream'
        mem[(2 * ceil32(return_data.size)) + 868] = sub_07a12994[address(cd[(arg5 + 68)])]
        mem[(2 * ceil32(return_data.size)) + 900] = cd[(arg5 + 164)]
        require ext_code.size(address(cd[(arg5 + 68)]))
        call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_07a12994[address(cd[(arg5 + 68)])], cd[(arg5 + 164)]
        mem[(2 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 68)])])
        staticcall sub_07a12994[address(cd[(arg5 + 68)])].underlying() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 868] = sub_07a12994[address(cd[(arg5 + 68)])]
        mem[(6 * ceil32(return_data.size)) + 900] = cd[(arg5 + 164)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_07a12994[address(cd[(arg5 + 68)])], cd[(arg5 + 164)]
        mem[(6 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 868] = this.address
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 68)])])
        staticcall sub_07a12994[address(cd[(arg5 + 68)])].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 868] = cd[(arg5 + 164)]
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 68)])])
        call sub_07a12994[address(cd[(arg5 + 68)])].mint(uint256 rg1) with:
             gas gas_remaining wei
            args cd[(arg5 + 164)]
        mem[(8 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Failed to mint cToken'
        mem[(10 * ceil32(return_data.size)) + 868] = this.address
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 68)])])
        staticcall sub_07a12994[address(cd[(arg5 + 68)])].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(10 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[(11 * ceil32(return_data.size)) + 864] = 1
        mem[(11 * ceil32(return_data.size)) + 896] = sub_07a12994[address(cd[(arg5 + 68)])]
        mem[(11 * ceil32(return_data.size)) + 928] = 0xc299823800000000000000000000000000000000000000000000000000000000
        mem[(11 * ceil32(return_data.size)) + 932] = 32
        mem[(11 * ceil32(return_data.size)) + 964] = 1
        idx = 0
        s = (11 * ceil32(return_data.size)) + 896
        t = (11 * ceil32(return_data.size)) + 996
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(stor1.length))
        call address(stor1.length).enterMarkets(address[] rg1) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[(11 * ceil32(return_data.size)) + 996])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(11 * ceil32(return_data.size)) + 928 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (12 * ceil32(return_data.size)) + 928
        require return_data.size >= 32
        _173 = mem[(11 * ceil32(return_data.size)) + 928 len 4], 0
        require mem[(11 * ceil32(return_data.size)) + 928 len 4], 0 <= test266151307()
        require (11 * ceil32(return_data.size)) + return_data.size + 928 > (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 928 len 4], 0 + 959
        _175 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 928 len 4], 0 + 928]
        require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 928 len 4], 0 + 928] <= test266151307()
        require (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 928 len 4], 0 + 928]) + 32 >= 0 and (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 928 len 4], 0 + 928]) + 960 <= test266151307()
        mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 928 len 4], 0 + 928]) + 960
        mem[(12 * ceil32(return_data.size)) + 928] = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 928 len 4], 0 + 928]
        require return_data.size >= _173 + (32 * _175) + 32
        mem[(12 * ceil32(return_data.size)) + 960 len 32 * _175] = mem[(11 * ceil32(return_data.size)) + _173 + 960 len 32 * _175]
        require 0 < _175
        if mem[(12 * ceil32(return_data.size)) + 960] != 0:
            revert with 0, 'Comptroller.enterMarkets failed.'
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 100)])])
        staticcall sub_07a12994[address(cd[(arg5 + 100)])].underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _362 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _364 = mem[_362]
        require mem[_362] == mem[_362 + 12 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_364))
        staticcall address(_364).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _374 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _375 = mem[_374]
        mem[mem[64] + 4] = cd[(arg5 + 196)]
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 100)])])
        call sub_07a12994[address(cd[(arg5 + 100)])].borrow(uint256 rg1) with:
             gas gas_remaining wei
            args cd[(arg5 + 196)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _381 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_381]:
            revert with 0, 'Failed to borrow from cToken'
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 100)])])
        staticcall sub_07a12994[address(cd[(arg5 + 100)])].underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _389 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _391 = mem[_389]
        require mem[_389] == mem[_389 + 12 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_391))
        staticcall address(_391).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _397 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _375 > mem[_397]:
            revert with 0, 'SafeMath: subtraction overflow'
        if mem[_397] - _375 < cd[(arg5 + 196)]:
            revert with 0, 'borrowed !! >= _borrowAmount'
        mem[mem[64] + 4] = sushiRouterAddress
        mem[mem[64] + 36] = cd[(arg5 + 196)]
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sushiRouterAddress, cd[(arg5 + 196)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _412 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_412] == bool(mem[_412])
        if address(cd[(arg5 + 100)]) == wFTMAddress:
            if arg4 + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(wFTMAddress)
            staticcall wFTMAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _430 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_430] < arg4 + arg3:
                revert with 0, 'Not enough of Flashtoken to pay back flashloan'
        else:
            _419 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_419]
            mem[_419 + 32] = address(cd[(arg5 + 100)])
            require 1 < mem[_419]
            mem[_419 + 64] = wFTMAddress
            mem[_419 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_419 + 100] = cd[(arg5 + 196)]
            mem[_419 + 132] = 1
            mem[_419 + 164] = 160
            mem[_419 + 260] = mem[_419]
            idx = 0
            s = _419 + 32
            t = _419 + 292
            while idx < mem[_419]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_419 + 196] = this.address
            mem[_419 + 228] = block.timestamp
            require ext_code.size(sushiRouterAddress)
            call sushiRouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _419 + (32 * mem[_419]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _533 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _535 = mem[_533]
            require mem[_533] <= test266151307()
            require _533 + return_data.size > _533 + mem[_533] + 31
            _537 = mem[_533 + mem[_533]]
            require mem[_533 + mem[_533]] <= test266151307()
            require (32 * mem[_533 + mem[_533]]) + 32 >= 0 and _533 + ceil32(return_data.size) + (32 * mem[_533 + mem[_533]]) + 32 <= test266151307()
            mem[64] = _533 + ceil32(return_data.size) + (32 * mem[_533 + mem[_533]]) + 32
            mem[_533 + ceil32(return_data.size)] = _537
            require return_data.size >= _535 + (32 * _537) + 32
            mem[_533 + ceil32(return_data.size) + 32 len 32 * _537] = mem[_533 + _535 + 32 len 32 * _537]
            require 1 < _537
            if arg4 + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(wFTMAddress)
            staticcall wFTMAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_639] < arg4 + arg3:
                revert with 0, 'Not enough of Flashtoken to pay back flashloan'
    else:
        mem[ceil32(return_data.size) + 864] = 2
        mem[ceil32(return_data.size) + 896] = wFTMAddress
        mem[ceil32(return_data.size) + 928] = address(cd[(arg5 + 68)])
        mem[ceil32(return_data.size) + 960] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 964] = arg3
        mem[ceil32(return_data.size) + 996] = 1
        mem[ceil32(return_data.size) + 1028] = 160
        mem[ceil32(return_data.size) + 1124] = 2
        idx = 0
        s = ceil32(return_data.size) + 896
        t = ceil32(return_data.size) + 1156
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 1060] = this.address
        mem[ceil32(return_data.size) + 1092] = block.timestamp
        require ext_code.size(sushiRouterAddress)
        call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 1, Array(len=2, data=mem[ceil32(return_data.size) + 1156 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 960
        require return_data.size >= 32
        _174 = mem[ceil32(return_data.size) + 960 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 960 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 960 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 960 len 4], Mask(224, 32, arg3) >> 32 + 991
        _176 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 960 len 4], Mask(224, 32, arg3) >> 32 + 960]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 960 len 4], Mask(224, 32, arg3) >> 32 + 960] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 960 len 4], Mask(224, 32, arg3) >> 32 + 960]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 960 len 4], Mask(224, 32, arg3) >> 32 + 960]) + 992 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 960 len 4], Mask(224, 32, arg3) >> 32 + 960]) + 992
        mem[(2 * ceil32(return_data.size)) + 960] = _176
        require return_data.size >= _174 + (32 * _176) + 32
        mem[(2 * ceil32(return_data.size)) + 992 len 32 * _176] = mem[ceil32(return_data.size) + _174 + 992 len 32 * _176]
        require 1 < _176
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 68)]))
        staticcall address(cd[(arg5 + 68)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _363 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_363] < cd[(arg5 + 164)]:
            revert with 0, 'Not enough of positionToken to supply to cream'
        mem[mem[64] + 4] = sub_07a12994[address(cd[(arg5 + 68)])]
        mem[mem[64] + 36] = cd[(arg5 + 164)]
        require ext_code.size(address(cd[(arg5 + 68)]))
        call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_07a12994[address(cd[(arg5 + 68)])], cd[(arg5 + 164)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _371 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_371] == bool(mem[_371])
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 68)])])
        staticcall sub_07a12994[address(cd[(arg5 + 68)])].underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _380 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _382 = mem[_380]
        require mem[_380] == mem[_380 + 12 len 20]
        mem[mem[64] + 4] = sub_07a12994[address(cd[(arg5 + 68)])]
        mem[mem[64] + 36] = cd[(arg5 + 164)]
        require ext_code.size(address(_382))
        call address(_382).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_07a12994[address(cd[(arg5 + 68)])], cd[(arg5 + 164)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _392 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_392] == bool(mem[_392])
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 68)])])
        staticcall sub_07a12994[address(cd[(arg5 + 68)])].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _400 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _401 = mem[_400]
        mem[mem[64] + 4] = cd[(arg5 + 164)]
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 68)])])
        call sub_07a12994[address(cd[(arg5 + 68)])].mint(uint256 rg1) with:
             gas gas_remaining wei
            args cd[(arg5 + 164)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _408 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_408]:
            revert with 0, 'Failed to mint cToken'
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 68)])])
        staticcall sub_07a12994[address(cd[(arg5 + 68)])].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _418 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _401 > mem[_418]:
            revert with 0, 'SafeMath: subtraction overflow'
        _433 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        require 0 < mem[_433]
        mem[_433 + 32] = sub_07a12994[address(cd[(arg5 + 68)])]
        mem[_433 + 64] = 0xc299823800000000000000000000000000000000000000000000000000000000
        mem[_433 + 68] = 32
        mem[_433 + 100] = mem[_433]
        idx = 0
        s = _433 + 32
        t = _433 + 132
        while idx < mem[_433]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(stor1.length))
        call address(stor1.length).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _433 + (32 * mem[_433]) + -mem[64] + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _534 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _536 = mem[_534]
        require mem[_534] <= test266151307()
        require _534 + return_data.size > _534 + mem[_534] + 31
        _538 = mem[_534 + mem[_534]]
        require mem[_534 + mem[_534]] <= test266151307()
        require (32 * mem[_534 + mem[_534]]) + 32 >= 0 and _534 + ceil32(return_data.size) + (32 * mem[_534 + mem[_534]]) + 32 <= test266151307()
        mem[64] = _534 + ceil32(return_data.size) + (32 * mem[_534 + mem[_534]]) + 32
        mem[_534 + ceil32(return_data.size)] = _538
        require return_data.size >= _536 + (32 * _538) + 32
        mem[_534 + ceil32(return_data.size) + 32 len 32 * _538] = mem[_534 + _536 + 32 len 32 * _538]
        require 0 < _538
        if mem[_534 + ceil32(return_data.size) + 32] != 0:
            revert with 0, 'Comptroller.enterMarkets failed.'
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 100)])])
        staticcall sub_07a12994[address(cd[(arg5 + 100)])].underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _635 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _638 = mem[_635]
        require mem[_635] == mem[_635 + 12 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_638))
        staticcall address(_638).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _647 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _648 = mem[_647]
        mem[mem[64] + 4] = cd[(arg5 + 196)]
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 100)])])
        call sub_07a12994[address(cd[(arg5 + 100)])].borrow(uint256 rg1) with:
             gas gas_remaining wei
            args cd[(arg5 + 196)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _651 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_651]:
            revert with 0, 'Failed to borrow from cToken'
        require ext_code.size(sub_07a12994[address(cd[(arg5 + 100)])])
        staticcall sub_07a12994[address(cd[(arg5 + 100)])].underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _657 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _658 = mem[_657]
        require mem[_657] == mem[_657 + 12 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_658))
        staticcall address(_658).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _661 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _648 > mem[_661]:
            revert with 0, 'SafeMath: subtraction overflow'
        if mem[_661] - _648 < cd[(arg5 + 196)]:
            revert with 0, 'borrowed !! >= _borrowAmount'
        mem[mem[64] + 4] = sushiRouterAddress
        mem[mem[64] + 36] = cd[(arg5 + 196)]
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sushiRouterAddress, cd[(arg5 + 196)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _669 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_669] == bool(mem[_669])
        if address(cd[(arg5 + 100)]) == wFTMAddress:
            if arg4 + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(wFTMAddress)
            staticcall wFTMAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _680 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_680] < arg4 + arg3:
                revert with 0, 'Not enough of Flashtoken to pay back flashloan'
        else:
            _671 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_671]
            mem[_671 + 32] = address(cd[(arg5 + 100)])
            require 1 < mem[_671]
            mem[_671 + 64] = wFTMAddress
            mem[_671 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_671 + 100] = cd[(arg5 + 196)]
            mem[_671 + 132] = 1
            mem[_671 + 164] = 160
            mem[_671 + 260] = mem[_671]
            idx = 0
            s = _671 + 32
            t = _671 + 292
            while idx < mem[_671]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_671 + 196] = this.address
            mem[_671 + 228] = block.timestamp
            require ext_code.size(sushiRouterAddress)
            call sushiRouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _671 + (32 * mem[_671]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _707 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _708 = mem[_707]
            require mem[_707] <= test266151307()
            require _707 + return_data.size > _707 + mem[_707] + 31
            _709 = mem[_707 + mem[_707]]
            require mem[_707 + mem[_707]] <= test266151307()
            require (32 * mem[_707 + mem[_707]]) + 32 >= 0 and _707 + ceil32(return_data.size) + (32 * mem[_707 + mem[_707]]) + 32 <= test266151307()
            mem[64] = _707 + ceil32(return_data.size) + (32 * mem[_707 + mem[_707]]) + 32
            mem[_707 + ceil32(return_data.size)] = _709
            require return_data.size >= _708 + (32 * _709) + 32
            mem[_707 + ceil32(return_data.size) + 32 len 32 * _709] = mem[_707 + _708 + 32 len 32 * _709]
            require 1 < _709
            if arg4 + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(wFTMAddress)
            staticcall wFTMAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _731 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_731] < arg4 + arg3:
                revert with 0, 'Not enough of Flashtoken to pay back flashloan'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
