contract main {




// =====================  Runtime code  =====================


address owner;
address refAddress;
array of struct positions;
address WFTMAddress;

function ref() payable {
    return refAddress
}

function WFTM() payable {
    return WFTMAddress
}

function owner() payable {
    return owner
}

function positions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < positions.length
    return positions[arg1].field_0, 
           positions[arg1].field_256,
           positions[arg1].field_512,
           positions[arg1].field_768,
           positions[arg1].field_1024,
           positions[arg1].field_1280,
           positions[arg1].field_1536,
           positions[arg1].field_1792
}

function _fallback() payable {
    revert
}

function sub_c8d9b7bb(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setOracleContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    refAddress = arg1
    emit 0x7bb61e4f: arg1
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

function getTokenName(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + ceil32(return_data.size) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + mem[64] + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function getTokenSymbol(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + ceil32(return_data.size) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + mem[64] + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function getAmountsOut(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    mem[96] = 3
    mem[128] = arg1
    mem[160] = WFTMAddress
    mem[192] = arg2
    if arg1 != arg1:
        revert with 0, 'ERR_PATH_TOKENS'
    if uint64(arg2) << 96 != arg2:
        revert with 0, 'ERR_PATH_TOKENS'
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = arg3
    mem[260] = 64
    mem[292] = 3
    idx = 0
    s = 128
    t = 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg4)
    staticcall arg4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _30 = mem[224 len 4], Mask(224, 32, arg3) >> 32
    require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255 < return_data.size + 224
    _31 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    if mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    require return_data.size >= _30 + (32 * _31) + 32
    mem[ceil32(return_data.size) + 256 len 32 * _31] = mem[_30 + 256 len 32 * _31]
    if 2 >= _31:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 320]
    return memory
      from mem[64]
       len 32
}

function sub_409cec27(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    mem[96] = 3
    mem[128] = address(arg1)
    mem[160] = WFTMAddress
    mem[192] = address(arg2)
    if address(arg1) != address(arg1):
        revert with 0, 'ERR_PATH_TOKENS'
    if uint64(arg2) << 96 != address(arg2):
        revert with 0, 'ERR_PATH_TOKENS'
    mem[224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[228] = arg3
    mem[260] = 64
    mem[292] = 3
    idx = 0
    s = 128
    t = 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg4))
    staticcall address(arg4).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _30 = mem[224 len 4], Mask(224, 32, arg3) >> 32
    require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255 < return_data.size + 224
    _31 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    if mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    require return_data.size >= _30 + (32 * _31) + 32
    mem[ceil32(return_data.size) + 256 len 32 * _31] = mem[_30 + 256 len 32 * _31]
    if 0 >= _31:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_e3f2804f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 0, 65
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 260 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 260] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = ceil32(arg1.length) + 96
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 260] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292] = 0
    require ext_code.size(refAddress)
    staticcall refAddress with:
            gas gas_remaining wei
           args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 256 <= test266151307()):
        revert with 0, 65
    return 0, ext_call.return_data[4 len 28]
}

function sub_d6c604ff(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    mem[100] = address(arg5)
    mem[132] = arg3
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 128] = address(arg1)
    mem[ceil32(return_data.size) + 160] = WFTMAddress
    mem[ceil32(return_data.size) + 192] = address(arg2)
    if address(arg1) != address(arg1):
        revert with 0, 'ERR_PATH_TOKENS'
    if uint64(arg2) << 96 != address(arg2):
        revert with 0, 'ERR_PATH_TOKENS'
    mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = arg3
    mem[ceil32(return_data.size) + 260] = arg4
    mem[ceil32(return_data.size) + 292] = 160
    mem[ceil32(return_data.size) + 388] = 3
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 420
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 324] = this.address
    mem[ceil32(return_data.size) + 356] = block.timestamp
    require ext_code.size(address(arg5))
    call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, arg4, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _37 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
    _38 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 < 0 or (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 > test266151307():
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    require return_data.size >= _37 + (32 * _38) + 32
    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _38] = mem[ceil32(return_data.size) + _37 + 256 len 32 * _38]
    if _38 < 1:
        revert with 0, 17
    if _38 - 1 >= _38:
        revert with 0, 50
    emit SwappedTokens(arg3, mem[(32 * _38 - 1) + (2 * ceil32(return_data.size)) + 256], address(arg1), address(arg2));
    return memory
      from (32 * _38 - 1) + (2 * ceil32(return_data.size)) + 256
       len 32
}

function sub_6e075d64(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 3
        mem[_97 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _5
        mem[mem[64] + 100 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[ceil32(_5) + mem[64] + 100] = 3
            mem[ceil32(_5) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_5) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_5) + 96, _5, mem[mem[64] + 100 len ceil32(_5) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _280 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _288 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_288] = mem[_280]
            mem[_288 + 32] = mem[_280 + 32]
            mem[_288 + 64] = mem[_280 + 64]
            if arg2 and mem[_288] > -1 / arg2:
                revert with 0, 17
            mem[mem[64]] = arg2 * mem[_288] / 10^18
        else:
            mem[_5 + mem[64] + 100] = 0
            mem[ceil32(_5) + mem[64] + 100] = 3
            mem[ceil32(_5) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_5) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_5) + 96, _5, mem[mem[64] + 100 len ceil32(_5) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _282 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _290 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_290] = mem[_282]
            mem[_290 + 32] = mem[_282 + 32]
            mem[_290 + 64] = mem[_282 + 64]
            if arg2 and mem[_290] > -1 / arg2:
                revert with 0, 17
            mem[mem[64]] = arg2 * mem[_290] / 10^18
    else:
        mem[_5 + ceil32(return_data.size) + 128] = 0
        _98 = mem[64]
        mem[64] = mem[64] + 64
        mem[_98] = 3
        mem[_98 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _5
        mem[mem[64] + 100 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[ceil32(_5) + mem[64] + 100] = 3
            mem[ceil32(_5) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_5) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_5) + 96, _5, mem[mem[64] + 100 len ceil32(_5) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _284 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _292 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_292] = mem[_284]
            mem[_292 + 32] = mem[_284 + 32]
            mem[_292 + 64] = mem[_284 + 64]
            if arg2 and mem[_292] > -1 / arg2:
                revert with 0, 17
            mem[mem[64]] = arg2 * mem[_292] / 10^18
        else:
            mem[_5 + mem[64] + 100] = 0
            mem[ceil32(_5) + mem[64] + 100] = 3
            mem[ceil32(_5) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_5) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_5) + 96, _5, mem[mem[64] + 100 len ceil32(_5) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _286 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _294 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_294] = mem[_286]
            mem[_294 + 32] = mem[_286 + 32]
            mem[_294 + 64] = mem[_286 + 64]
            if arg2 and mem[_294] > -1 / arg2:
                revert with 0, 17
            mem[mem[64]] = arg2 * mem[_294] / 10^18
    return memory
      from mem[64]
       len 32
}

function getPosition(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= positions.length:
        revert with 0, 50
    mem[0] = 2
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(positions[arg1].field_1280)
    staticcall positions[arg1].field_1280.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _6 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _6
    require _5 + _6 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_6)] = mem[_5 + 128 len ceil32(_6)]
    if ceil32(_6) <= _6:
        _98 = mem[64]
        mem[64] = mem[64] + 64
        mem[_98] = 3
        mem[_98 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _6
        mem[mem[64] + 100 len ceil32(_6)] = mem[ceil32(return_data.size) + 128 len ceil32(_6)]
        if ceil32(_6) <= _6:
            mem[ceil32(_6) + mem[64] + 100] = 3
            mem[ceil32(_6) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_6) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_6) + 96, _6, mem[mem[64] + 100 len ceil32(_6) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _281 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _289 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_289] = mem[_281]
            if positions[arg1].field_1536 and mem[_289] > -1 / positions[arg1].field_1536:
                revert with 0, 17
            return positions[arg1].field_0, 
                   positions[arg1].field_256,
                   positions[arg1].field_512,
                   positions[arg1].field_768,
                   positions[arg1].field_1024,
                   positions[arg1].field_1280,
                   positions[arg1].field_1536,
                   positions[arg1].field_1792,
                   positions[arg1].field_1536 * mem[_289] / 10^18
        mem[_6 + mem[64] + 100] = 0
        mem[ceil32(_6) + mem[64] + 100] = 3
        mem[ceil32(_6) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_6) + mem[64] + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, ceil32(_6) + 96, _6, mem[mem[64] + 100 len ceil32(_6) + 32], 0, 0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _283 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _291 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_291] = mem[_283]
        if positions[arg1].field_1536 and mem[_291] > -1 / positions[arg1].field_1536:
            revert with 0, 17
        return positions[arg1].field_0, 
               positions[arg1].field_256,
               positions[arg1].field_512,
               positions[arg1].field_768,
               positions[arg1].field_1024,
               positions[arg1].field_1280,
               positions[arg1].field_1536,
               positions[arg1].field_1792,
               positions[arg1].field_1536 * mem[_291] / 10^18
    mem[_6 + ceil32(return_data.size) + 128] = 0
    _99 = mem[64]
    mem[64] = mem[64] + 64
    mem[_99] = 3
    mem[_99 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = _6
    mem[mem[64] + 100 len ceil32(_6)] = mem[ceil32(return_data.size) + 128 len ceil32(_6)]
    if ceil32(_6) <= _6:
        mem[ceil32(_6) + mem[64] + 100] = 3
        mem[ceil32(_6) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_6) + mem[64] + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, ceil32(_6) + 96, _6, mem[mem[64] + 100 len ceil32(_6) + 32], 0, 0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _285 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _293 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_293] = mem[_285]
        if positions[arg1].field_1536 and mem[_293] > -1 / positions[arg1].field_1536:
            revert with 0, 17
        return positions[arg1].field_0, 
               positions[arg1].field_256,
               positions[arg1].field_512,
               positions[arg1].field_768,
               positions[arg1].field_1024,
               positions[arg1].field_1280,
               positions[arg1].field_1536,
               positions[arg1].field_1792,
               positions[arg1].field_1536 * mem[_293] / 10^18
    mem[_6 + mem[64] + 100] = 0
    mem[ceil32(_6) + mem[64] + 100] = 3
    mem[ceil32(_6) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[ceil32(_6) + mem[64] + 135] = 0
    require ext_code.size(refAddress)
    staticcall refAddress.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, ceil32(_6) + 96, _6, mem[mem[64] + 100 len ceil32(_6) + 32], 0, 0
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _287 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _295 = mem[64]
    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
        revert with 0, 65
    mem[64] = mem[64] + 96
    mem[_295] = mem[_287]
    if positions[arg1].field_1536 and mem[_295] > -1 / positions[arg1].field_1536:
        revert with 0, 17
    return positions[arg1].field_0, 
           positions[arg1].field_256,
           positions[arg1].field_512,
           positions[arg1].field_768,
           positions[arg1].field_1024,
           positions[arg1].field_1280,
           positions[arg1].field_1536,
           positions[arg1].field_1792,
           positions[arg1].field_1536 * mem[_295] / 10^18
}

function sub_016e4b51(?) payable {
    require calldata.size - 4 >= 160
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if arg1 and arg2 > -1 / arg1:
        revert with 0, 17
    if arg1 * arg2 / 100 < arg1:
        revert with 0, 17
    if arg1 * arg2 / 100 < (arg1 * arg2 / 100) - arg1:
        revert with 0, 17
    if arg1 < arg1:
        revert with 0, 17
    mem[96] = 3
    mem[128] = address(arg3)
    mem[160] = WFTMAddress
    mem[192] = address(arg4)
    if address(arg3) != address(arg3):
        revert with 0, 'ERR_PATH_TOKENS'
    if uint64(arg4) << 96 != address(arg4):
        revert with 0, 'ERR_PATH_TOKENS'
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = arg1 * arg2 / 100
    mem[260] = 64
    mem[292] = 3
    idx = 0
    s = 128
    t = 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg5))
    staticcall address(arg5).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1 * arg2 / 100, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _219 = mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32
    require mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 <= test266151307()
    require mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 255 < return_data.size + 224
    _220 = mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]
    if mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 256 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 256
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]
    require return_data.size >= _219 + (32 * _220) + 32
    mem[ceil32(return_data.size) + 256 len 32 * _220] = mem[_219 + 256 len 32 * _220]
    if 2 >= _220:
        revert with 0, 50
    _418 = mem[ceil32(return_data.size) + 320]
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg4))
    staticcall address(arg4).symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _421 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _422 = mem[_421]
    require mem[_421] <= test266151307()
    require _421 + return_data.size > _421 + mem[_421] + 31
    _423 = mem[_421 + mem[_421]]
    if mem[_421 + mem[_421]] > test266151307():
        revert with 0, 65
    if ceil32(mem[_421 + mem[_421]]) + 32 < 0 or _421 + ceil32(return_data.size) + ceil32(mem[_421 + mem[_421]]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = _421 + ceil32(return_data.size) + ceil32(mem[_421 + mem[_421]]) + 32
    mem[_421 + ceil32(return_data.size)] = _423
    require _422 + _423 + 32 <= return_data.size
    mem[_421 + ceil32(return_data.size) + 32 len ceil32(_423)] = mem[_421 + _422 + 32 len ceil32(_423)]
    if ceil32(_423) <= _423:
        _611 = mem[64]
        mem[64] = mem[64] + 64
        mem[_611] = 3
        mem[_611 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _423
        mem[mem[64] + 100 len ceil32(_423)] = mem[_421 + ceil32(return_data.size) + 32 len ceil32(_423)]
        if ceil32(_423) <= _423:
            mem[ceil32(_423) + mem[64] + 100] = 3
            mem[ceil32(_423) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_423) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_423) + 96, _423, mem[mem[64] + 100 len ceil32(_423) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _986 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _994 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_994] = mem[_986]
            if _418 and mem[_994] > -1 / _418:
                revert with 0, 17
            positions.length++
            positions[positions.length].field_0 = block.timestamp
            positions[positions.length].field_256 = msg.sender
            positions[positions.length].field_512 = arg1
            positions[positions.length].field_768 = arg2
            positions[positions.length].field_1024 = address(arg3)
            positions[positions.length].field_1280 = address(arg4)
            positions[positions.length].field_1536 = _418
            positions[positions.length].field_1792 = _418 * mem[_994] / 10^18
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_418 * mem[_994] / 10^18)
        mem[_423 + mem[64] + 100] = 0
        mem[ceil32(_423) + mem[64] + 100] = 3
        mem[ceil32(_423) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_423) + mem[64] + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, ceil32(_423) + 96, _423, mem[mem[64] + 100 len ceil32(_423) + 32], 0, 0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _988 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _996 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_996] = mem[_988]
        if _418 and mem[_996] > -1 / _418:
            revert with 0, 17
        positions.length++
        positions[positions.length].field_0 = block.timestamp
        positions[positions.length].field_256 = msg.sender
        positions[positions.length].field_512 = arg1
        positions[positions.length].field_768 = arg2
        positions[positions.length].field_1024 = address(arg3)
        positions[positions.length].field_1280 = address(arg4)
        positions[positions.length].field_1536 = _418
        positions[positions.length].field_1792 = _418 * mem[_996] / 10^18
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_418 * mem[_996] / 10^18)
    mem[_423 + _421 + ceil32(return_data.size) + 32] = 0
    _612 = mem[64]
    mem[64] = mem[64] + 64
    mem[_612] = 3
    mem[_612 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = _423
    mem[mem[64] + 100 len ceil32(_423)] = mem[_421 + ceil32(return_data.size) + 32 len ceil32(_423)]
    if ceil32(_423) <= _423:
        mem[ceil32(_423) + mem[64] + 100] = 3
        mem[ceil32(_423) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_423) + mem[64] + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, ceil32(_423) + 96, _423, mem[mem[64] + 100 len ceil32(_423) + 32], 0, 0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _990 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _998 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_998] = mem[_990]
        if _418 and mem[_998] > -1 / _418:
            revert with 0, 17
        positions.length++
        positions[positions.length].field_0 = block.timestamp
        positions[positions.length].field_256 = msg.sender
        positions[positions.length].field_512 = arg1
        positions[positions.length].field_768 = arg2
        positions[positions.length].field_1024 = address(arg3)
        positions[positions.length].field_1280 = address(arg4)
        positions[positions.length].field_1536 = _418
        positions[positions.length].field_1792 = _418 * mem[_998] / 10^18
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_418 * mem[_998] / 10^18)
    mem[_423 + mem[64] + 100] = 0
    mem[ceil32(_423) + mem[64] + 100] = 3
    mem[ceil32(_423) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[ceil32(_423) + mem[64] + 135] = 0
    require ext_code.size(refAddress)
    staticcall refAddress.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, ceil32(_423) + 96, _423, mem[mem[64] + 100 len ceil32(_423) + 32], 0, 0
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _992 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _1000 = mem[64]
    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
        revert with 0, 65
    mem[64] = mem[64] + 96
    mem[_1000] = mem[_992]
    if _418 and mem[_1000] > -1 / _418:
        revert with 0, 17
    positions.length++
    positions[positions.length].field_0 = block.timestamp
    positions[positions.length].field_256 = msg.sender
    positions[positions.length].field_512 = arg1
    positions[positions.length].field_768 = arg2
    positions[positions.length].field_1024 = address(arg3)
    positions[positions.length].field_1280 = address(arg4)
    positions[positions.length].field_1536 = _418
    positions[positions.length].field_1792 = _418 * mem[_1000] / 10^18
    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
    return (_418 * mem[_1000] / 10^18)
}



}
