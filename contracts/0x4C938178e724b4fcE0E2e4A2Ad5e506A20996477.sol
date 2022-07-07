contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
uint256 sub_ef5ec1da;
uint256 sub_de2c19c0;

function owner() payable {
    return owner
}

function sub_de2c19c0(?) payable {
    return sub_de2c19c0
}

function sub_ef5ec1da(?) payable {
    return sub_ef5ec1da
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_7340476a(?) payable {
    require ext_code.size(stor1)
    staticcall stor1.next_summoner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_de2c19c0 = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.summon(uint256 arg1) with:
         gas gas_remaining wei
        args 8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_d248f0b1(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor6)
    staticcall stor6.get_item_cost(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    staticcall stor4.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args sub_ef5ec1da
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= ext_call.return_data[0]
}

function calculate(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor6)
    staticcall stor6.get_dc(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 5:
        revert with 0, 17
    if ext_call.return_data[0] - 5 > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    if (10 * ext_call.return_data[0]) - 50 >= 250:
        return 250, 36
    if 1 > !((10 * ext_call.return_data[0]) - 50 / 7):
        revert with 0, 17
    return (10 * ext_call.return_data[0]) - 50, ((10 * ext_call.return_data[0]) - 50 / 7) + 1
}

function sub_cf396719(?) payable {
    require calldata.size - 4 >= 64
    if sub_de2c19c0 <= 0:
        revert with 0, 'Cobra: must creeat crafter'
    require ext_code.size(stor6)
    staticcall stor6.get_dc(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 5:
        revert with 0, 17
    if ext_call.return_data[0] - 5 > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    if (10 * ext_call.return_data[0]) - 50 >= 250:
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args sub_de2c19c0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0] >= 250
    if 1 > !((10 * ext_call.return_data[0]) - 50 / 7):
        revert with 0, 17
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args sub_de2c19c0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= (10 * ext_call.return_data[0]) - 50
}

function sub_110550c1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor6)
    staticcall stor6.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = idx
        require ext_code.size(stor6)
        staticcall stor6.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args this.address, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg1)
        mem[mem[64] + 68] = _16
        require ext_code.size(stor6)
        call stor6.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args this.address, address(arg1), _16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function attack(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    idx = 0
    while idx < arg1:
        require ext_code.size(stor1)
        staticcall stor1.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _20 = mem[_19]
        require ext_code.size(stor1)
        call stor1.summon(uint256 arg1) with:
             gas gas_remaining wei
            args 8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = mem[_19]
        mem[mem[64] + 100] = 14
        mem[mem[64] + 132] = 14
        mem[mem[64] + 164] = 10
        mem[mem[64] + 196] = 10
        require ext_code.size(stor2)
        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 16, 14, 14, 14, 10, 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor3)
        call stor3.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args _20
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = _20
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = 7
        require ext_code.size(stor3)
        call stor3.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args _20, arg2, 7
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == bool(mem[_31])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function summoner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[192] = 96
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[96] = 192
    mem[128] = 0
    mem[160] = 0
    require ext_code.size(stor1)
    staticcall stor1.0xc363b9eb with:
            gas gas_remaining wei
           args arg1
    mem[320 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    mem[ceil32(return_data.size) + 320] = 0x817dbe9f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 324] = ext_call.return_data[64]
    require ext_code.size(stor1)
    staticcall stor1.classes(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32
    require mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 320 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 351
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 320]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 320] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 320])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 320])) + 321 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 320])) + 321
    mem[(2 * ceil32(return_data.size)) + 320] = _13
    require _12 + _13 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 352 len ceil32(_13)] = mem[ceil32(return_data.size) + _12 + 352 len ceil32(_13)]
    if ceil32(_13) <= _13:
        mem[192] = (2 * ceil32(return_data.size)) + 320
        mem[224] = ext_call.return_data[96]
        mem[256] = ext_call.return_data[0]
        mem[288] = ext_call.return_data[32]
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor4)
        staticcall stor4.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[128] = mem[_87]
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _95 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[160] = mem[_95]
    else:
        mem[_13 + (2 * ceil32(return_data.size)) + 352] = 0
        mem[192] = (2 * ceil32(return_data.size)) + 320
        mem[224] = ext_call.return_data[96]
        mem[256] = ext_call.return_data[0]
        mem[288] = ext_call.return_data[32]
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor4)
        staticcall stor4.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _88 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[128] = mem[_88]
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[160] = mem[_96]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 96
    mem[mem[64] + 128] = 128
    mem[mem[64] + 256] = _13
    mem[mem[64] + 288 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 352 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[_13 + mem[64] + 288] = 0
    mem[mem[64] + 160] = ext_call.return_data[96]
    mem[mem[64] + 192] = ext_call.return_data[0]
    mem[mem[64] + 64] = mem[128]
    mem[mem[64] + 96] = mem[160]
    return 32, 96, 
           mem[128],
           mem[160],
           128,
           ext_call.return_data[96],
           ext_call.return_data[0],
           ext_call.return_data[32],
           _13,
           mem[mem[64] + 288 len ceil32(_13)]
}

function keeper() payable {
    mem[192] = 96
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[96] = 192
    mem[128] = 0
    mem[160] = 0
    mem[416] = 96
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[320] = 416
    mem[352] = 0
    mem[384] = 0
    require ext_code.size(stor1)
    staticcall stor1.0xc363b9eb with:
            gas gas_remaining wei
           args sub_ef5ec1da
    mem[544 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    mem[ceil32(return_data.size) + 544] = 0x817dbe9f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 548] = ext_call.return_data[64]
    require ext_code.size(stor1)
    staticcall stor1.classes(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 544
    require return_data.size >= 32
    _13 = mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32
    require mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 575
    _14 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 544]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 544] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 544])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 544])) + 545 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 544])) + 545
    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 544]
    require _13 + _14 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_14)] = mem[ceil32(return_data.size) + _13 + 576 len ceil32(_14)]
    if ceil32(_14) <= _14:
        mem[416] = (2 * ceil32(return_data.size)) + 544
        mem[448] = ext_call.return_data[96]
        mem[480] = ext_call.return_data[0]
        mem[512] = ext_call.return_data[32]
        mem[mem[64] + 4] = sub_ef5ec1da
        require ext_code.size(stor4)
        staticcall stor4.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args sub_ef5ec1da
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _88 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[352] = mem[_88]
        mem[mem[64] + 4] = sub_ef5ec1da
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args sub_ef5ec1da
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[384] = mem[_96]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        mem[mem[64] + 128] = 128
        _104 = mem[(2 * ceil32(return_data.size)) + 544]
        mem[mem[64] + 256] = mem[(2 * ceil32(return_data.size)) + 544]
        mem[mem[64] + 288 len ceil32(_104)] = mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_104)]
        if ceil32(_104) > _104:
            mem[_104 + mem[64] + 288] = 0
        mem[mem[64] + 160] = ext_call.return_data[96]
        mem[mem[64] + 192] = ext_call.return_data[0]
        mem[mem[64] + 224] = ext_call.return_data[32]
        mem[mem[64] + 64] = mem[352]
        mem[mem[64] + 96] = mem[384]
        return 32, 96, 
               mem[mem[64] + 64 len 64],
               128,
               ext_call.return_data[96],
               ext_call.return_data[0],
               ext_call.return_data[32],
               mem[mem[64] + 256 len ceil32(_104) + 32]
    mem[_14 + (2 * ceil32(return_data.size)) + 576] = 0
    mem[416] = (2 * ceil32(return_data.size)) + 544
    mem[448] = ext_call.return_data[96]
    mem[480] = ext_call.return_data[0]
    mem[512] = ext_call.return_data[32]
    mem[mem[64] + 4] = sub_ef5ec1da
    require ext_code.size(stor4)
    staticcall stor4.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args sub_ef5ec1da
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _89 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[352] = mem[_89]
    mem[mem[64] + 4] = sub_ef5ec1da
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args sub_ef5ec1da
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _97 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[384] = mem[_97]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 96
    mem[mem[64] + 128] = 128
    _107 = mem[(2 * ceil32(return_data.size)) + 544]
    mem[mem[64] + 256] = mem[(2 * ceil32(return_data.size)) + 544]
    mem[mem[64] + 288 len ceil32(_107)] = mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_107)]
    if ceil32(_107) > _107:
        mem[_107 + mem[64] + 288] = 0
    mem[mem[64] + 160] = ext_call.return_data[96]
    mem[mem[64] + 192] = ext_call.return_data[0]
    mem[mem[64] + 224] = ext_call.return_data[32]
    mem[mem[64] + 64] = mem[352]
    mem[mem[64] + 96] = mem[384]
    return 32, 96, 
           mem[mem[64] + 64 len 64],
           128,
           ext_call.return_data[96],
           ext_call.return_data[0],
           ext_call.return_data[32],
           mem[mem[64] + 256 len ceil32(_107) + 32]
}

function sub_2413a3fc(?) payable {
    mem[192] = 96
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[96] = 192
    mem[128] = 0
    mem[160] = 0
    if sub_de2c19c0 <= 0:
        revert with 0, 'Cobra: must creeat crafter'
    mem[416] = 96
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[320] = 416
    mem[352] = 0
    mem[384] = 0
    require ext_code.size(stor1)
    staticcall stor1.0xc363b9eb with:
            gas gas_remaining wei
           args sub_de2c19c0
    mem[544 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    mem[ceil32(return_data.size) + 544] = 0x817dbe9f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 548] = ext_call.return_data[64]
    require ext_code.size(stor1)
    staticcall stor1.classes(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 544
    require return_data.size >= 32
    _15 = mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32
    require mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 575
    _16 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 544]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 544] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 544])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 544])) + 545 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 544])) + 545
    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544 len 4], Mask(224, 32, ext_call.return_data[64]) >> 32 + 544]
    require _15 + _16 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_16)] = mem[ceil32(return_data.size) + _15 + 576 len ceil32(_16)]
    if ceil32(_16) <= _16:
        mem[416] = (2 * ceil32(return_data.size)) + 544
        mem[448] = ext_call.return_data[96]
        mem[480] = ext_call.return_data[0]
        mem[512] = ext_call.return_data[32]
        mem[mem[64] + 4] = sub_de2c19c0
        require ext_code.size(stor4)
        staticcall stor4.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args sub_de2c19c0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _90 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[352] = mem[_90]
        mem[mem[64] + 4] = sub_de2c19c0
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args sub_de2c19c0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _98 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[384] = mem[_98]
        _102 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        mem[mem[64] + 128] = 128
        _106 = mem[(2 * ceil32(return_data.size)) + 544]
        mem[mem[64] + 256] = mem[(2 * ceil32(return_data.size)) + 544]
        mem[mem[64] + 288 len ceil32(_106)] = mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_106)]
        if ceil32(_106) <= _106:
            mem[mem[64] + 160] = ext_call.return_data[96]
            mem[mem[64] + 192] = ext_call.return_data[0]
            mem[mem[64] + 224] = ext_call.return_data[32]
            mem[mem[64] + 64] = mem[352]
            mem[mem[64] + 96] = mem[384]
            return 32, 96, 
                   mem[mem[64] + 64 len 64],
                   128,
                   ext_call.return_data[96],
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   mem[mem[64] + 256 len ceil32(_106) + 32]
        mem[_106 + mem[64] + 288] = 0
        mem[mem[64] + 160] = ext_call.return_data[96]
        mem[mem[64] + 192] = ext_call.return_data[0]
        mem[mem[64] + 224] = ext_call.return_data[32]
        mem[mem[64] + 64] = mem[352]
        mem[_102 + 96] = mem[384]
        return memory
          from mem[64]
           len _102 + ceil32(_106) + -mem[64] + 288
    mem[_16 + (2 * ceil32(return_data.size)) + 576] = 0
    mem[416] = (2 * ceil32(return_data.size)) + 544
    mem[448] = ext_call.return_data[96]
    mem[480] = ext_call.return_data[0]
    mem[512] = ext_call.return_data[32]
    mem[mem[64] + 4] = sub_de2c19c0
    require ext_code.size(stor4)
    staticcall stor4.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args sub_de2c19c0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _91 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[352] = mem[_91]
    mem[mem[64] + 4] = sub_de2c19c0
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args sub_de2c19c0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _99 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[384] = mem[_99]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 96
    mem[mem[64] + 128] = 128
    _109 = mem[(2 * ceil32(return_data.size)) + 544]
    mem[mem[64] + 256] = mem[(2 * ceil32(return_data.size)) + 544]
    mem[mem[64] + 288 len ceil32(_109)] = mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_109)]
    if ceil32(_109) > _109:
        mem[_109 + mem[64] + 288] = 0
    mem[mem[64] + 160] = ext_call.return_data[96]
    mem[mem[64] + 192] = ext_call.return_data[0]
    mem[mem[64] + 224] = ext_call.return_data[32]
    mem[mem[64] + 64] = mem[352]
    mem[mem[64] + 96] = mem[384]
    return 32, 96, 
           mem[mem[64] + 64 len 64],
           128,
           ext_call.return_data[96],
           ext_call.return_data[0],
           ext_call.return_data[32],
           mem[mem[64] + 256 len ceil32(_109) + 32]
}

function execute(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[132] = arg2
    require ext_code.size(stor6)
    staticcall stor6.get_item_cost(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = sub_ef5ec1da
    require ext_code.size(stor4)
    staticcall stor4.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args sub_ef5ec1da
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Cobra: not enough gold'
    if sub_de2c19c0 <= 0:
        revert with 0, 'Cobra: must creeat crafter'
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    mem[(2 * ceil32(return_data.size)) + 132] = arg2
    require ext_code.size(stor6)
    staticcall stor6.get_dc(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, arg2
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 5:
        revert with 0, 17
    if ext_call.return_data[0] - 5 > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    if (10 * ext_call.return_data[0]) - 50 >= 250:
        mem[(4 * ceil32(return_data.size)) + 100] = sub_de2c19c0
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args sub_de2c19c0
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 250:
            revert with 0, 'Cobra: not enough material'
    else:
        if 1 > !((10 * ext_call.return_data[0]) - 50 / 7):
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 100] = sub_de2c19c0
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args sub_de2c19c0
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < (10 * ext_call.return_data[0]) - 50:
            revert with 0, 'Cobra: not enough material'
    mem[(6 * ceil32(return_data.size)) + 132] = arg2
    require ext_code.size(stor6)
    staticcall stor6.get_dc(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 5:
        revert with 0, 17
    if ext_call.return_data[0] - 5 > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    if (10 * ext_call.return_data[0]) - 50 >= 250:
        mem[(7 * ceil32(return_data.size)) + 100] = arg1
        mem[(7 * ceil32(return_data.size)) + 132] = arg2
        require ext_code.size(stor6)
        staticcall stor6.get_item_cost(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args arg1, arg2
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 100] = sub_ef5ec1da
        mem[(8 * ceil32(return_data.size)) + 132] = sub_de2c19c0
        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(stor4)
        call stor4.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_ef5ec1da, sub_de2c19c0, ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor1)
        call stor1.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_de2c19c0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
             gas gas_remaining wei
            args sub_de2c19c0, 16, 14, 14, 14, 10, 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 96 len 1152] = call.data[calldata.size len 1152]
        mem[(10 * ceil32(return_data.size)) + 256] = 3
        mem[(10 * ceil32(return_data.size)) + 1248] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 1252] = sub_de2c19c0
        idx = 0
        s = (10 * ceil32(return_data.size)) + 96
        t = (10 * ceil32(return_data.size)) + 1284
        while idx < 36:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor5)
        call stor5.0x54d3652a with:
             gas gas_remaining wei
            args sub_de2c19c0, mem[(10 * ceil32(return_data.size)) + 1284 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, sub_de2c19c0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor6)
        staticcall stor6.SUMMMONER_ID() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        call stor3.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_de2c19c0, ext_call.return_data[0], -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor6)
        staticcall stor6.SUMMMONER_ID() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        call stor4.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_de2c19c0, ext_call.return_data[0], -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor6)
        call stor6.craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args sub_de2c19c0, arg1 << 248, arg2 << 248, 250
    else:
        if 1 > !((10 * ext_call.return_data[0]) - 50 / 7):
            revert with 0, 17
        mem[(7 * ceil32(return_data.size)) + 100] = arg1
        mem[(7 * ceil32(return_data.size)) + 132] = arg2
        require ext_code.size(stor6)
        staticcall stor6.get_item_cost(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args arg1, arg2
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 100] = sub_ef5ec1da
        mem[(8 * ceil32(return_data.size)) + 132] = sub_de2c19c0
        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(stor4)
        call stor4.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_ef5ec1da, sub_de2c19c0, ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor1)
        call stor1.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_de2c19c0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
             gas gas_remaining wei
            args sub_de2c19c0, 16, 14, 14, 14, 10, 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 96 len 1152] = call.data[calldata.size len 1152]
        mem[(10 * ceil32(return_data.size)) + 256] = 3
        mem[(10 * ceil32(return_data.size)) + 1248] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 1252] = sub_de2c19c0
        idx = 0
        s = (10 * ceil32(return_data.size)) + 96
        t = (10 * ceil32(return_data.size)) + 1284
        while idx < 36:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor5)
        call stor5.0x54d3652a with:
             gas gas_remaining wei
            args sub_de2c19c0, mem[(10 * ceil32(return_data.size)) + 1284 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, sub_de2c19c0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor6)
        staticcall stor6.SUMMMONER_ID() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        call stor3.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_de2c19c0, ext_call.return_data[0], -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor6)
        staticcall stor6.SUMMMONER_ID() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        call stor4.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_de2c19c0, ext_call.return_data[0], -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor6)
        call stor6.craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args sub_de2c19c0, arg1 << 248, arg2 << 248, (10 * ext_call.return_data[0]) - 50
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
